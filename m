Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8953E9295
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778160454; cv=none; b=IYc4ZqsNY4CdgUGJ3cCkrbg2MuAAMBNfLXj/lMj6WDgt6CHS7FPeKk1VWhZzCuIgRYuEWlZpTL3XY/OuNgqT0wpKiGAItrgg+aA+U7NBOD+ZMV0ALJZN20P7wNCtx1L2Cp5U0SScG4fS+IvHgF5jk1uA0CS5b79bNM4xVU0ed1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778160454; c=relaxed/simple;
	bh=VvwtZeoNbHbGpOfK0YChe9GsZekg/IfdkClwqCOMMDQ=;
	h=To:Subject:From:Message-Id:Date; b=u9GMmxLuon35EUWn3fOhWEhxWinnMi+SFO9ZuIEYrA0/VDLM0NCnpCFiDfd/tpawAd9+leSuQlxvxhtvMHrmdokWHRQ2JgphKEyWB39YhqZrDq8gJCTTTysy0buwW8eq0+yqXssglm1NqHPaFYWzIBR6nJGVM4hIcxmmO+ZWiM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHsjYwHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHsjYwHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE24C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778160453;
	bh=VvwtZeoNbHbGpOfK0YChe9GsZekg/IfdkClwqCOMMDQ=;
	h=To:Subject:From:Date:From;
	b=sHsjYwHV3co8UWjNvKPzx7/r1EUCPcKxt5xzi/LRzbcfG+edp2hsbAK4UU2xjc1GK
	 cT++MHn4UMCru/jV1apMiN35OyiMvIsLOKYzUb2T4W+urRcbUZs2pd7M+l29JTDnRq
	 UDSyWEmrox7q0+mNDlfWU+lsXbkcyx2REpTs75i+K4rk771IS8ewVAVzBWmuP+1L4e
	 ZjYrJYgwHTwm4e/6JDmYRyPyGk78jE2189HT6qXbpzdZ6mUhhr7yeTUiyq3gQazSY6
	 p72P0EfUPx310zweXi3FWXtZ55+l4wdGqNA+J1Igbo7ZhCohHojkpB9cfL3bmUKrU3
	 srwuKrIIusupQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC14CCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816045369.20933.15131842437869062552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc0eaf5ab72bc69d96af0b4c675cdded3545c7dab3d09eed4e57389636e644f
Date: Thu, 07 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778160453
