Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABCD341067
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180034; cv=none; b=N6/6bqePJIYk8KgWwHudrLa4KkgEJf370ZtGyTlWnlvIFN3i5dOSF9ajg8MA3TgDAudSSx6+EzGdnFMawt4TjUdYtl+cbS/+hzVGzEZX2/kI5DHQyqnepJedd0Wpgy4UniUMygGSmgl7WmLyCdOoh7Tvegz1lxAW+jptexYg9ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180034; c=relaxed/simple;
	bh=pDuG6hhGu2nurvuWOYWe8/nkfVcGq6NsbEGsjcQp0Bc=;
	h=To:Subject:From:Message-Id:Date; b=a1/wOv/V3ESP7ptxiTxcUU8hJTAHunob3hXug1gcKAveyv8zQfBFftYtZIi0rnbEE8z7K7jbvkryoP9h3rCRmv3PsIoNmTkgvggxYEM2CD/yACrMPR8sg/tcg+klggFbdW/yK1SXGMKre0/hbzYLEvA5RmJOKhi3EPKskS5U8b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlcMcScC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlcMcScC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FCBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766180033;
	bh=pDuG6hhGu2nurvuWOYWe8/nkfVcGq6NsbEGsjcQp0Bc=;
	h=To:Subject:From:Date:From;
	b=YlcMcScCLxysmK5L4kK1A/J2uRiTLgAOk8f7UxbC8cTI6e574TpBIAUeSKSxD9Zr3
	 X2BX88lIB3ruStXPpg0YpC+NbFt5B6FWuq5iro7tiVqldmjU1mSwCvHPoc4ArHlEkX
	 BPNvBD3U0gdAiKXfP5ay2sc03JwVDJWBorZZicRRkV+69/Y+SohIoq3MbV7gSh2cao
	 1Bg4GcjzN4QmDHCTc1rxNu6ij/bPcb+KCY6NQ18flxt/WQgUjm+Gt1TwIFQdshG8IE
	 6bEDDzUvKpmHM5IeHMfSvk8UyWKpsudb7qzpQKtgvazIQcD2pX+Di7ZQPckTRn3nqz
	 dESTmOQQuk7Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968D2E66884
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618003358.576.11679435865206521334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe00b9a608fa05b2d775acb62865ef72562c1059413dab8d2afa6023aa7ef3a
Date: Fri, 19 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766180033
