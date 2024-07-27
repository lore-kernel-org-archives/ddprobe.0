Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310AC17E9
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722049554; cv=none; b=uSr/yBFqNtmxHmFL1DPtvBnbYZdnQ98+I7pARNsNb6CLtJuTSU0aAvR64xmMyaQxh5+f2hrrCsVINvORGFaGozgOa/yf1ZHDODw3fKrjxXlU6TbtNIGs+tp1oSixu/O5dbZB5y90Cb1D7L07soCo6w+5bGa/NNsudcebQ6cl+7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722049554; c=relaxed/simple;
	bh=JVp3xcvPWNJZV3TpKPzVDSrGDLivEguLIJkDXSUrCSk=;
	h=To:Subject:From:Message-Id:Date; b=m1UVLAzyO0Hzqf5v3Q7bMSOqFORzMYqBja2qOho1EIAhyLrONuaVz+ghR3Ygd/O/xBfIfp3CbFEyuStkumj8lQpbiJTqxU0gFUOkrBZ94lPsAa2/NvaLP0tPgF/kIHZ52DKoJrGN9vdOKFYWYnwQbkSiQUY17T3BQD0b62Bi+xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZwMHNQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZwMHNQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC00C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722049553;
	bh=JVp3xcvPWNJZV3TpKPzVDSrGDLivEguLIJkDXSUrCSk=;
	h=To:Subject:From:Date:From;
	b=LZwMHNQ4DrOdaBE2Sf8pWqrlXhrsSWWa82jSCQrTi43AeaO7F5ol52Bueij02gGqA
	 iYGpTijiJ2c7uY7te05RejabdDIIYSfBLXYobOqfi5/LpJdPtOasPFp3tL6kXgKMVS
	 jMkDxGEoT8W+0Zb6WV6iyx6MoQsqokS4TYcHNP0toRgh7SbSr93fN+aA11N9BOzxEk
	 yp+C5WUYr5EH5bW1ekLV4ZQBRW5uLwklCbVuhfexTXapcZ1p6LNjikKrjgyoaPJftQ
	 MhRuPvUfZVwjcT1/weVTdA2S2kjN+e/imItdWcCOkfoLACqgFcgiqXAZJimNK0cLHQ
	 ROd98m7rlE1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98766C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204955358.773.1475485697237369521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a566755b7dc400dfca210d89fe749d655325097ddbf98675b3b3a4bdba35a95a
Date: Sat, 27 Jul 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722049553
