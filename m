Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2319D8F5E
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751689194; cv=none; b=t9Cm0qtYbi0hmXg/0Czg++D5z65kw0WnPEam/s3gBPe37TBujUbFJMGNtk+yhxIKk+fdkSLQckNhF2eeL29S5RV24OBF5e6sD11KG6w9i3/aAbViiPAacAnOJtlU4K6kfob8rzhFciNcvb7fKmMuQBH4P9wS4vohSM9+p15lR/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751689194; c=relaxed/simple;
	bh=gVrSCdTSSqz2Gc1skPJmb1AaVzG7nqXxNpoU7/085qY=;
	h=To:Subject:From:Message-Id:Date; b=GfbaDAu0mSlv1qWwOjl1jtuaGjPNQJI2fwZnK1RUdJOm9E0IRoBoMdfHZGNYSpWKQXMtgllKDeuLp6CTijUlGtucpeqG7gLB9QgQ8vzg8NeFX80oT8g7TBmczHLA41SKqLcrSJODqMInNfQmbARuHQtapzgiWM6gFssqCwL7Emg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qow/I51a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qow/I51a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7897C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751689193;
	bh=gVrSCdTSSqz2Gc1skPJmb1AaVzG7nqXxNpoU7/085qY=;
	h=To:Subject:From:Date:From;
	b=qow/I51aefUajjKkKdDl+L2mLbY0cbS7kvUraVWM07bZ8lxVVF05/lQQCEnCdAMRa
	 LoFtuAdp8QDjpwF2XBcrYc7PfJnM55iIEx4c0frHg3X+vnw6wnCM79r/g2ZlbSdBVC
	 0da1PauUc2dvWknZDnn5x4leN7Yt/cNRvolTsePBAGFc16TmohSsJ87aaZoagdp5fv
	 u8Dp5MCv3FciCmwLCV7zLHF9Gj40UMEWo6jwU/f+ax2190+M7o5BVPXqjxAoigmXvi
	 N9+hBnF6HQ1L4bVcLrI0D3NuaEeMpYbMsIK1C70XIBnpvtiDJlJyrl2lNpWNH4w8xR
	 utenKGZCR5Z0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94050C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168919359.26258.12203169141211159723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30550f34a9d590f75115d9c045c4bbd13662898333e82e1cdafffa1935a1af74
Date: Sat, 05 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751689193
