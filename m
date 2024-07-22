Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28754F9DA
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721657754; cv=none; b=nxDaoBaijAoyt4Xm2byh2PeDrKNOLmWU7t2DabzM+UOPO6HlMrl3IFOnLhoDUKnc+D9l8Z4JgeJZI/db+iSSTE/33hB5ZFRsQb5YAt+PeouDu/KmMHfDRxCtqOery4cZD7Ty66CpIlb7LA6Pa251O8+/eor2usIT/QlQIPuQvko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721657754; c=relaxed/simple;
	bh=jy2GRxxA0iZyIJMX4yoVvxDonTLNn1hNuoCqJ33DPc4=;
	h=To:Subject:From:Message-Id:Date; b=AyW3/WRWUcw+f7WJa7ncfDkKLGO27EipxzmSKQzAL8SsT93GzZHdxmOPEHWEe1hdf61OUGi66rYx2vBKBJIL+BduXknFX1YqRBm0XhbnBBhPtaNF/hd74EpGocUj1E31AB4PozyIWIlvZiGfZi8XguIKUV3ExxEhAWS01FqDe7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/dWSMhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/dWSMhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A3DC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721657753;
	bh=jy2GRxxA0iZyIJMX4yoVvxDonTLNn1hNuoCqJ33DPc4=;
	h=To:Subject:From:Date:From;
	b=d/dWSMhJOisNspPy5mId+Ox6gjRKXd41IUPX4/tMeC7kX766vMbYXJSVvhcwrfpeC
	 69knFKVspI1xAbwc8rGlUpwOVJE29NMgyGWzNLLV/Tn3bbFnmadR3op0ZDsQgpU7h5
	 9Y3+m5FGIe9AMcVWXEcKHdox78QHk2dUAEPoto77q60CtqJ55yCzJDmsjpHquon8zb
	 lNe9zcwHM/IAMJG3yuAyfLVRyVKcmoQ5ZdZHADLmIXl9H+DM+5gGeMSApL75BZRMle
	 r/SaLDq34NFK3ykYy2rD/Zy5ACoNwL6rgMjFaRUBUeUBWMpo/hg6j46Nmn9idzXdwr
	 CTS53vUrAPjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94776C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165775359.7222.16605488186262057128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0742fb3062c64a4754037dd587c263f0d06afefa413d95cf0f53bfa8cbbb34
Date: Mon, 22 Jul 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721657753
