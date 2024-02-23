Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD09250E5
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708678697; cv=none; b=InPG6kJpvZ4VeQjiryIiHNvAHsB9Z2TnrAklRF+AdBeGJacRPb2haqo9MjkH+fiYPi8XCiPbbtcr5pA4TaGA7jypAcAqusNOrxO1021rV6uSf3tXvebOq2wKgs3oOIi2SZmOeBsHc+HueOveCrReu3rl3slrAKlPfiZoIDeQUH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708678697; c=relaxed/simple;
	bh=6kNfX9+y2MHEQam+/y8Jj+9kEK4ay+YY9H+7AuiV0PM=;
	h=To:Subject:From:Message-Id:Date; b=bwJuqBn2U/FkduIabrAXVpP7n+KVbk5LxNUTIMdL1O6vApKmMZLPrGgnSY5aRn1nCcBSn307Yh7lLfSEkGc89yi8wZwhFcwoWg6DW+5L7lvCexvqzn5c1Mhold0J57xXuVrIsS07rjbvLKtHezupzK0g45gqZsmggSZ04zxFnSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQbvuECY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQbvuECY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90A5DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708678696;
	bh=6kNfX9+y2MHEQam+/y8Jj+9kEK4ay+YY9H+7AuiV0PM=;
	h=To:Subject:From:Date:From;
	b=GQbvuECYverW7txibGLvdZ531Yg6MEp1FOYYLbmUbCORdBFCHV7vCgrv/CS/3CkAR
	 nhXBRhJ+YcmtQrZp1k/nVxyZHozUGFHgEREkwcgneNu1p8rhRVhmpQP5JUmcyUj0CL
	 KzkWLBFojVLe6LSILsq1IKzCRNCognJGGDEA4pQyl+bHX2nnO8LifcN21LAQR2DFx2
	 IKVgMLth65OwIyhl7+k9tU60BD43atXmdSqzPgDX1SfGoIO7Fv12v7SgIwfXl8n0Hk
	 75pOuEp/8B6Nc0/FsaeKr4GA/EAJJ5J28pT2Z/orXVLKaPuQ5ohczPwXsDRG8xW+KF
	 2KaTZAnXsolWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79506C48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170867869644.26177.2046563231409074435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89098045bd66ffb76f8da0d4b40af3888c2c1591bdbd44e60cce88b3bc93dbd4
Date: Fri, 23 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708678696
