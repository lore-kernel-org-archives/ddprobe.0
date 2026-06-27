Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49423340298
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782567514; cv=none; b=syfx+PZJzTFnkStCIKodMVkXD3P7Op9gTTLUZ+V/968k4SPKBib4w638veoXbMoK+/O8dqK1oFcmNIKD29jjsx0pSkc5us2LqE66JP4lqW0t6AQNHGk3pGRBiFdfV1Af2WrgkBcMXaGson9OfzLSsQvAqJktTYyuPVa3czWmJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782567514; c=relaxed/simple;
	bh=Op/2Dr/EFOsUV4mPhcPrQoG9MqO8eBhdMwwHm7VR1yU=;
	h=To:Subject:From:Message-Id:Date; b=likuKyyT0Wg3S47ShZDloVX8doCDx9V7BEE9uw+ru5tBYxy5TRZhRW4+IVDclfFTUn5/+WghxWNKJo/ABdnJdvvTNOmaMIvxTodgZ7etT3h0ta4m3BWuGQfpSVOXPz9Pc+JR8PiJeba4ir49f9L/Xf+zfmEIcIdA5o6pChZE7y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OA5hxsh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OA5hxsh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF33AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782567513;
	bh=Op/2Dr/EFOsUV4mPhcPrQoG9MqO8eBhdMwwHm7VR1yU=;
	h=To:Subject:From:Date:From;
	b=OA5hxsh0PpkzO1t6HuuH23knDrPbzv2G69TyEIMRpWwFzwjFjZmzJbj6ibGCAjqr4
	 Hp4eTBZe/Gp6X5iolNMyz0OafTY8FRSbQvciwL1lrOMZUnKmv/ezB80cwgK4nBqZeO
	 gpk7leG/ZLybPamIggDaPz+PXCoc19teFbtdoPuY1PeLw//GwbjwitAnGKR2A9ISJi
	 5Y34KMxCTWkW9W4tL8AsRb0gvsYo61oOk+6LDrCMEpELBqHm0hX+GN5lEvbcpH3bvY
	 KRp5T2q4yYdGoO+l07AfiuPaR29CLm+T+icfBvO8AdyKOZZSdsPO2X0CX69o5Mqbmd
	 Sg+8dQwDAIcvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA07C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256751370.6945.7573835494304294550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004b235c2a22ec827599954ff285b672e39e778c6e60629479577ac2e4954870
Date: Sat, 27 Jun 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782567513
