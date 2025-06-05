Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD7275842
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749151794; cv=none; b=oclj/YK4eKLqK6lshiPa8VjUJNXJwrv0FujVWRvdNg+7u4hztYYMsbNa4k+BOiV0G2lVTfoMru460u2DZxCtNTWLtYh3SEsLNkb6F78LBJXBYcuguIZdJx7y1DWrl5UA3/m3O39wBiod8xx7rDsTSmKoIHpv/uVUrgs990ycMxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749151794; c=relaxed/simple;
	bh=sMtqutXRVI1bzgLQVXS3y3Uba0ZmqpOqtwF3BM2bBgM=;
	h=To:Subject:From:Message-Id:Date; b=EnT+NAPvkigdpy2P8VSUdK4DWrgaBAZqB4fthvFv2i5n0c1f2ZXrFqTbuVmb1VTSq6masWpi2g4ceBSiUtaKBli7PSn33dXbcHErG+mTDU1xvCEuYF4uideOQL+cOwM/cZ3pfXg/a9OsLnKozvRtPxD7aObghWpOdL8zZCi0UdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDWgxOFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDWgxOFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5003C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749151793;
	bh=sMtqutXRVI1bzgLQVXS3y3Uba0ZmqpOqtwF3BM2bBgM=;
	h=To:Subject:From:Date:From;
	b=vDWgxOFPUKx8lsKo+riTVBluUdR9FjPddjl59Grz6NmO2dv2GuhzquchDGwk+h6AI
	 WzjVi3pYMYq0p4VGcQlLahYA+fBbo2UAe7ueXYNVtKIZOAF3baTrf/a89cIou0ShcQ
	 kQ1V49+Y2gF6eLAt+j2DHX+CyPSoGFCq07GCIe3l15/Hg8RxJyoS5aM9hDG26y8N8n
	 +jJkyNGYqhmUBwQt3LPBPAKickd4+AbKSmG7ORM57oOnyEM57nXk0sNoz37u6u0pVh
	 QhKjST1Lr1a/IbmMus1m1gCbuOcKEIJNPWtxPBRVdzcwbNXWKh8SvjYYqhjx8E6QwI
	 bTih7x45SE+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079DC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915179358.8149.797098528447149262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65cbcbecbeb156b9770fc875971f29f747d50ed5618ddde07be6135e3fbad92
Date: Thu, 05 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749151793
