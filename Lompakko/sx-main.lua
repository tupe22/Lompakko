ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('lompakko', function(source)

local xPlayer = ESX.GetPlayerFromId(source)
local summa = math.random(0,2500)

xPlayer.removeInventoryItem('lompakko', 1)
xPlayer.addMoney(summa)
if summa > 0 then
ESX.ShowNotification('Tutkit lompakon ja löysit ~g~'..summa..' €')
elseif summa == 0 then
ESX.ShowNotification('Tutkit lompakon joka oli tyhjä Löysit ~g~0€')
end
end)