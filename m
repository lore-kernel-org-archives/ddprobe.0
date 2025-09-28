Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B49F225D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759094994; cv=none; b=uYKYCHnIZLtTz+uAHyiOmCbv46sJyrtsU2ScUHAZXEEU2p96SZ9+Fl0SbcCw95hibyCef/2PjiL7tGlvJnWC0K41f4NW/ilubmKr6+5Tqy/LjV5+7u8J6eq6eiU4vPNVVWuqRJf8VFdnZw3tZsc+bFbOZwVbZxs/gMLCHbA1XkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759094994; c=relaxed/simple;
	bh=hDkKmLpVjTf5xW32KsLfSs0HXPEPzjVDi1cXZ/HMRi0=;
	h=To:Subject:From:Message-Id:Date; b=k8PceUHCxPCO9rC96an+nW0rIMBYftTjGzBhphO+lPEB7vjd4TLeHEsG1liPQzVCpbpRlZTvP/386rWtDyJMrSsevviopcV69QZgBcefR1c1E8KXazcPdfWdwgG6UL9jA0ov8ocgFrxfWhoSwYQjLjuofLeypft2gWQPGX3tvNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuZlivvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuZlivvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B192DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759094993;
	bh=hDkKmLpVjTf5xW32KsLfSs0HXPEPzjVDi1cXZ/HMRi0=;
	h=To:Subject:From:Date:From;
	b=cuZlivvgTByWuJb7o7/694SFlG4CA12blAqfOcTXvwW8ivQbuT5BI8eHXm3bPO+kP
	 9n+mwgNVz3FwpDiP4izkRRdUIL3XEfAtViZrGrZv6A8MghV+GcZUYnQBH1/fACfNd/
	 zmGpzHuBCc+jClHtcsGCYpSXa2bld8pfoWM5KywNhybbl2sPAyT3F+S0K9T43B3EnF
	 YxsYT5zCzhu5nuY3trQH3VJATlLWsDi3oaVzy/dYVLTm7k+AAaIpjZOQAWy+F1jgmB
	 9EUDvE9g60PnjVu0rSsPMsOrUjFXFn4iTcSYos36G71487WGsf+kdRnVHmAx5eSp5u
	 E4VFD/789kDfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F3ECAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909499359.9751.6745117616564554734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d51950cb8dd42b69103835e720905046ee32f5e32ca86d00746833e209ea5e8
Date: Sun, 28 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759094993
