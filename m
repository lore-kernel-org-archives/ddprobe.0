Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5658025F988
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788262234; cv=none; b=WKyMlabgf+BqrTYVV1Age73UGAPmlIx5rJNRchs4RSfoRejnOkGPyGjhRJfP/h+5a7DnVpDZs1FRdwwX0ltZrlrMn7s+rh5jIZXCl6pgB1AbwMuZP9Nbh3pJPQJvoEIzupSS7aaM+cSnyUINE/5BM5/m0Su9nMc+doySWW8aVYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788262234; c=relaxed/simple;
	bh=533awlltsfnkgwOSxsJge9yHJ1gAMk+1URaCynmpVyk=;
	h=To:Subject:From:Message-Id:Date; b=c5aYgnXXrGtGJzSBHYOFGC2HPbSDUkBUoEaV2BvfFzehX7M1JvixJ1/kAPWxKzmHJ6OcRoy49TsoKfF8awY80TONVVze8+uXXGZQoz8TMg0NJlVglgDGaGKZPntOkEzffHqxVmjdkFMsZhtP6GsvcHzVPztbYtpEpM9+zQrLiqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF+8/hhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF+8/hhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AAEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788262233;
	bh=533awlltsfnkgwOSxsJge9yHJ1gAMk+1URaCynmpVyk=;
	h=To:Subject:From:Date:From;
	b=vF+8/hhU3HUQ/8EGLrKGRKI6pMjPeIEyfstl4F+dRVzntHZp72+DGUScPd07ppS5e
	 3IZBZ2gtC8Hp2zCkCEi/mQgT7bTvjdombhV4UdmFklIdhdx49xTLSWt6VshbX849Zs
	 jO5xgtm9YQ4ioShQWH+y87AMvyWxouWquSTyLEStDWz06V8GZ4GT49IK60dmMS9vXV
	 79HJdr/5qRK2sN20Z9YOV704yQDc9UBDM/zmlhPMflnZ+BrqhgPV2i0HxPNU3DM+A2
	 OeJlxpYsGiHaEgeE+XZcvneFh4riq3udCfVc+ZKRv3CsR4ffQIrqglCp+v34KRAO7p
	 mToPnGunBo/HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E2CC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826223368.690.15709976437855780701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2351f36dc3a10f123c40bfa170b79b4383e0a6bc928d042cf1ea89526dca60
Date: Tue, 01 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788262233
