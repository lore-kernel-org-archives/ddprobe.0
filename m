Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41D63A0E95
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773691494; cv=none; b=RCIGQrY76qzVPD1lGUdX2i6yDwLdUy60VRaJkffK1NF5j0XeMsz4xbZpYurD+o1Wit/XCmATfs+CK7jPjdYO0L4qDY8ssTc1MyS13Hnj6bgo48Oze4X3yUV3HFo0SxVRCfyDyE/ay+4PtdzU6jkUW9NWLwTmmVcAUtTDWkffJkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773691494; c=relaxed/simple;
	bh=Kuf8G3zJKkO7WjOhClpaGtm1TM35QwhXNnDOLF9G3zM=;
	h=To:Subject:From:Message-Id:Date; b=oBpg7LJhG8/zFOZH82LKapPHU0XOOsd0E0IgMSrKhnEKnZ/bKZgKaobtK1DRtqES5zTV5ROG/dK9bNBurGI+dza/4tmqFYmgtVpbUo1PEiUSYFJj39HEGpGCaFOvm276Wz+GhYNUB8yrAL83Bp4HEQqkUZ83HyuoqZfUUR3FEEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb8z4TcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb8z4TcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380BC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773691493;
	bh=Kuf8G3zJKkO7WjOhClpaGtm1TM35QwhXNnDOLF9G3zM=;
	h=To:Subject:From:Date:From;
	b=Vb8z4TcKhl455MJ5hjvudosEgnbPtdUg9wWrvljnGYzLwGZwIMp/jNflvQg8ZVWnl
	 6sT+uE1+VZ4pnoB84LfILM5pJ4MLC7lIuRiYTz+6tnxZCqnYggkKcDpXYeZfuxhUWY
	 Ckw0+y+GpGtorG9y5tSwwIy/P9rDx8TjkSdRICMtaNXs6EHbPdwi4rQgHieqUi9uPX
	 gNxx0CteeeAJIKNfwU90lx/cX+Yl7Vrdty/dQIsFRz0ZshfJGiflaKIAOnGrRrpJXa
	 nAGruEGQmpBBn6RcgPFs4xYtM5WB58QnfFVLu9P1i0trbu7jeN76exFYB0XKbfPbjr
	 gywsxXo8yMjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC24F53D92
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369149358.1690.8319548192547287294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9508fe8c3825033702b560b41f96bfa0e565e854b2f6da2f5feee15d6701d6d6
Date: Mon, 16 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773691493
