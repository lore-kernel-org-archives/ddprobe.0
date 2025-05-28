Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92C126A0E0
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748439593; cv=none; b=DyV3RxlE/qm1I4LV35oSGhP+bqCZopa4dDsq+gQzXaqswUXzhqxfVghaoMjIWcERLMXY8yJydnLKFtyz/Z7YtPxgPDmZ0c2WGWrf6pTo/RKijhx/F7mT11y+ITKa3PIvi2IEbUCrTtXcfrrCig6tFu4rwxHZmGKNWce6k2SpCN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748439593; c=relaxed/simple;
	bh=0sG1/kWvPO7M6ntl5YHiagH0WHOhUAIxplgwjoS0SIc=;
	h=To:Subject:From:Message-Id:Date; b=lQwW3UEmLpp7fU/e9TwumFbJ2BpuvssJbDzGhpomZdk2PPbE59lFFSPpVrVHhfCllP3RfNgO+LDkXvIfa7UqR30csNqlPTpuenehjx1TBFKVj+ol7g/kw+EGumGo4ZLIuRq9inrqpQJ/SC9rCXNq7kw8kyoyjQDBZ9wMGXYEirA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiRiPoHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiRiPoHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D98DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748439593;
	bh=0sG1/kWvPO7M6ntl5YHiagH0WHOhUAIxplgwjoS0SIc=;
	h=To:Subject:From:Date:From;
	b=XiRiPoHxZmZaOWZujDW8EmMWQuEX7+3VaZqSQFhNlZv56Czn3ZHUqu6fxsuw9DQR6
	 zjqDK7n23gLZ5au/6JWxkmtq3SSGqqla8BSO4rLlKANATwbdSC+yWJA0ANmwHNVEGU
	 Cfs1U1ctN6YdBZwwcB80UWPR3VvJTe709SfvlffzcaWwQs8cfbCL3e0EPM98UqfP4I
	 utFSR32wp2GO2Lp+UhMDrMHIArVsJcd0zXVx+4ZnlCsMatra49slmbIZG1c5R0+vdX
	 KOEnRZkDuOYHiTjuhVOSUbw3AWBzln74C8LWJXoRM9V+P4PSquID+Y3HeGptD1Utwm
	 KzJJHHouosAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA7C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843959357.31285.13369368170587381226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd0afacbc882cb72999eb03c8d0ac1d8a098538309e5c68fb107df49ba15f86
Date: Wed, 28 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748439593
