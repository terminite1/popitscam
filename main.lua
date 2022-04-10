warn("scam script not made by terminite!!!!")
wait(1)
warn("scam script not made by terminite!!!!")
wait(1)
warn("scam script not made by terminite!!!!")
wait(1)
warn("scam script not made by terminite!!!!")
wait(1)
warn("scam script not made by terminite!!!!")
wait(1)
warn("scam script not made by terminite!!!!")
wait(1)
warn("scam script not made by terminite!!!!")

game.Players.LocalPlayer.XRay.Value = true
----------------------------------------------------------------------
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		coroutine.wrap(function()
			if child:IsA('ForceField') then
				game:GetService('RunService').Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				game:GetService('RunService').Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				game:GetService('RunService').Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end)
-------------------------------------------
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local x = Instance.new("TextButton")
local AntiKick = Instance.new("TextButton")
local God = Instance.new("TextButton")
local AntiBlind = Instance.new("TextButton")
local AntiBear = Instance.new("TextButton")
local Items = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Frame.BorderColor3 = Color3.fromRGB(29, 29, 29)
Frame.Position = UDim2.new(0.0992167071, 0, 0.204365075, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Active = true
Frame.Draggable = true

AntiKick.Name = "Anti Kick"
AntiKick.Parent = Frame
AntiKick.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
AntiKick.BorderColor3 = Color3.fromRGB(36, 36, 36)
AntiKick.Position = UDim2.new(0.0480427295, 200, 0.299663305, 0)
AntiKick.Size = UDim2.new(0, 115, 0, 50)
AntiKick.Font = Enum.Font.Oswald
AntiKick.Text = "Toggle"
AntiKick.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiKick.TextScaled = true
AntiKick.TextSize = 14.000
AntiKick.TextWrapped = true
AntiKick.Draggable = true
AntiKick.MouseButton1Down:connect(function()
local buttonpush = game.Players.LocalPlayer.PlayerScripts.ButtonPush

toggle = not toggle

if toggle == true then
buttonpush.Disabled = true
AntiKick.TextColor3 = Color3.fromRGB(0, 255, 31)
getgenv().tptoggle = true

local pad = game.Workspace.Boards
local lplr = game.Players.LocalPlayer
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
local drop = game.Workspace.Dropped

while tptoggle == true do
for i,v in pairs(pad:GetChildren()) do
if v:FindFirstChild("Player1") and v:FindFirstChild("Player2") then
if v.Player1.Value == lplr or v.Player2.Value == lplr then
if v.Player1.Value ~= lplr and v.Player1Action.Value == "Done" or v.Player2.Value ~= lplr and v.Player2Action.Value == "Done" then
for i,v5 in pairs(drop:GetChildren()) do
if v5.Owner.Value == lplr then
plr.CFrame = v.Controls.Close.Part.CFrame
wait(0.2)
game:GetService("ReplicatedStorage").RemoteEvents.Jumped:FireServer()
wait(0.14)
buttonpush.Disabled = false
plr.CFrame = v.Controls.Done.Part.CFrame
wait(0.2)
game:GetService("ReplicatedStorage").RemoteEvents.Jumped:FireServer()
toggle = false
AntiKick.TextColor3 = Color3.fromRGB(255, 0, 0)
getgenv().tptoggle = false
end
end
end
end
end
end
wait()
end
elseif toggle == false then
buttonpush.Disabled = false
AntiKick.TextColor3 = Color3.fromRGB(255, 0, 0)
getgenv().tptoggle = false
end
end)

God.Parent = Frame
God.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
God.BorderColor3 = Color3.fromRGB(36, 36, 36)
God.Position = UDim2.new(0.39679721, 1000, 0.299663305, 0)
God.Size = UDim2.new(0, 115, 0, 50)
God.Font = Enum.Font.Oswald
God.Text = "Hop"
God.TextColor3 = Color3.fromRGB(255, 255, 255)
God.TextScaled = true
God.TextSize = 14.000
God.TextWrapped = true
God.MouseButton1Down:connect(function()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		return notify("Serverhop","Couldn't find a server.")
	end
end)

x.Name = "x"
x.Parent = Frame
x.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
x.BorderColor3 = Color3.fromRGB(36, 36, 36)
x.Position = UDim2.new(0.864768684, 0, 0, 0)
x.Size = UDim2.new(0, 76, 0, 50)
x.Font = Enum.Font.Oswald
x.Text = "X"
x.TextColor3 = Color3.fromRGB(255, 255, 255)
x.TextScaled = true
x.TextSize = 14.000
x.TextWrapped = true
x.Draggable = true
x.MouseButton1Down:connect(function()
	game.CoreGui.ScreenGui:Destroy()
end)
