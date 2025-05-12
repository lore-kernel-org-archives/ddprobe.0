Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34800224EA
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747024194; cv=none; b=CbMLcMnn1UVtNvzFKkDKvhy6yte7MEY+SSZfpTi1iwIy1psQzwlF0a945l7qNG1uiIZrQv197FAytr4wIO22Vr1o3uz4nQnNSWxKLui9bSNERdWll0HFuC3zje4tdJ5yy/kndpUPNUZl91N/4e8jYdet8c3qqiARYTHbs8FIZNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747024194; c=relaxed/simple;
	bh=83AwHugBizV1pUVFJIv4tV8ljOBWaVd/Ycc7r6bRCYQ=;
	h=To:Subject:From:Message-Id:Date; b=LMSGg1iOWZLt1nwDLM3fu25R8g7W/ZbXgab5dSq6mPbG9BdMjA3WV8nC1ItTgamSkojfrHAA8l2cq2eUi3uTLZvyUL5CCXEz/ZSYrhxaexT0z+rUfOV00afV0nQDb4UlkZo5GWZXYWZ6xCl7T2PWGoDq09QNs9lYo+tSBqEnYh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owsnNRZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owsnNRZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A450AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747024193;
	bh=83AwHugBizV1pUVFJIv4tV8ljOBWaVd/Ycc7r6bRCYQ=;
	h=To:Subject:From:Date:From;
	b=owsnNRZWxvRQwZPDk3Q2/wS5oW2//GnN0RNBnuK16mhzbznOCDXgp3EB4s+dg8wt5
	 Yudh9mAHVqNjmJ7e9BqGmIA0F0coCeDk4HrEBFHAIIE/ms0bHTTEJoKDSIaVjP/Gkw
	 kQ3tAG52P8jE70Dc/i0h6eYbiFK9WbrEbW4MXW252w0RVPOqFxnofDGMsV0BueMRG/
	 KRqqxat0MWiyxSco6ExOxMo58kdd0S9opvBLwXnqy2u9P2vyjUeMXh0Denm5jdOQ0c
	 FTR0Vi60IGfpj5JpaNKBG+k1bB2dbX3xACtrbUSKJjgzfadb+Irg6hA6pjsaD4935n
	 jUOP5c3BszIAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF2C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702419359.7314.7619452113771402730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bde047df9080f45628b2cf716cb3c63e459c199d9bf7e7706ac777242f7d4bc
Date: Mon, 12 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747024193
