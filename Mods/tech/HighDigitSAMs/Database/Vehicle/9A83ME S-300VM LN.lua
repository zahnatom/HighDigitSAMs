-- S-300vm 9a83me ln

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
GT.chassis.life = 2;

GT.visual.shape = "9a83me";
GT.visual.shape_dstr = "9a83me_d";

--chassis

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 8.225;

--Burning after hit
GT.visual.fire_size = 1.1; --relative burning size
GT.visual.fire_pos[1] = 2; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 250000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.Antey2500_9M83M);
GT.WS[ws].pos = {-4.915, 2.036,0};
GT.WS[ws].LN[1].ECM_K = -1
GT.WS[ws].LN[1].beamWidth = 0.0;
GT.WS[ws].LN[1].barrels_reload_type = 3
GT.WS[ws].LN[1].depends_on_unit = {{{"S-300VM 9S32ME tr"},},};
GT.WS[ws].LN[1].reactionTime = 0.1;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 4;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.1;
GT.WS[ws].LN[1].PL[1].reload_time = 7200;
GT.WS[ws].LN[1].BR[1] = {pos = {3, 0.75,-1.825}, drawArgument = 10 };
GT.WS[ws].LN[1].BR[2] = {pos = {3, 0.75,-0.65}, drawArgument = 11 };
GT.WS[ws].LN[1].BR[3] = {pos = {3, 0.75, 0.65}, drawArgument = 12 };
GT.WS[ws].LN[1].BR[4] = {pos = {3, 0.75, 1.825}, drawArgument = 13 };

GT.Name = "S-300VM 9A83ME ln";
GT.DisplayName = _('SAM SA-23 S-300VM "Gladiator" TEL A');
GT.DisplayNameShort = _('SA-23A');
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000079";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,PU_5P85D,
				"AA_missile",
				"SAM LL",
				};
GT.category = "Air Defence";
GT.tags  =
{
    "Air Defence",
	"Launcher",
};
GT.Countries = {"Egypt", "India", "Russia", "Venezuela"}
