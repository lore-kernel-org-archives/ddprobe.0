Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB5E22A1F1
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747856994; cv=none; b=Cu3OBsrKz231SmLGhIgyudeOrQvYwq6wAABHMG+lV+TWIyU2Vy+uyRmaVskZs0oumpkknOJSUfZKH2D9awGrhkIjbyu8TShdyLO/r4l7nNjYUQGGNsrkDNrB9zVMuzK6FXgaO3WAL5InkzhAp70GX5rQC+XECgoCW4a5+ZmwK7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747856994; c=relaxed/simple;
	bh=5XccHgktQkE/4MI9u3QUtJ0UTwmbX48VaSdIUGC3DZQ=;
	h=To:Subject:From:Message-Id:Date; b=dmSAq2LiPnYOaYz4wPPsF9gBdo7pPBTyZZ0346bFApR5weXF5xyKCWkenNrKYWuZ9PY+13XWHs8w3sAzjd/A+KgUFea0buaNyYcIjRsXVv5En1/BLIkYvReqeevIw3i5oXduXcY6Cn/pzAbuHJvHtdDrDzfTPfiLxvouGMhZ6U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjkx0xHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjkx0xHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631CC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747856993;
	bh=5XccHgktQkE/4MI9u3QUtJ0UTwmbX48VaSdIUGC3DZQ=;
	h=To:Subject:From:Date:From;
	b=Yjkx0xHkX5+ufY/r0rzlfEiVKqrKr+iwfrd9Xz34ptvdgif7hyWGR1j1i4voCYAa5
	 jj+5AiS9qeddChxErDoxKGtJc50wnaLx8U2hBhdpCQyW0/DtLIC7SaM4lL0j3cy/kU
	 t1kNKrRur9WydLkphzwbpyWZwuhZgruruWa6b7A+CbiUnDe6emjORyPYTjQjbiKhY6
	 3atLOY5BANDy7IcLt/Lu9FwSSZp5rg/LvT1lphVOS0+ruYSE56manoprEv2QmUcXUZ
	 tzL3IqmyOwLnP4cEU/4m2Mvng+llEUVC3fAF4WRFo5AyW/AYhFT+1E2jvxTCuoIq2Q
	 E26GsBs1nXIig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C2C54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785699358.3769.9916397513685705926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9bfc00950f9a70340fbbc0999d0989c4a9a635bdd8c257a40b4be011aaaf47
Date: Wed, 21 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747856993
