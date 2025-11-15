Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6BB22FE11
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763248854; cv=none; b=MBKcrenbjbxEGq2sGYh/lslmiro6pZiOQacIQuZgPp76QavI2jY5qGOacXMWwiSvAV/SIc5kF8WZtQOgN/F8cRxgeH9tSqxN8FjT5guQRIRYAbc+Nz1eDdbtLR1lZqbQk9wQ7vOVMS5bmS2BqaNfebCDxwsgXcYDo9uXju7mn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763248854; c=relaxed/simple;
	bh=8lG9GuVlsI6YWTldC875HxuARQolK/8ZAi9q0jRHC/c=;
	h=To:Subject:From:Message-Id:Date; b=PxcXoN9VM0cCRxW5JDGNGibsh10Vo3zWeVtEHrenibgIh+/VcSoZtgtQgHBTjDmW+c0Dsa/abltME9oFxPsZvyFunQVp/7yMEWkvq2brXQPQOlcAMNEB/coPKEPRFUuWIIK1oggraPO6Hy6wvNw4/lepo4Tt0Sng+gW0tQusSJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syhpSIXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syhpSIXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8703C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763248853;
	bh=8lG9GuVlsI6YWTldC875HxuARQolK/8ZAi9q0jRHC/c=;
	h=To:Subject:From:Date:From;
	b=syhpSIXtN0sldW55QBgh2e0pKi0rbr7sRJIDskpCTlMTBUqWGacitNSb6Mmq8SrfY
	 tKhyAdLksqv6oTB5biuane6aBowvC73HF77OD6+k2HCAeIhqeKsBwvmzdo0+1xSsAE
	 EAvMfR+px7bfn18uij3HQn2P1RKy0bedzW5ojxWac2VGL/QYQ7XoIJDP8yNws/rhNE
	 y5f3rmTahn6HXyi4RQY7zRi548ydPo4Arf5anFq01Iogq9pFLZMxs60A7xveGZ64Cf
	 uKid+XQMudJqLcqpwl161ngNEx0Ye3Z/0Ft3P7A5gdFHgKwz+U8GOzNccHxkxm9h7L
	 Eb17x18k/gMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94579CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324885359.1527.9396960531341638638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356b78f55fb33d2aa6e45257e68ca7a4874bd257af22bb91f6c3bcd27c48abc1
Date: Sat, 15 Nov 2025 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763248853
