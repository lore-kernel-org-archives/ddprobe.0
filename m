Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304151F8BDD
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746128394; cv=none; b=WQTy7lZekwUdOj8Go2UUANMKhebX5+Y1Zo/hnIZdLRQFrbMbksB4iRdFM81CyB3dpmnnOkaC3e4JOJ0fxA9MO4d8/ngtZxV5nQ/hmp8eDe6gSnoKGnx9N2u1veB+/7xRFxAXUNeQDZGO6SKJdjebydrKFBzJxqVT4WLX7BoH1e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746128394; c=relaxed/simple;
	bh=usnunrBvBIU5PXU22jvE9YRRCB0zB0gfFlRRAxtdFsM=;
	h=To:Subject:From:Message-Id:Date; b=kTGwtmugD3rnW1BIQNI/+p0AIvioGGiVAOTFGcDBd1SGz4zC0bTXO2Q0kH0tFhH5Yw+L+xfAK+y8WZZiFPelP9ZuwQb2AsNX8AsRttQWHv1M7VvUnH/pUmKiWldDM0DyjsFOLsgeRbOjeW2C0NdHN58elKTddEYLXHDsDpLyrZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxpltPfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxpltPfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE13C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746128393;
	bh=usnunrBvBIU5PXU22jvE9YRRCB0zB0gfFlRRAxtdFsM=;
	h=To:Subject:From:Date:From;
	b=mxpltPfDP/T1rwhOMxGThFpTND4/SBwLSQsLcna9zMXfEK1wrnYEKE8QaKDcaVQYv
	 yrGL69eLf68l8q8V7iv6UzYEeTIPmvwzp1b7ujShogng+VHI1OJn9yLO69tHbnslTw
	 At+8iTeYSobaPoCQYaD2kMbOAJr1JMNv1Y2tKgA3xSlRhwn5a2e7AjvpfcRtyb8QxX
	 p/vqB07MezxXuUnMqR6FqRCCv0CoqTDVlr9+NWl8ifuHw+MoWwQF+kRYxoIBUX+Yr9
	 0YcOyVBGSWuckguU/f0538+l8vE+l5h17IsAY2KRAhrZBOAsJsuE4uJUILilcn2Z7j
	 xVvKS4KlyzAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB90C3ABAA
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612839357.9118.949722035726013149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce4c6b27cdb6e36d24f55e35bb2222b0adb7b5c9d3ec5155990d3908f626572
Date: Thu, 01 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746128393
