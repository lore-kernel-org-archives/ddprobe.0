Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28409372
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736574354; cv=none; b=DQNrBsDreib23UwFjEpEFQDF+p9+Z0hVaoFbRRpeCyG2C4TPtjGkFYMxsOFgYIEL0clV1qBMgruV9D/0+Q3bt3ucNQ7Gi4ajeup2PCHYKXkhjy7srEAPvr33yOGlz6JM7yXrUIkv/dZC1MNM6gi5SDDpw7kaNzp7AKEh92VC7/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736574354; c=relaxed/simple;
	bh=SUL6tp6lwKajnQFzZ5YHLDQXOMEIJTEytbK8j/TLinU=;
	h=To:Subject:From:Message-Id:Date; b=s1LQv/eof0NHjf7W+guHooZp5D64MKB5Cz2xc47bKRs5IrvKZaGzwvHBMDAyHjzKqqVfHBSp6mOe2PiIn6PZQ6jDdUrLEuV/TCi6QFXz11NU8lm5jz8pEtsmuJVL8Din/i5KRnMO8ck8Bu7YxZEYP3aABQDlJmhVohpDYh9q0q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RF9CswKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RF9CswKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCDBC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736574353;
	bh=SUL6tp6lwKajnQFzZ5YHLDQXOMEIJTEytbK8j/TLinU=;
	h=To:Subject:From:Date:From;
	b=RF9CswKGU7H69gzZjgAN7dQ9YVRGcWQ1p8MVVcyCO8DjoEkHW6GdC4VeGa/fHdUN0
	 VJD2ypcnhywH7QkZDlNULGnhmIJ8+0OLN5z8X5cfUfIE9VySQ32L6ihqpsothG4mb+
	 IvxIa2apCrLQjCjomV9SdHVxv1x0R8Y9sxDsa5J0umlrd0aWUqdX0Jt8Ia0zUZaAej
	 ZT1SBpya70u2BX1vRL4kwg+cDWlFlWHSU0Hk4nugWt7vmLg0M0Cyau4hm+0tGDC1g2
	 9uwZET8dRrTGu/ePwbO3A2tqHW5KshNl91iFtu8tNTyHAaFugvUjvGKEVlfHVoOyLJ
	 9UTugaNmr8TLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B028E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657435359.32552.15340809717894675845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfbfba80d5129c62ab81543ca2d639a56609bb31525cd549f212d1c36ed5ad8
Date: Sat, 11 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736574353
