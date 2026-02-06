Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B1A22156C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770411834; cv=none; b=Xvr4g9wSojSC4NNqX7Lg9n+rjf0Wqi6ejV3/a7g13hP/afRYyeo4sQHKGYayIrqVtQx3drgrrIYBiUZfKaootpLAoLl0e8NZN0s5+hWLyNhRjfvPJGMQYqbld4UUbBDPufpoWWhViDkKmieY1/rAvg9aHPx5sWdPbcW0Ey6JnFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770411834; c=relaxed/simple;
	bh=H6aVzVSdYwxvUoK/fLCNGwltB5PBdaLY0d1jZrp2WSg=;
	h=To:Subject:From:Message-Id:Date; b=XS8x54kZYFxSvnmHXWksiK1sNfGiVGx7AjXGx9o8swQFeoz+OqWL8FIWxSFJ3kD1kMYgIduK7BJ4K3ymEvQbMJ8GI52OVbQJbogAHgNk3ZkZaR/vZqDwwz5lKNQQK7sI4XDfxH6iBJWmuOZ3ZbDdsMrw6L4WNg442evYVGdPH1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4FcXm04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4FcXm04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C690DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770411833;
	bh=H6aVzVSdYwxvUoK/fLCNGwltB5PBdaLY0d1jZrp2WSg=;
	h=To:Subject:From:Date:From;
	b=b4FcXm044G2Hin2FkLPMrkKDJNiTIzyyJH2X/kIJRcnRu0k+Py8yK8FrIoVhOTdMX
	 4XoklJPfPbyXWmDZ6fTCZ1PtKERowMdhHaU8yPapRkGuz7ED3vhYWz82Gd/FG934L2
	 s8VVKPqoT+BoiHvYSnn816fIZMBRrz1uCTQBiS9Rvm8gc7GdTdZYfD1qwv64NO/W5Z
	 iFZ8zDQPCPE7PCgetYQVzsKOol4LWrzGMhH13EP3bIx0H0PGmeOu4+pyFE/XPKJc7C
	 DjMtn6+Y0LdwUtxLeLngKUxk1DT8/pT6HSaFLDWpjtgQh+3SaYGfraNSnueKsxU6JR
	 PCT2AWsbb2SGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC2EE6B60
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041183359.11222.7858844423194072420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32ebd878dcc8c07ad3dada1b3f32c8ff1593dbe6da95860fbc92fe0998fd7e2
Date: Fri, 06 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770411833
