Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1971B4156
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750499394; cv=none; b=XjMV/GiE8W1K6EZH8hjJFHJSxe/j3joO+IsrA68axqGmKe/6mAWAw3EkhDAwhMaHEUMudFtiIIGhr0EnHoDrhCEz2n+lxKBJuuyGHlkucO4NNvDoyDWzGgHYe1+N+Q0NwcCscAqxnQ4omoek4/aDxDhNl65en1RD/SIXR0PZkzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750499394; c=relaxed/simple;
	bh=ps3dl/az+1fRRUniMdBgJq5ZTdyGCKVzmkMqEhXBqhI=;
	h=To:Subject:From:Message-Id:Date; b=rop/0r2sLRtAuVcYkCUaCxZqAjYNBkV/G5M0PetDKWDwGICASmCTSvOsyCMWYksD7JrPy/2bvFTXN8I4Te170MgBX9WDFxu2kgz+5VpVQkEdP1M5/imWzSlpnJy45a2TB0XiXLLfUEGF11k6gm+N2lMHpsMYH34TX1MSOETriag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NId6wl6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NId6wl6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750499393;
	bh=ps3dl/az+1fRRUniMdBgJq5ZTdyGCKVzmkMqEhXBqhI=;
	h=To:Subject:From:Date:From;
	b=NId6wl6BnhHaBN3dHzbM0zjbUzBoSuHgk+X8cfUvPPEo9krbGb2k40U7ggCfEYf9h
	 QmzhhpgxnakwwbmY2wb2HPikEbPvggelASmUYor8ow/Peqxa8pzBn4JL4PibhM9VO/
	 nb2dEW3ZEOF1/zJGEpBhaZgemtK9+MGsr2hGoDZK0QfX++zlWRr8Jrv7mjNZl32Ov/
	 Msb/soJhQOy7cTnIF9UMG6bC5Vsb74F00RB40OY2vLmCcHnmnfAmURvGSJ+XiU51pa
	 U6tXe9Kqgq7sDUleAv6bvQf4hfynzoX8JPKW8isYbJv5uUN6Zum9q7DNyOTGbk91QX
	 +lVOxQ6e5CdAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA49C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049939357.22603.13003865321626139030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb89419453e60657b46841ef1ade600ab94086dd52291a23baec3806489dac5
Date: Sat, 21 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750499393
