local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("money scripts combat", "BloodTheme")

local Tab = Window:NewTab("Main")
local Tab1 = Window:NewTab("Credits")

local Section = Tab:NewSection("Combat warriors")
local Section1 = Tab1:NewSection("credits")

Section:NewButton("Big hitbox", "ButtonInfo", function()
local HeadSize = 20
local Disabled = true

game:GetService('RunService').RenderStepped:Connect(function()
    if Disabled then
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player ~= game:GetService('Players').LocalPlayer then
                pcall(function()
                    local character = player.Character
                    if character and character:FindFirstChild("Head") then
                        local head = character.Head
                        head.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                        head.Transparency = 1
                        head.BrickColor = BrickColor.new("Really red")
                        head.Material = Enum.Material.Wood
                        head.CanCollide = false
                        head.Massless = true
                    end
                end)
            end
        end
    end
end)
end)

Section:NewButton("Speedbypass full flash", "ButtonInfo", function()
    function isNumber(str)

  if tonumber(str) ~= nil or str == 'inf' then

    return true

  end

end

local tspeed = 0.3

local hb = game:GetService("RunService").Heartbeat

local tpwalking = true

local player = game:GetService("Players")

local lplr = player.LocalPlayer

local chr = lplr.Character

local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

while tpwalking and hb:Wait() and chr and hum and hum.Parent do

  if hum.MoveDirection.Magnitude > 0 then

    if tspeed and isNumber(tspeed) then

      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))

    else

      chr:TranslateBy(hum.MoveDirection)

    end

  end

end
end)

Section1:NewLabel("Huge credits to diffalex for making the script")
Section1:NewLabel("credits to mezzo for the script being in the hub :D")
