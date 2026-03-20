Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1493876CE
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004094; cv=none; b=rFdKBFFQVGIm4T5D0nSrKHA9eD3jXRHiJU1tk3W0PeARyzdgqGL8cNVVl0KZNWkH/z0WcHQfbDmpNNjzoYCondZXgPN/Wa+wS3kOhqw7gUtaZBI2fVObYh/fBIjgQg6jWlkjwXGw7E27KpAnypyU0ntDF0wBECfZFOIiSsRXX9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004094; c=relaxed/simple;
	bh=a/Z/skMixmvdPlQIaV02PWp5KRKUcXprYoHXyah2sj4=;
	h=To:Subject:From:Message-Id:Date; b=O7xJRnR4F+32qAwEHKdpUjCMytoFYqH3QajChxr2VT/UpZQspg6Rp9kHedipqY5/sroVjOmPLNZcwWrytsbtjeG0He62VRbvy4TH5eV5awGSYncg69rzrdt185dAXhdJ2r9acmp6Fg//F+BYdSOXQCrLbrrGd1du4F0aymgelio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra0pmtxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra0pmtxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED5DC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774004093;
	bh=a/Z/skMixmvdPlQIaV02PWp5KRKUcXprYoHXyah2sj4=;
	h=To:Subject:From:Date:From;
	b=ra0pmtxNJEe5cwOc9Mk6bdfNiBpKEVclmGSQxQbNaJJ2wZs0KLadKTI3tM+0sfhrw
	 IK7OMWfHO+s1cwE6JDXl38SzQH1YiBe0nOfU6EvzZkiORKSsqAbIeauxA6WxigTcwh
	 TdNHXEm94P3EjHeYmADZIZgLYjHYqjuIXqXqi27/qj3/R5ZWXLog3kb+FHtiFJM9vg
	 lyc42ucEYrQGixjty2SLkztSa+q9cyKd0YIlGjGYz0PTO0dDa4WLgECpNR59/f1FfU
	 FHOIU4ChU8Bt7ARFQYauzGcmZIfnNSYWx48NCat4epdjq/kgGVzLx1I7spjQZAE2L8
	 JdlpX0gBtKBxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA5108B8F3
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400409357.11480.5527010141793808378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e72d2339624e4a84d606ee11c2ebde7158b9505076d427d014810bfd56d17f
Date: Fri, 20 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774004093
