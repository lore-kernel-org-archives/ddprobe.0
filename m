Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D632E11B1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749880794; cv=none; b=YRFDDpM9CsDhokO5lBqHyNug0HIzFgTs+/RD9sicXPOtzlN5nZ/OlIIwyrYDagQuog+R4OENtMylb+ZgwygZhdjrkoQ4M+A083HyAJk5G1t6pcuNsFU7jd4QxagX/wEzwvzs/hUEu4Irw2N6kpTCimdJDpPXdkgsS/O7cuQwk0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749880794; c=relaxed/simple;
	bh=QTFZicH04JO9NxbU6UcBuVH9vDSSxYSCDPldMOmfBO0=;
	h=To:Subject:From:Message-Id:Date; b=FbzfU+Ee7nl1Frdt0wF7oexWyddOqEeLesT2Fo18YFU+Gw23BFusmAghtRrZxc5nitBrSlX8sBGFxHPtRT66GrhyAtG0P9GdSzvc5TIQeOMBMA7NZCJYXh+o9Jp8mrxVq757IcDBVodKEXJlz8W+lp63+AZbzimVcQIvW30yTTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMLp/20z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMLp/20z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC6AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749880793;
	bh=QTFZicH04JO9NxbU6UcBuVH9vDSSxYSCDPldMOmfBO0=;
	h=To:Subject:From:Date:From;
	b=SMLp/20zwUpsGVIZIKQ5UcJtATTQMSwevyn6CuVEzM7c9lKOlepYeK2G4maCa9vis
	 g5j4eCIB1QRKBc85lVZT6AY9ReDKAaYzth9vc22eiQXY0EXp3YzcW30eu3bAP8lzzn
	 3o7yRmzNe94vw6Gs/xUpO7a1axBQVg/OQ55yNVbntxfZdqHZ3wB28kvSoZX8Qzqiz7
	 KOonrX1ldV5p4agRDmNwAbIoyOAwIbmV8waWsc1wf1E9uxVNhSOEi/uQ0WlVHeb44M
	 6tY2lzuunLHdSu8THD20yAzV75FEOPuTq+PvEwMVqKUZXVJEHfI47OsY2SzaOMBpgX
	 GRLJDn0QnP5Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFE5C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988079357.3282.15918724543768257294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ade14a153d894a778ea576bad22402c8866d3db2d86fac38424bd2400b56e2
Date: Sat, 14 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749880793
