Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7ADAD21
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726681554; cv=none; b=tdoJxDK6dUrwBJfOV+Chi9687x8RyU4jzFsgG+up1eEuaoclNF39uEzfklCOlbetVnBQBz7pVQpm9nGwDbNFoqFSSlC8u3i4TKE0xBvO5S/256TjPL718NzOcdSkm/eYnXu47yhIQ+wjH4Fh60iXEuaWzW61mQcsBN2Ue7n5ZD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726681554; c=relaxed/simple;
	bh=Qm8iLckFayom8AGtSIXq0LY1T1VlDIbpaZVq0p9NFa4=;
	h=To:Subject:From:Message-Id:Date; b=c9IjQFIbfuBFcsaM60E3ZBOGcxOEaAcEV6vIFUEhgmhKWI7Yo+7fMgjIX5QLEWoOsX6z95sqyx5lMlqglVVNZhfjGu66shYxonj7krHdPk4zcNlqaSue5zFhUkf5dGWQhSoRbN65b78tmuxdE1CXfIumnR3rr2h23BK5KDm9Usw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNG+RgYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNG+RgYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDF6C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726681553;
	bh=Qm8iLckFayom8AGtSIXq0LY1T1VlDIbpaZVq0p9NFa4=;
	h=To:Subject:From:Date:From;
	b=tNG+RgYIP+0EAneypguv9RWVs66QTX/YWSwkDDRYAZppHp5aANfKnV9V5tfVJTwoV
	 kF9BAgTNicnhJnugNPgtb7BVN2pXSBZUCDkVo3pde9mJlSH/aK+UQusOyJLV/XEPLP
	 hyZ9eZb4lqJmHynMpGK47vVTApcS34Z0jgFLUG5hTj6yhagYe4doLShbBD4aUkqaNV
	 lWgZErLqYPFcasMVFPmKYr3nqKIFUCSGnmcBFnl+9p8jKjGuJQuJGGDcs19zAnPqeL
	 xHBNSDY6h0OSkI8oEDxd0DuwlOvBZZE5xm73EBTGwf4+a2V1GBqaUjV0est7ySpL12
	 /QGAKBqe0YG8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F3DCDD54D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668155359.10088.9674550240946870080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6d00a350e261c6dadbc12e9ea81ecb4c7b706d8ccb64f9e644b2b21ec5af09
Date: Wed, 18 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726681553
