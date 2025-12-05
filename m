Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424D8379B1A
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764960776; cv=none; b=LzogyJc5CNNQFqWdyviwvtnI4EUVfTAaui9vF/NDkgsvh2BdCoeZaDVFSP8kXNZ4sDKz/hNUkdXHgJEVffJ+lHr9qgaNxYBNGaNc0YknXUV1x0FJ0TdRfvhr/rPc55SUfmVny7WRin0vOPVUPf+4NkzK146RtqX86ZOBLheeMIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764960776; c=relaxed/simple;
	bh=8mUkz5EsGYySAZhDxWQFZxPpuf8dt2pS7durbm9LeTo=;
	h=To:Subject:From:Message-Id:Date; b=hL04XeNi09w6IbYUeDrq87wxNTaa+FtbvULOuhkNHlbXpqgJIqGP+xVikcodFUZf7TlYw2fLx/7tgN21Z5q1dxq1wFY6WYYPw6IwQPlVFn6vACnlGL4l4kX95XlVLROvpejNDeheEFxM+Lmb/lS0T8WNs3Ri/6PFC1+ajaA3UAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK6/GQcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK6/GQcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764960773;
	bh=8mUkz5EsGYySAZhDxWQFZxPpuf8dt2pS7durbm9LeTo=;
	h=To:Subject:From:Date:From;
	b=WK6/GQcxK0PTAv7S3q4E6U5d8eSuRXIy/zYh+qSCAUPMnB9MYBOh4Ku0/pgmEZoTd
	 QtV64dGCtYufacsOV8WSACsy/ErU/WsrKwauUv01VYRq5ilGy6A+pUWs5ZMf9aIJvm
	 HU5b1JRenEaGnOXi0PoXr0tqjVRk1L9RLgQ82ZCUeFiWEowaARxLZq3eiuD4MYuUlB
	 ylhPiCcsTMUzOM5pdlJkfRkAsvsjlurBTGJ0BCpTBq0xr3kEzLwwE821G299nZfBs/
	 0SWIhYW739+HaGV7uvn1Dr9I5IXOctojP5kjRHnz8y7PAqhUZXfut8QCOZX7KbPlq4
	 W0EEx9uQEmj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924DCD339AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496077358.10993.14644096877545530081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1625e730f35c8166e789b36112741126c44e5a7854f839ded7afb821675f1a19
Date: Fri, 05 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764960773
