Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3794636E46E
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779471754; cv=none; b=KfyrD0EUNRzQ5Q9vTxyRkHIPQ86LqlKY/mf7ZEdmgqBC++sEJ3XOe+owa1DJDS+7TyBdUO86r9LtgcBZ9nkdICQ39zQ/9IY2VYt/0ITgio+oUu6KbkxudUziCE59f5Mcx3D60YW5v3iFTdMtc1MRkX3qvuGj75A2QLG6T3KvQo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779471754; c=relaxed/simple;
	bh=CNFnAMHUuwzhxvNR02NziMQi6KIn82xh9lZ3gnFTGnE=;
	h=To:Subject:From:Message-Id:Date; b=SkPomgs/OaMau1Qd83gMd7uZcwZodnObPiqWGDmP1yBuRONVkA5L2mDI2Byue+G/TjHtx4D4+rXx/szqHuDC0WjaZSAmfussK0cR33LbXEv0NuAypN2qonT9r1a0O+g7+Wp2ptMhAZrQ23mkB3Xnsty6l60MLGP18RVW5zwBQIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuRrRzaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuRrRzaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE67EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779471753;
	bh=CNFnAMHUuwzhxvNR02NziMQi6KIn82xh9lZ3gnFTGnE=;
	h=To:Subject:From:Date:From;
	b=BuRrRzaJ+1wJEG7NHmGM5Klxj5/dyUerISeQ5QO9ymcI14C8a7Ua+ZsEM1T7qZXG/
	 RPMWul4JD4zI6b+V4QllYes1pF+GoGFWrt2G2HuYE8il7TGBbnhe3IfcQAjC2ANoKp
	 UT3MRYZgyk8sXGMFaNEJBz16ZFdTnl7gfDNwilgF4dzTy0Yol9jfoZotsTdFRQ5EAZ
	 ILDheZMuBSJgXpeRYmAnx1tGTLnBZCuGEpRV1G6eUxs2Qi9vX+m3dnZNkr1Mzn2zs+
	 Kf5g9RFAEH6TKV+0mHIH//nfdBMtXEWmcTwSMkNmppbRO66yQhysGIZBVLzaBK581w
	 ON+Y6p9EFuLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CFBCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947175368.11564.17799739384192673600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d6769631ab968caf89a2a65b36bc381d14f7ea97198949237b54a7351f8f00
Date: Fri, 22 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779471753
