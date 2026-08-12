Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46963397339
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786516234; cv=none; b=d2dpMSPSJbm7BX+x3YBYLdYDOWVT55mtRrNPgJCj/bXeYWNjhQoSxfjkeasSH+xx+HoEqvPEbMDcl46DRH4Fh2iYoM+ZUeEJMgO7RpS/hHjtB9hxpP3U1BBB9scRyMNoWD4EeDb5IsINaVhV6S2B+8PC37CG17E6jgR9xTq+TWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786516234; c=relaxed/simple;
	bh=Rpinol6iqdNo/ARsfJd08VQE59FC84lcV+lGHqMazZk=;
	h=To:Subject:From:Message-Id:Date; b=n4WdyWCDgxYTcJT41XkSQbd2Ny9uOA/X7ol5jA0/lzed1ipk8SgNNU32/NB31qEJ0nHcGCL3gi/QxOPhIDLEZf1bx1jQDLJtBkBIgWREbqHHHbUGAqjlTLyJzLyZv8/HBjjuJ1svC8E1ACeH6+ws+jZ+vHUBZ1uZX0vXAh49VZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFWH73An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFWH73An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EE4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786516233;
	bh=Rpinol6iqdNo/ARsfJd08VQE59FC84lcV+lGHqMazZk=;
	h=To:Subject:From:Date:From;
	b=WFWH73Anh/UefpZDGjCD4/iYnMHDUbF87nX9i2zLzL+V6c7ijyR7Q2xvhzzUlyFdM
	 zwsGaBiZblhPlnqooK3cOmAZVoRbPd+2rFyZVzwrCgtHEh2VTBDm0Lb7mLg7n89uc7
	 pVny4vhLgd4P7HvOcgrxLLNiFMLHGARdRYVqBHV2qtEWs0zoHhXKS3V+BIi2wGaXXn
	 HX2ra58t0eqG9P5+5DxNtxPsgPBG7I/VqYLTPzjBXSjuLhdzoQj4YrjKUAsrxd0nwt
	 hZ1qo+2R/wMcNnZTxEWqkkZ7rBDzPywv6xCmY9QMIXXgUwxWI1jFinB5rZX0cVVbvY
	 nVP1khRhJFS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A857DC5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651623368.5299.3465645830895038162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f16f2c66597e055016a0d46ef296caa4ea73f5dca1ebf8a8ab82bbd5f59ea9
Date: Wed, 12 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786516233
