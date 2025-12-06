Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F5D3B8D75
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765035174; cv=none; b=B5lQ4N4s9DneByLbDZesik2dO4Bj2dPkZ2Kw5HHtuGDApgQ4uO4fHjDhjlkhXRr7Xv3jJJ2T9R8zPwBITJ1Xg2CiMkc0vNp+uf+6vvXxgHwIyQFNRZBkzINnRRMS3WhlyA9SGKKjSlqrHsxBPKTHFLlmqKDScQQcv1cGSi7vTzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765035174; c=relaxed/simple;
	bh=zessq0cF3UrZ56W73CMaPbR52d2jyThbH8HI0ViUv1s=;
	h=To:Subject:From:Message-Id:Date; b=lbHSLE75huD/ZYpU4XwuxK/87HsKJXlJZMnYNMO/Rmv8vXrdpL0NPW6L28eBIkM6ITnvC6EuNUOEVazOU84AUN9FpIGZdzYqug+HLrRE3SvW4hGqR0VgZ4e4/E2T+xXByT2yg7kZIJY96rvVkjpuJxOj/pPFgMrP78IwKzyueI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYjfKcV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYjfKcV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB356C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765035173;
	bh=zessq0cF3UrZ56W73CMaPbR52d2jyThbH8HI0ViUv1s=;
	h=To:Subject:From:Date:From;
	b=HYjfKcV4wOwvEYw74XrWwlfmPaX2D/srKRwuVeCSn2t14MOauDiICyRhAw1+xb5/2
	 JzLFplZUML0surcF/v73+biKEtfxx0nWaNvmsZw5a/JaaU+r+3U0VnUWgZgb/x6NFb
	 X8pximM++C0EJ0C1O+LPc9CMfLptbpqlZ+JwPyf+TKYl4LNvxmo9KYAisnEE7ON/bL
	 w7Seic1AqCFJ0cWKTPBRRzB7y1bUkpDahB1uwEZ5RCc2S5xflllqpBT391sVh1Xjd+
	 jTW4DexH86mlgSn1hg/8gacs47BLiTHzLGVr8Ema1NgNmTD7+A/eWe8qiZeZO7hdGt
	 cWxTWFYO0ahNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE8D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503517358.20550.5012198284647957613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6ea44fcd53b69e1a71489df53f7e551e563786347241d1f74a03d237458d82
Date: Sat, 06 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765035173
