Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173F4233722
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764728574; cv=none; b=sj88m47/CCvChrOZH0ulR1sUJvix1vB8KHiAXUcYu2E2I0UgsxIZQVFcGsJu66fdw46BVQgTmP4MRhb7dpZ1r4SNijd7cEUVJk7fCZk9JlUCTpeRV9fkbUbpUy+zPHQlESxHiUyZaMKBoAABUgM55wia3Hf3GGKx2iObuXUY8oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764728574; c=relaxed/simple;
	bh=wFGpi71wecoejp86G7n3QPI9waMMFwWoKIrnHDFw9Zc=;
	h=To:Subject:From:Message-Id:Date; b=mHay9Hi74Cn/CsD3N4rI1bZ1CrxF8WLVJkXB3swaK1ln6pgds+IT/AdQgOFsDTrcMOJxQ2a5pJ7ElMHP/NBHGS60q9izPYs1JWIBF80hcNH9TKDuj+bPDiytZokdRK7Xa0NEq1AxsiR/+Q8eQNiegIWuUTPRk96XHabGv2oLvME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbgWWRk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbgWWRk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CDC116D0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764728573;
	bh=wFGpi71wecoejp86G7n3QPI9waMMFwWoKIrnHDFw9Zc=;
	h=To:Subject:From:Date:From;
	b=NbgWWRk/fJBKkvoDyrmPGHAyvaSjsgmwjpAD8oeUzb6McdT51m+nMr3qDqYAOX7qz
	 TF6ea1jecz0B9LFHkOgqbhHa/3bVYjnPgdCF9rNyW3l9rP9/kcYV9G4fxLnLZ7uue/
	 5NwoP2cMb9/s0TSH4O9F6KOTvG6Ad6U1bMpe+6gjUHdH3xJt2DyUJ449oRHSRzOvzg
	 NwmWqOsLejbkIoe/tiV9a70YbsTdxY5X/9j2k/FPgnHIs0wR72aHaQxj900acj5khl
	 DoN0ncmDPZsPNQTPmkoE48urXMgOvrMVoOPaDLtVhYm1uYJjO8KmlVqcBW4q1B6NbV
	 zPUAccDcsgR8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929FAD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472857359.483.4924876240243727766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d285ae0de9d0f2e0a67c30159681cb5c289be3b7358fbbf4131188671344cb7e
Date: Wed, 03 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764728573
