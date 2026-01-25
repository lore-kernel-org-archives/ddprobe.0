Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123A01A0712
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769360634; cv=none; b=YB/jiAeSoU/+sRfJMaGVwUvZVg73NNruU2wg96YqUm/f+zqENSzqIeQzANV4/c0G8CWPpXN8sKC/fd5unzrJbxMA374y7vQNmrbCojFFwPbCzFcFgcbPYifNfM7dR5aaeoaCLS8fX1TaIlNSZSPEvtc7bwVnnFVyyKxuC36rmxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769360634; c=relaxed/simple;
	bh=gxLCMC5gEVBSGVc1wHIWp53NajuVUPhZQ8TewLM/7Mc=;
	h=To:Subject:From:Message-Id:Date; b=N9nXalea58tdMFDHOy2MC1AtMnUHKC0MltXggphiS3wqz1UAh1ge06clE394SgHWcgDCPagOjAHH8t7SDNCq9LXJ2Gf0ciWOZx8WCDXR+7rnXmOsrBU4NSTDr3FJoDM3yV+AvWIqo+leOJWMrSAh72OZXOwq2Q9X1aYEvp7P6iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgWoNmTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgWoNmTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F6CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769360633;
	bh=gxLCMC5gEVBSGVc1wHIWp53NajuVUPhZQ8TewLM/7Mc=;
	h=To:Subject:From:Date:From;
	b=GgWoNmTCLUIvn8PGZgqwTDKx2/aF+i7dM12Y4ZkszqVv2Cr1t2u8wnbxFXqMsABHA
	 XrVVRlR0zasm9tWgVBoBWs4Omzr4OZdO5oo99dowIpEfpYUX1POjTFnl9OevOomx7p
	 purq5fIjTsI/E7qx8VbxZWW1svfkGH5RVZvBABARz+SkW9BM1cwGo46JrL498Xp8xg
	 APwaeujsl9MgZyZMCnLg6xUB1i3wbmHwBrVtef8eVw9N/LLzbo8VEskBcyB9/9+/Qk
	 GrrMlWt+AFNyX1iBCALB0xdbftHa1M9X4EJNPlS1sD5BhZ1vFhNifHpjE10NQd2iA7
	 VCJUVDPNZH0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96807E63CAF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936063358.7275.335604493530965651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc902a52d6fd476a1b3509c4879f7772ea736d9b807aeae02e7f653db7cfdd2
Date: Sun, 25 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769360633
