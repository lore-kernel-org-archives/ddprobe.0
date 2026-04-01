Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CE3296BCB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775079334; cv=none; b=VpcT1H/dtcrN5HqpNrxHB2cbP0JK2YnORkfFhX8cZUL1OzsFqgAQ4iN9Q41R+0VVm9GwAK6Cd9rdpqDquDj1oamk6/Z3ivBrWR+dYNxwn+HoeUghS4DSVI/zaJ9J6g04QrwLOs3sVX951SYxvkZk8RmrZXliiFUILl3+4G70BWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775079334; c=relaxed/simple;
	bh=4Rt93GVbwZ+QmvHjysx5PI3IwjQXwglusiuWl8MMN4U=;
	h=To:Subject:From:Message-Id:Date; b=F7wE6P+Cg8UngAyI8UYYLijOhdinbaCslQXCQNPlGRUg34qORAQCG7rdRhkiCTXG/0POiECORzn0sVSu5mg2Wjpppsasq0tptUBBG3GWVeWBlWZwMRgmNH4myQYKXEFXb0oVbYh3d2u3eyYfUFlHozqDv7b4QPVG8cTgHLw+3fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgSSnfs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgSSnfs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B5EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775079333;
	bh=4Rt93GVbwZ+QmvHjysx5PI3IwjQXwglusiuWl8MMN4U=;
	h=To:Subject:From:Date:From;
	b=jgSSnfs4yz+mfooJctz+aeKsaf0D56rLi5sudYIRBthlBohoRgz4php7gu7S74au0
	 cIty9IPaevaOIYSe3+h7ksOpxLw49JCqT/OtOgV6ai2LfUatfirz1HGWGh3kxB6Bd1
	 aHLZwLT/KjFjyO3pS+1kMwd7c5UBPK66uV3M4bJy9rIqT8eR+AMT7xsSlnVza4fZ+B
	 kZawdPL9Pl8c7K6ykarIdQkdSsd9IKthMFIjxVXN+n2zxNUGggPXwLDUE6jMvKpy+Q
	 1uzTAI+OdBM5MbriKIYIHYIC+4cUQpOSLUH29FmgThQFieNTAtqCf7phyoCfthCoKY
	 9plvk93MXh6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B231B10FCAEA
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507933369.6227.13772570245202672856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97dc498cb7e3cd596b6e2aa2ecc4ef1436c8cc9773c4a80cb30cb128d357c26
Date: Wed, 01 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775079333
