Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A523173
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754170194; cv=none; b=jSFQdCnObjnY6lq9Elou7tHjIvgbF4wrNmH4FrHEQCtk6Wd3BwPfwNMP+OrU3IlkiFbNCWW0tlRt2rquzWYPSHlTN//a628voT8EOXXG/BFd2/NJ3u9Ng3CFwZAPvP2zVATUL0SaEnmdAhR8xBsjn1iU1lilc98RCbi+bc1mE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754170194; c=relaxed/simple;
	bh=YfLtE6IogMNABbbocKyBllcTgxmKkFyZiPopL6Gzqbo=;
	h=To:Subject:From:Message-Id:Date; b=OJVayp7jUl8uvjtEq2fOFbTRDbh73qrHiT9a3QEQPYrno4bjzhLEoDTDEB+D64Id2rgksVRgDIIDin1mce1YaJ8x1cCSvz8Xy7QLKZQQFkISf6k/u0zAmQI0coH6hMgbNJ7QMD39fbugCFnGtsbtzFw4VBuBua41Ydt88ra95jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHOhmYh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHOhmYh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F911C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754170193;
	bh=YfLtE6IogMNABbbocKyBllcTgxmKkFyZiPopL6Gzqbo=;
	h=To:Subject:From:Date:From;
	b=QHOhmYh5t0I4vIZ1M5PrWFw+SlDmMBtDPtYSvUfja6OgEW+85Zh/5WgIFnHptuEkv
	 Wn6TB9CvxuHKclNrQ5/xHHzbSteuTAsdUgyR1ac5tRsoAlZq33tzpPvtRoJ9S6prLS
	 5V/OGFjV65ebvuiVdklx13LMGmB9vFF1oDO4Tuei/JsIpK44BpDIsooU60YiHNnpHP
	 4/qLVKtW/9kpBkjFAbzFNyaWOQwtgwue8Tm0fYkJtal7aiHxT/sY6+bwuv+m+CAGLw
	 zN5qaVlnaVctKP02FqK4kGOz6qPXSXnFmCNxcr28CoPPtw/W4D8ELxV52sWsbbc7Pw
	 XTmnzuaOMpJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90906C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417019358.21951.3388025266536532569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e7779818655c3003c69340c7378612181f54c6fc7a499bb0087a087a23714f
Date: Sat, 02 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754170193
