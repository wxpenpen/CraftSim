AddonName, CraftSim = ...

CraftSim.NEWS = {}

function CraftSim.NEWS:GET_NEWS()
    -- minimize names to make manual formatting easier :p
    local b = CraftSim.CONST.COLORS.DARK_BLUE
    local bb = CraftSim.CONST.COLORS.BRIGHT_BLUE
    local g = CraftSim.CONST.COLORS.GREEN
    local r = CraftSim.CONST.COLORS.RED
    local l = CraftSim.CONST.COLORS.LEGENDARY
    local c = function(text, color) 
        return CraftSim.UTIL:ColorizeText(text, color)
    end
    local p = "\n" .. CraftSim.UTIL:GetQualityIconAsText(1, 15, 15) .. " "
    local s = "\n" .. CraftSim.UTIL:GetQualityIconAsText(2, 15, 15) .. " "
    local P = "\n" .. CraftSim.UTIL:GetQualityIconAsText(3, 15, 15) .. " "
    local a = "\n     "
    local function newP(v) return c("\n\n                                   --- Version " .. v .. " ---\n", l) end

    return 
        c("                   Hello and thank you for using CraftSim!\n", bb) .. 
        c("                                 ( You are awesome! )", bb) ..
        newP("5.5.3") ..
        p .. "Fixed an error occuring for non experimental data recipes" .. 
        a .. "when parsing spec data" ..
        p .. "Fixed an error occuring when enchanting gear or" ..
        a .. "applying runes or other consumeables" ..
        p .. "itIT Localization Updates by " .. c("Elitesparkle", bb) ..
        p .. c("Known Issue:", r) .. " the craft log in the Craft Results" .. 
        a .. "Module might stop listing crafts after around 100 crafts" .. 
        a .. "However, the results are still correctly updated." .. 
        a .. "This seems to be an issue with the max length of texts" .. 
        a .. "and will be fixed in a future update" ..
        newP("5.5.2") ..
        p .. "Hotfix for RecipeScan" ..
        newP("5.5.1") ..
        p .. "Added an " .. c("Export Recipe Results", g) .. " Button to Crafting Results" ..
        newP("5.5") ..
        s .. "Added a small workaround to make" .. 
        a .. "the CraftSim Modules appear after a" ..
        a .. "fresh login and first time clicking on a profession" ..
        s .. "New " .. c("Statistics Panel", g) .. " in the " .. c("Average Profit Module", g) .. 
        a .. "showing the probability table of the craft and the" .. 
        a .. "confidence to have a positive profit after a certain" .. 
        a .. "number of crafts" ..
        s .. "Switched to a statistics based expected profit calculation" ..
        p .. "Fixed Resourcefulness proc being counted multiple times" .. 
        a .. "for prospecting due to a bug on blizzard's side" ..
        p .. "The Crafted Items List in the " .. 
        a .. c("Craft Results Module", bb) .. " is now sorted by quality" ..
        p .. c("Jewelcrafting Experimental Data:", bb) .. 
        a .. "Primalist Gems are now affected by Faceting and " .. 
        a .. "their respective elemental node" ..
        p .. c("Recipe Scan: ", bb) .. " list is now sorted by profit" ..
        newP("5.4") ..
        p .. c("TSM Price Expressions", bb) .. " can now be reset to the" .. 
        a .. "default 'first(DBRecent, DBMinbuyout)'" ..
        p .. "Bonus Inspiration from Incense is now considered" .. 
        a .. "when switching to Simulation Mode" ..
        p .. "Added Option to not be reminded to use a price source" ..
        newP("5.3") ..
        P .. "Added an option to automatically simulate Top Gear" ..
        s .. "The " .. c("Craft Results Module", g) .. " now buffers" .. 
        a .. "multiple craft results and assigns them to one craft" ..
        newP("5.2") ..
        p .. "Resourcefulness now uses a simpler calculation method" ..
        newP("5.1") ..
        P .. c("Craft Results Module", g) .. " redesigned" ..
        a .. "Now with more statistics!" ..
        p .. "The " .. c("Price Override Module", g) .. " now supports decimals" ..
        p .. "Fixed Jewelcrafting Experimental Data" .. 
        a .. "not showing the first spec" ..
        p .. "Fixed Alchemy Experimental Data not considering" .. 
        a .. "Chemical Synthesis for some Reagents" ..
        newP("5.0") ..
        P .. "New Module: " .. c("Craft Results", g) ..
        a .. "Logs your crafting outputs and shows you the total" .. 
        a .. "crafted profit for your open recipe or in total" ..
        a .. "for your current session!" 
end