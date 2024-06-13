Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B63EEC8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718242103; cv=none; b=d0GEU7s7aemY0B0Wrhd/basiwkehuO+kc8m1yKiz0aBhAUVCK/PkO4qwaGymjqhITUtZ5VSVjXdPs4KFfeUdBlAHajpIFLWBhDYNUE1jdnI+xxLzlpCBuWB8ovFcJgWHjwyiWmj7Fde45ARIw9BvH7WDLGhTHuYK6BAW8OGQr5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718242103; c=relaxed/simple;
	bh=AwCgpzzioHdde7cftEHos8KG8bnrUx5JpNw2FmNfoHQ=;
	h=To:Subject:From:Message-Id:Date; b=KvwCC57pDwrl4Jmg9XE3Fd6anX2IcpRmNbncA5R2RTfVSgxEDScym+XRyYLxyT03NMUI91VYrg9LLPRNkVwQhmLx25tsmpLsHPZOABuabTd3A8FrR5qM/VpEFF/YrnCv68dsjAtBNLbeU6KfPSU2sKblqx40zwjh2Mi2Su8hBos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEjYJXCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEjYJXCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C72C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718242102;
	bh=AwCgpzzioHdde7cftEHos8KG8bnrUx5JpNw2FmNfoHQ=;
	h=To:Subject:From:Date:From;
	b=IEjYJXCk+5X0DE8i+ORBYFTJoFyV/jpvFAX+2lLF2PoYgYzRdA2vyidixvdqUN/gC
	 vHNtVIBudR5fXEVrHYV9zUndDrAWY1cZgg6GXcsswV3f6cAp3AD7dMnB81+R9Ax9yA
	 WMby/MDBt9JcLTsp9EzalpDZ1Qb/Pa9yrOc/higevy6VAGiSTbDg/X65vNIzsNmhol
	 5YJT/UYkyXEGzr0l4jjNiQgWuKiQEQIbH0aDX+WmScdaSp/bDC8H/TELZVLJEORRAl
	 qf3gJGeHc3Z7xEz5+nXDX1CFodnzjhGtjFKafUlN2Yuv4BCw7aJZ2y7ryfHI1wq4Ao
	 T5wveQdkSJXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DC3C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824210279.31064.8014158845770834813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd80e5e737e6057cd2cd240f444af86f020e2deb860d823d276581db9131c75
Date: Thu, 13 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718242102
