Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3495C1FAC57
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735928154; cv=none; b=bBv/abQzU6wymEOfX+4goSCueJsgMA+TzGliohf8lgrQRV2iBQfwjGK7+R3eqDT0RCNo47QWIjneo9QgdcaKoetxa2ZVSVbaN4piK+UOWOs9kHRW2AAfNTMYZgT5gsn/WKM/6tM8GNxDi/9fU/Z/XyVzy69tCDT2iq37Q4x8WBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735928154; c=relaxed/simple;
	bh=MW4iVJ/1HzlZ7umdaOHp+xpwtNPW09A8J+a4F5fUBA0=;
	h=To:Subject:From:Message-Id:Date; b=ATpDG56k+e6pa9BlITbUFvpuYYE5azt9IlYqWUcjssqcmrN+9+r3Rlc6UrE7XzGHABA2a4HWFc94aP3ce19HQsGhJReKqvfrVLkVDSrLghymZNiUSnr/7hxD6JjktNT49GHW2cYdsN+ruo7zGVoV55Tw+uNKq6pVycWBACPcpvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tfe2kWMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tfe2kWMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8292C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735928153;
	bh=MW4iVJ/1HzlZ7umdaOHp+xpwtNPW09A8J+a4F5fUBA0=;
	h=To:Subject:From:Date:From;
	b=Tfe2kWMgfZN/8hdkjEUjRmtBOWJDqIUgGByFmZBamF56m9l8S0yWom1XfyOJkVaW5
	 p20kOBcDYOUonkxLdnUrJvalVEUFheE5bviZgMLj6/kQCawkXspACyPnmDdNqpWkqK
	 cG3gmrmquQQ9JzrCNlfAhEzqC1sLpRcFxjv1br0Rgryc4Lq2Kg41bPocjbArnsmBtJ
	 zzTIfmkNh9LEY+TjGyKUKT8hcjk9+XKWEdsBXUWXmOmzq7DtXW3FIaTc0RYpvk2Mie
	 tmDGvHCZ74f6ZuNYtn0nT4YpygN18m/wYBZSQxSFBcWtMRbawEd0nQn7Nj4UqAF4/H
	 cpJUBMxTtIU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93596E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592815358.25440.2527832104374209893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4b321ef3c816c8112f6fbaa7c1de5f6bc169cddffd0461c71a522cb8758db1
Date: Fri, 03 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735928153
