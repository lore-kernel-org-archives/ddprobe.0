Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D254A24
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714866143; cv=none; b=EbmeJ7LeeduDCyczIxxGzc45aPmvkT36H1DnlUA7xio9VUgrQwQZL20D+bQErmRF7CJV3tGl8oyVktq7MuedJkcnp0tIAFfUqKGPqQE1Bf/9TgXeSX173SxWVz3+0qLn5z+7glkMAF80b+Wz37A5fdTyURRJPOVotIy6G7JnOE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714866143; c=relaxed/simple;
	bh=2XPEOX+Kr6EfWmGMSxjgyUd63GBZPoMqsieZlCImFEo=;
	h=To:Subject:From:Message-Id:Date; b=FTq9g6kipQlJqcDHFWQMivnjbDoVs1yuH+1Eh/ba4WwYXSVl9ASrqRzbICFctYboaXtRIKePsl4oqUMRzSYNmX1JOWsbjvtRbKeZaFDoT7ySI5YixVu8FmFxOvusGTCKfbSl4/JqNKnBUgsiPy6mKvl+ty3xjQT8sW36u8yxdgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNjj3ioc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNjj3ioc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEDEC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714866142;
	bh=2XPEOX+Kr6EfWmGMSxjgyUd63GBZPoMqsieZlCImFEo=;
	h=To:Subject:From:Date:From;
	b=LNjj3ioc6yCKrVLoatEgoZHJZ1wA8QkjWWnkPrHeQmQMkak6vFxYvG41w+0P+ip0X
	 S6KxuQXp6ThjxkR11HO5kZfB2b079MMfQtqmtjKR2ZdY9RnA3EYfATQtJCp2ZHEcdz
	 dENy4f349pergG8do9ObzW+sGdz820g4234givSOHIjd5l/+uwvDBQ5/q2llAojKcU
	 0a6N9qgXKtAwVGAmunuBn3kCqjJhqEG7AxI8zNdtt6ts3WELkY9Sq32j+AFQTErsLz
	 y2OTEgEvmtfV/ZAXQRTdMJkDPXgvCGnGBThVZS127A/YyC6UZNPJkM9XsFeHzjI+b1
	 Ui2I32EiLi/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFBBC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486614276.18671.11393695988924745865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552b8300ba5e06aa9145e23975938dbae56df7c85de21db1e5dcbfe7b007cb69
Date: Sat, 04 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714866142
