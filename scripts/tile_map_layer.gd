extends TileMapLayer

@onready var tile_map_layer: TileMapLayer = $"."

var GridSize = 4
var Grid = {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for x in GridSize:
		for y in GridSize:
			Grid[str(Vector2i(x,y))] = {
				"Type": "Godot",
				"Coord": str(Vector2i(x,y))
			}
			set_cell(Vector2i(x,y), 0, Vector2i(0,0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	var tile_map_pos = tile_map_layer.local_to_map(mouse_pos)
	
	print(tile_map_pos)
