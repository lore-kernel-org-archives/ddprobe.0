Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AD322258C
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763180994; cv=none; b=OSso3UGYdWzWsWMI20mra1mwwIrfmbdHBIAGX85kw9mjMIw0PJtI3jJp9vGS8SSzibtCsAv6GRU2Jdp35MYqTDP/hTA2oDoNCduqNUI8gUHimo2x/bRvgv1KQHm5I+gAb6fUsuA/7ZwNX1ZhAO9lu8VJ9idPe4Acbepf7MZFs+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763180994; c=relaxed/simple;
	bh=trerZCgS3lxmDkABVlXroGjfRKjcwwt8/jhc3px99ns=;
	h=To:Subject:From:Message-Id:Date; b=UK8iqYlMEdFsJuI78x9s7xWLVIPzZzEctdfVzKerkhmH0VhO2lFQG+kuDMK8dIkS7ldCq3dRYcqeAv8vXp33uIEwRR76zVgZSicAoNTG7nSDBA4TxCQGkCnJ4hZTuHu5Zlf/5eeuZiVwNbZoof5AvRhAxX5zVdORgrjPnVHU4Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To/7xvuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To/7xvuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80CBC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763180993;
	bh=trerZCgS3lxmDkABVlXroGjfRKjcwwt8/jhc3px99ns=;
	h=To:Subject:From:Date:From;
	b=To/7xvuLLPVQUiCJWfiO+R0gMiFE/7thcbZCcSJOZRTQ49kw0YDhUIw5GSpca/LPM
	 /f6HEX/FXGpSrIiFX8Oh+ejFqyW9YEBBcAkI+jx79TGx34o1jg4PKvhW1LU0BRh+oI
	 q2wiRUZDeYMd57n5feMOJiZjfnwWubXPWgWok/hY1YZti45BDPvINMCTNsXYhRH62m
	 lwjEghFiZnLV4IR6kzFW0xQ78P8m8oAmj4J1rNnORjRLcGSc7r+NdjVV47/MX9jPno
	 BR+t37D0YtNWO8RniclG4+L+suGYyu98QRV0FRU/bWHo9oyGN0Cyvu80JORJcQsNf8
	 oWlsB6q2EF+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308FCDB47C
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318099358.15046.8328073802484977181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b1860263bf7554a2da53bead8c7f4fd73113a5286f760696e84eb1558c4825
Date: Sat, 15 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763180993
