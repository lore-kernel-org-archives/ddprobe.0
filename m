Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F61CD15
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733071554; cv=none; b=BQZ5gyokQioHSkfPW88AF25KqbKdyl+kW6CCCXA9g4yxT2ZMHl8HJF+zuxbxEQ/OIFz8woAztCuFzF8uiC/7PQucU8e+AUYxXCUr9hwX/aXcUm+xpJ9PohLTkkT2KqDZvvFdfxnqCNSQoxdSa9JfkX+YrnYTlk9W1NXUhluLT/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733071554; c=relaxed/simple;
	bh=3R15nkm0lDAZsMkbsuFZt71vPj6UsvOfHALOJWAD1ks=;
	h=To:Subject:From:Message-Id:Date; b=gPp9BCW/sJfO/q7lC4wQdpvg4vAiJYcF52wHJJcu1WTK0HFiTdG4xMeAABj37es+WxMlp3pjFYzzcNTNpEqRYa83JOIr16vW8BqIXWTFjgjeIr4vPtEaM4ldAq/VM00VzTDc9mXWu4vL39nKpHAiBMB1AFJXfvjXm2agw4ryV0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx6EdSEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx6EdSEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8234C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733071553;
	bh=3R15nkm0lDAZsMkbsuFZt71vPj6UsvOfHALOJWAD1ks=;
	h=To:Subject:From:Date:From;
	b=Vx6EdSENUR9u0OQGC2fQMUySmG5ZXSc9nAX5/b1ydwuAIXDTvfOPOYRbGe5DSmAZi
	 4cHEVJLiej2fMHyS1asbLznMT1RKEG/4UVeHlYQZN+2/0vyW/eS3hHpnxsopUTEp93
	 Eq984dyYdiMd34vV/+yagUxs+eYY5H/MGNzmyfLnUfbjEpDIl9Bty1s9VnG4HtP2AS
	 BK/VEX4qXpOS6WXWgs5xetoKyn8PhCTmHS2MisHysKknAMRkzrf7vas2hGPDSl03VC
	 YolvjXThXbjq1PcCWZoDvXeyi1nZSEj7RDtPesQukYSIqZXBj0irEarKkxhEBhzgeN
	 t/kdbgGkKn7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC1D4977B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307155358.20093.9447580690509487446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f3b2ad603996db46937a442c2ab16030216b92ee3950ba96245d3571f55d32
Date: Sun, 01 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733071553
