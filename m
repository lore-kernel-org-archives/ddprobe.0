Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4371F0991
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756570194; cv=none; b=bUIcpYps7yagVcFOMd33MW8Ndk+qeC+XJRYLAP1Y7dr/UOxBe53E5Hn5eqLEnurxmvgsaZdDKBbZeeR07QlDQFe62LQmqID5ngZht5TSj58TwbPuuSVevwfeuuOH2XJi29Jtj6Ty/rjRV7YbALPPHqpH5DQwl2kGHokIbQGRDUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756570194; c=relaxed/simple;
	bh=NbkF4UUNPRk5lMrKHc42sEOpZvgW/wnS5fnJjVI4jKU=;
	h=To:Subject:From:Message-Id:Date; b=n6DxPNe5aSbMafdqqaVVvBmJfMXZd7rA/TD4zCOYNdkTSU9pCjJU9vW9gE0VMC4xeuF7A15SVwiPOGYP2DnA1k9TTukBYcFOl0TmPHo83/+DyLz7HzePy6R2vBkeOIiWpd4nrbUfaWhvLXcx7rvznI/0Pdc352wRArkfC/YF3SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2h5udr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2h5udr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756570193;
	bh=NbkF4UUNPRk5lMrKHc42sEOpZvgW/wnS5fnJjVI4jKU=;
	h=To:Subject:From:Date:From;
	b=o2h5udr9fYgIHuKCuYHiSWxoexiurWt9KLvVpY7fIhPlGfeYeR1tkXiWQLgImwsKr
	 Zt6B2e05qI/PHPswbDIJtiuawFmBkYBj/gANPqnoMqT3Yf0pxtaRF0yR7+GSq/kTQ6
	 +7WO8Tj9KNDlgCoHdyamXtcU3hhiO5c5ob+Fs/Nv2psyUvqMwIhlbkVH2ByjfvcKeY
	 3Ixs6ixnsAWgrgWaFdgsLTlTkDzOH0EywU3zI+7GBRczBONFm3S2wF5hAxkKumQY2W
	 E1kua7d6F1XCkb8Qzm8yvn0BK/VQaEqNp0dBqK1YzBv62u1kP7y4kOeRah77kmFWsJ
	 RgwZSDiHknMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F874CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657019358.32315.17519571038008352916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7d6a5febf94d3db17b3b0b3ac7c8eb1273b072116d09dc6a6f408188042f76
Date: Sat, 30 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756570193
