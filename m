Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22666341AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752670194; cv=none; b=JDGX1aP2unKzsq+ucDXdwlYEukBkqLKghpUXUdwU9EllRiQdotMPwB1xnM0c0PxgjtKQGcsOBqLA/ryu1hGyu0XO8gjW+8s1FcWh1vaHu68b0U7PbPfkWLS3T+izbd1IkW7+Z+HscoB7Cp0Db+koKJqka46N1GZB4yIY1DsGk4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752670194; c=relaxed/simple;
	bh=N87q1w08BFH0kovUgEVInXIxC3Q3yVpTugxY4nigDlI=;
	h=To:Subject:From:Message-Id:Date; b=W8b0FHCZkX3jdQA+t0SCS1Htt2Wc7cVaYbmk/zlGEthdpyXu2p5esOUUDdse875eyVyVZ6MLJxeraF7r293hbhQFrV1bEbmrTlt5jWs57q6gTNLGlBkFXAGciYgS/X5OCD6BMzq+NftxHpns7QqlPPJnBof/MIsMLkoIVoeJaVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZ2Ybw6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZ2Ybw6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752670193;
	bh=N87q1w08BFH0kovUgEVInXIxC3Q3yVpTugxY4nigDlI=;
	h=To:Subject:From:Date:From;
	b=rZ2Ybw6dA+W/CCBQYHquVcmpHQkNdDvgfAawwevLwAtwsqEGCu+7Tlt9VyWm4Y6FC
	 DyKMCNF1k9Y4vME9uyAv3S3kJ66YRSb/UJzhJaq2lFFWkRze2idjugRBrUua+Ysh+i
	 gQCexOAWGqjuhM+YWz8vXeH17ZT+wkK3ZtapVMKaSqKWs5m+ciOoOTZ3hi5pSce/ax
	 YERaViSpimVgQPCxj2pMqI7GYSbdbiVWl4qE8Z9RH8D4W48nNAy6anmJxEZXWx5gtQ
	 qe8Sg8Z2Wm3JhlwPOhqlP7nIAe/43iALeV4gsOohlTZCelDhPxDeFS2isHGcOJlUIZ
	 bIABqhf7qH4Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3DC83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267019357.19595.11417990040062655776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048da49cf1c036b996d0e44db5fe312831de450b8082fdbc0b3b7166980e616f
Date: Wed, 16 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752670193
