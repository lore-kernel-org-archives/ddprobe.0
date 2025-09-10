Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC7A2D0618
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757533794; cv=none; b=bRPcczSn38ygODwryZqGcgvmr//K7FeDgwAdlPCsqRM0SPmDWLCm2tfbhHBYIqBb/IQEBqxEUT+gzW3c+d3kko+FUmgBYqDPG3xy52WAcYoK/etsM65kGjSL2ettsUh/9X8/Dj0YcF3RHA1XXwe2VhsjhH8HxbDQgNCVpyfoSZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757533794; c=relaxed/simple;
	bh=TpNKlkg1xBCfA61NgBbZfq5rvUzDuVilQJ0v4oeP9p4=;
	h=To:Subject:From:Message-Id:Date; b=KViZCiKkN5jzNFNPPzl7w6CwlmSQffmY/9jgE3hU4XbfYiYdK2awK+QP2Fp6fr+03i1Jw9o/NI37PvuLRWn/vFxSphcyByiHy9VYAHjAkJqzsTs5WPUVvPKZxSjv69aiycIIpJb/sYIE3NfZMRhJoNUl1qaON3Qe8vGbEAbQMQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMBnMjoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMBnMjoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14ADC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757533793;
	bh=TpNKlkg1xBCfA61NgBbZfq5rvUzDuVilQJ0v4oeP9p4=;
	h=To:Subject:From:Date:From;
	b=LMBnMjoYQBpPS974CpukL0CUWYlJv1Dg36HJE3dfkRijp2jIm6Vcz8zDUsjVJewsN
	 bUFGDKnbs93YDNhWEGNUUs12+ogFHYZsWlGKSeJ6+vFrWbOy2XLrLOt/goFkUykDNR
	 6AjM2r06wEbN5/8nHdKMYNRC0+4xAul4EuHzunBrEkEoyiFfGYOMQPYNXf/ha8Vp/p
	 CV1Ved1iDvZuLKXGxabdiWWfI94PjLho8F+akHTIBDldx/mBXGMKiEYDlarKqCRjMZ
	 uc+rPoAysXx+TAxaQg/Q54c4fVfkojW8va61Qce9PL1Zo0Jn405aecuFxi/AALwnBX
	 2OG8Yu+/jakRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED69CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753379357.2072.4213504492418056107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bedef38f7086f8dc207b243b4c2640dacec20bd609a7069f38e3da14dc71b9d
Date: Wed, 10 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757533793
