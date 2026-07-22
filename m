Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B763033DE
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784749174; cv=none; b=I/WDoEUg383grJ2DA3Eiu3R82SWgQFrzXx43Ayp793XixiQcbW/l0kJjY/8/Aqrl41jzFGNC8tDHYb1oifQ9sm73iM++Gx3WyqzZQOKEb6aP7drkk8yOE2w7PuHtsU9VAEwwNER+VG527nF9ndeb9+uxD+8wZn6655a7RLNtC2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784749174; c=relaxed/simple;
	bh=VNm02+INhFq/Vhi5MexpkWI8PT8DNS5pAQI9+Bf+O+w=;
	h=To:Subject:From:Message-Id:Date; b=rI4beAqY/WQk+ybyZRvSkgYu0WFc73hICRkb1l/0xbpXj7hVHo1dpqB1DTbEqVeXeZ0pgIM6PzHsx4KKA38z/iAL9GND0gSy24X0wKZIdvEQYtLqbEoxeRm9eko/dFyCMcIWMw84P5mtRGz9GL+JLrW3HdhzuZCHlUvSsVy6Uno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX1TGv7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX1TGv7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C1AC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784749173;
	bh=VNm02+INhFq/Vhi5MexpkWI8PT8DNS5pAQI9+Bf+O+w=;
	h=To:Subject:From:Date:From;
	b=QX1TGv7vMB+DKX17gcT3Opx6/0S0RwDkpth8fEtTeGxrwXMGOolDb2/Dq7DiJCfZA
	 pF2sLQoRa1wGGcI9YagAmUxyYV4EJ2jEg3EaI+KF5RtIct26xqPjHCc7hhlkpgUQ5d
	 My/BIVYYlXiBInixBG2YHmJPFClBgkcV04aliUKdpXV86hJLy0NFKJpiNk/zvUquMD
	 p/D8x9taV2Jgi0eSNGEty7qTRloE8O8T+skDyh/g9R/+CBToBTaPchferiFCT+W5uY
	 ovBNIpOaI1Cq92j61vEOQuEmIzawZKisIBP/uVLcRBdnbA+BeB8hwaebo+Q1uSn/hZ
	 W/3GT7cVyJ7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEC4C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474917368.24383.3002303636961896415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f3a4dd9cd07c87321ceec2b2caf2d8d76f7faa7285e3e67d1ca5afb1303fea
Date: Wed, 22 Jul 2026 19:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784749173
