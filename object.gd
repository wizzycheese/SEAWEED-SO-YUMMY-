extends CharacterBody2D

var X = 584
var Y = 734
var rows = 25
var multiply = 1

func _ready() -> void:
	global_position = Vector2(X,Y)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('collectible'):
		rows += 10
		X = (rows*32) * 0.73 + 96
		Y = (rows*32) * 0.9175 - 96
		global_position = Vector2(X,Y)
