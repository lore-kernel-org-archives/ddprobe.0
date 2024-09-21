Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CAA23D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726885554; cv=none; b=K+5nTlWBg/N5FgnFth8V2MLOxbv6lswwXJtiMVs8dpvJsu4Te0g8BHejXl20MpFFzDoF5FOs1wg967+4TLyfhALkD5Z0Aj0lv6Ej82K4cfCllVdmOEf9TAKdel4RXAHIjyd3B9+ysqgzzUnBOAObzQSHQDlpM6SeYUhQLmFY9EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726885554; c=relaxed/simple;
	bh=anWIrRAswNAEqiYWJsfqUY0cPfrSguHHS8qIS6JVWbo=;
	h=To:Subject:From:Message-Id:Date; b=HGCqHBoAIR6NTWsF0RPOfD/2oXfIf0P1ghrdKPKHGbC9Ph6zYAt4ndeaeQS3MeUHTwEMVTrq6ME+XGXuPjXbRaqSRl4+4OlPfATLOWHjx/wl4VEKWPuuelfHjtXBQVrsDEPLYMAfuawlg8tOju4CGBWb5RKsVFmMuzeUehQ2lfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFnnRZC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFnnRZC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B16C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726885553;
	bh=anWIrRAswNAEqiYWJsfqUY0cPfrSguHHS8qIS6JVWbo=;
	h=To:Subject:From:Date:From;
	b=pFnnRZC6W9oAPUYnmcML9wIpVZ7J6bp2j2TwTSlWFFUPPFupxj4NirqtZ3EXq8t0G
	 IB6GMrV3CbaiB/dGeBKg2fx+BP58ccTy9F/zR6tWM128v2CUbY7oZNVUYl1Lehb+Ic
	 XNFwPKZRlZ9uxM2Eklio7QvRMTCk5Zk5PEOoLWg2858ME+jq1i2iPqnk5htYNQX1Rj
	 fOr0huhueoPTR65fpNOZg6nRgZ73qq/q8NXI6am41WXKfU7a5K0V9J5CmLN33LRhDT
	 Dp20lC7hNHWfRM5/i4R22klGVqEAgxmg2dQN77j/YUZNsspmJzZq2X2uAGuy4eDvWS
	 L3pkjdV8L3JeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE7CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688555358.3098.17261539432908402803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510314e5c0d1cf8d1e042982866a0ed7fbd80bb68c3e805d3d01641603b5b159
Date: Sat, 21 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726885553
