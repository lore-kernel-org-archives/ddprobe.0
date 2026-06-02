Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FA31F9A3
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780371874; cv=none; b=TcRBzz8TP/j7VoEvTZMyMHbu/VOlOYT1dVZULBacFO5vs8DFBWmb55fs+NgxSLPTJr0hZ0aDmuzB11+B0ZKlBQkD0/TPlKJcDFYQYZAyF8pGEBGpSswEIzgdNg/+J7GgzkYa3wPVwauunvVEj51gYLcexrz0lfoSOxlKz1N2z00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780371874; c=relaxed/simple;
	bh=OgOW1GYK41MdTBFaSSej/ALXJAm7/Sy7ZVSWse2baU4=;
	h=To:Subject:From:Message-Id:Date; b=re/HKAFxtx572H5OBbHowNjQ4v41WIRyi3KLOK67HQlxY0Bl7rt5dAnZ5z1K1PSi7aSIrwOl6uXhkxVVHSiku1cFNVoaxCR5OXZL+8VmpOlbxgTIOK/WEOgqaGWLL473UC0RwWVpYHmkuGTdWmHFSKzSUeeBJ9t8ILwbopoaHaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDusmPeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDusmPeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7965C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780371873;
	bh=OgOW1GYK41MdTBFaSSej/ALXJAm7/Sy7ZVSWse2baU4=;
	h=To:Subject:From:Date:From;
	b=hDusmPebBM+swcuaSiDWCLrVtd/l09x/hg9eyYYV/nn1Zs4QLhl3+a+BIHPvMCljN
	 402QBH/KPBfCCwnSDS7IhdmbT5pNb4DXm9xgC1PR8q2kfHPjdKcD9Of0WlA1CZKOhr
	 IFOoU1ofEcOauwrbh3UhmkZm3mxOBzqhm3b+T5moe61tu9e0DIZe0BLwkQhCrUhtz1
	 PG5nzmD1VKI6lmI5VlOKDCTODOeJgK0EDLW0mBaKGTslwo74M+AjLWYxBjw1s7TS+r
	 Sb8/6yHtqu6CVDetSljD9dwS4qldC2H1lVF2ExUufj9sKbEbo2tsC5n9y15P6iBY58
	 UFenJd/45gYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF534C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037187368.11984.4256642617539009203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6aea274382e4b51b5a08f5ad9b89c1f29c340051871fcafd23344f7a11a2d0
Date: Tue, 02 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780371873
