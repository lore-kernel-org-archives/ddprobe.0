Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE6B8BEC
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750130394; cv=none; b=Vi8BU23ZrWZB5lZh3LYLN1wfAFmUpoms29MHOVOusQHjKhjRmGzJl4GI4SOyZj7t4DzPqQYm3Q7mpl1SqKHumde0sa9Vm7dpFPtP4Zw5ypvGN5BZEBARHxRZXPe3Cjl9WdHHETDROlrSTPRxrmCbBTxxxc2HLYnzlJxPD2W6BRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750130394; c=relaxed/simple;
	bh=UA06GGWFHVMAcVRe7HDe3A1mxIrMBAVRGYkv96J1ajI=;
	h=To:Subject:From:Message-Id:Date; b=oHzMohJmtZvsV+rii4cGFsXHINu+slWEUobNK895aFKBJNC2DUPW3YY5EaH0DLorcNQrRBeMwqS/aTpcLPLupQS18sqDk+wpugow0ogsgXsm1ifSyHZ9xhk9ng8QctCWhVNLkqepphmAuw5LXd0Zpql3fxyCqJvieSOl+Xd52cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogq9uW09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogq9uW09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FDC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750130393;
	bh=UA06GGWFHVMAcVRe7HDe3A1mxIrMBAVRGYkv96J1ajI=;
	h=To:Subject:From:Date:From;
	b=Ogq9uW09exfvvy/8egUJ2vvrf8MExa2qutWQl9EBZPJ0TRbLzwV5yF8X5e+a9wMXS
	 +U9OF5Lq9pJgq3qCsOQ7+t0YHrSOKiCqIPt2qz0SLLbinEOhzjVtofj/lPoMfrQWir
	 sNUmOtq2ahNXrn/YWvc9QzhKRCdKlrRY40FoBBZ/nVemamn7X/XT/PSC/4OVVHwSFu
	 ZUNp31aveuvzYUlUAyp1NrzRFqQEQm5BTqQcv96Xr+5+DOa/dXHmLhiHSMotdeutRA
	 Ccle8XFXQI6KAF6fozFF4Do8NT8G/KyWu/YySeqvTLe0T+twEMwZeHqESTLtfWW4R4
	 v/iRJYvLZiQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91236C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013039358.10396.15948180504122367722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8603cf6bb4c080e27dfc18054f3b4135f9c7c5f24f663224566373562a7aff96
Date: Tue, 17 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750130393
