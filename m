Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D105558203
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722200753; cv=none; b=EnbGjbSN1sOgNufaqsJfxkuinZMhwtonaWWN76gM12EnX1d8+mnXlYN/l/dq5+mSt8+occspN32ZnPTPYplM9CEKc7MZqCMBIzZOQPTTz9d4EyJeJ07S8a45RswZLUL54LortUOzF9gXbhE/UoHTJh2JJt43gpE+moqie+2I1xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722200753; c=relaxed/simple;
	bh=vwvPMDDRMZvWB79WZPIpUN6tLHi2zBia+QGxTqun13s=;
	h=To:Subject:From:Message-Id:Date; b=H0GMg+uw9Xaw8ZFVXr7mdGxuftqre1yJjLbVoxXetq24PespDFYuX6Rk+tkTUsN0r5eLSo9W0g+ksOe4XlSba22YuppKbyzwobnE8fx4LUMKjWVsxkuVHiQFOOacdSPTaTIPgLF7bQfnOqL4gbhAeePr+h59FymUkg/5uqTdoRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+UHoI0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+UHoI0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF924C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722200753;
	bh=vwvPMDDRMZvWB79WZPIpUN6tLHi2zBia+QGxTqun13s=;
	h=To:Subject:From:Date:From;
	b=b+UHoI0iykJbDKMFf2uRxhxH9bPJc2sbRHFmoocCWjamTNVQ/8Nk/zWGLuFQ8fYLk
	 lbQXoFbaO8m/xk6CdIGjdMbPyVSw3jhkV77IjtAa2TUJbbHiByCVMZ5eFe/RQn5ghc
	 dPkb/PbzDKnWouHVpYsv/hFvegElHsZjNQus457z+8ZPVg2Qki4fnAvSRQ0Ga2qtGe
	 9nZCNewpRRsJbz0UtTjn0djCr5CAk96hcvIsWv6OZp6mjoqVXt5mVYVLF7WWzmCxND
	 UB15n+UqMDUAqqV2KTvnz+mrME0jazkNOxp2Bc3oLP6sMfM5tzKEmDqKlCWSiMC27f
	 CGpomPpOaFc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95186C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220075360.25736.3914108945496332734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163b1158f3159ded2c6b1d7af415d6b2982cea214f9d05655e28ba8b4b404ad9
Date: Sun, 28 Jul 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722200753
