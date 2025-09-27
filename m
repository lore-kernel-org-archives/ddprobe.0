Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6EF28D8D1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758979794; cv=none; b=EZ46GGSu+7ph+mH6iTRpKFCn+DrN4Xpf/ZnUlk58+SRp2vobCjouVwhr5vG4dzu/MQtnyHb8hWzfrY10scRtXAlAudH8198UiRodcOdojvXvnL938iNoax5gjixbpbMzOihx00XX70J+ESNfiMuOS+wR8X2sYy4DtvQjlyeQkdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758979794; c=relaxed/simple;
	bh=3lya2Mg/z8fE35sJnLUGrWwt83c+9VXKhscPFJptD2o=;
	h=To:Subject:From:Message-Id:Date; b=nKTPqttVBbmC9YgTF+2o846BM8LroDg4JMNUU44cWcmc7qZSBn6f3ubPrX975k9/98VFYiVEPMB9h1KdS4wd75OJZNdU0Kfy2xh6d18ICc/11aJrLUI1Fz9Fik+YzssoQ0d/58SmXCbSUHwFyAZTA6kAVg4tYYpSV+4jDGgJal0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umHWvs5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umHWvs5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758979793;
	bh=3lya2Mg/z8fE35sJnLUGrWwt83c+9VXKhscPFJptD2o=;
	h=To:Subject:From:Date:From;
	b=umHWvs5DwYwbafoNNdTlH1vCoLkjGiFZ+wJBMqk64rF/SF6szFpbzP+xjkNtMqYH3
	 uGRDPyE6VJFcOJXFCX49TdY+2pAKOU3R+HoOQWu58SEWSw6fU5zNMWbryFr1RYWrid
	 jTAxAEEb7f7Ztca7qSKEX63ZD9BGMNY3b0FRAaWUFbSi0hCykkZ8UKNeyHzRGQNFQg
	 Cu+pdgZAik1+7iN2GuxW3rQPhaxWIJCgC16a8QrF9EWT6hMnkU7bCbjQLRxSfKo6Yj
	 RWZ/K0KSx+QRPJpcFY+yqVUbYakzZpiMdmWmULtXeE6mkiUz8bKvFml9cIgmq8dXd4
	 rELMVROXJPiaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF0CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897979360.431.955304334930626523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8e20e932c09e779723735ce018da856d9a2d0dd109fc2ef04a1aea72af2f11
Date: Sat, 27 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758979793
