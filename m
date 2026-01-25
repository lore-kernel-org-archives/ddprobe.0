Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177DB28E00
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769364234; cv=none; b=SLi8MV2Qihi+2zJaJcBx21ghKrNiTZtU+aWhifJiuKPvAlfWSFYgHow31GqsNnCy1s4jQUhwsqbELZNj3hRTo8Sap0+mGvoeTdwkouydGQA9VchHanEBJml1v6a0JbrLA90Xf5EjpGPAlzUR02ua4vp02BCDNyPo+X2M9ys4+0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769364234; c=relaxed/simple;
	bh=3qSiQhhvp/5Cvk48PZwhNUSdA6FYtductfpQ6nWNYzA=;
	h=To:Subject:From:Message-Id:Date; b=sn9xY34Al35jyc3pTdtIebb1V/l93tPcpyHSkuA0nUZ74nqmoe5mxFmcwOJbeJnaSAwFDYGa3RcAIKkJoKybMjThLJ+3xr8s6lZ54/DRyqFhiFWRI2uBl5i6UYwZoozbEobmTmSeBsvw2t9BHp7SmwZOxM6wESnv4XjK6IAqPVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDUyx+2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDUyx+2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1B5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769364233;
	bh=3qSiQhhvp/5Cvk48PZwhNUSdA6FYtductfpQ6nWNYzA=;
	h=To:Subject:From:Date:From;
	b=JDUyx+2VUA0X4SH6SeAw8v6KAVbBtdG1Ha4ULlDOPet+ecR4HyV67ecJ1wbpaN949
	 dmXED67l0akJ4rEFX5OuCykH3g5K8x/t2qbHe4jvuSYoFAPYS1Mx5gI3dT/tnIc7a7
	 dh9inrLNnRQbsroCWlTFCn5Yt9YQS3q6pNqstEUZLbvJM3pJeGgGwwId97h15uCuC1
	 hUKAEyGhs5/Zl3PLAuNVz49KGX3j1xPpgn/0rMKSuyTDfCSw0XjzoqUzLPRsJPAe9e
	 HcNfWLasxrhoYyHsH7O+ENHaZUafvJIGjQqZITZvBCNiqZ6sv7roMtrvMALdvwZ+rQ
	 WeKybvPewUc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E357E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936423361.2082.18405199279061094244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c531ae58e01406a73fb0ffb1e524a18d8195da087a1c59498266ab81244716fb
Date: Sun, 25 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769364233
