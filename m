Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C902566
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756408795; cv=none; b=hNTStL9ydkn1zFmNyngQbJjw6vtzod+q17uhJUrGLFfgQl5zo+h/Ex5pwZE6hjinTOHFAG3P8/x8qYUdYiNth1nvghXxaZJj8UFvT5eCOwjJ6PnfpoV8dKHY86g78FlLj35rBM/VVKcGgLtj41jKCb/O/MT42SD1jQKpqn1SWpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756408795; c=relaxed/simple;
	bh=cjevjm5Y2GAabElKmSOf9fWZVbR3IaQajCipsdUVTgo=;
	h=To:Subject:From:Message-Id:Date; b=U32Le4bInvAU0U2ZffOSuCWLRTKF52bY5WDGnYB49Cx9oScxdL7G++ybD/Tw6LtvYhBi7e5b6Wjvm/uhae1gV9nvBrX1Fj8UiUYggs2uPtcM9b9OjiPR0WCHq8ACheYJsMsy+IkNBahIXS7Q5tRXvTQ53HyqT9MhSK/i08f3Ahc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eirRSRtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eirRSRtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E965C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756408793;
	bh=cjevjm5Y2GAabElKmSOf9fWZVbR3IaQajCipsdUVTgo=;
	h=To:Subject:From:Date:From;
	b=eirRSRtOk+2imI4p4HcwcrPCO6MIPzj8JJ8YP3r30kCwpXk3DrmwqcEleJVSbcHi5
	 IrGTS8vM8jK+sYLIrJNm0LHt2U/apKTeLBS7fAKrkLGGbijmNeQ7PojU/JwFZNHOMv
	 odjI90IoheETestBCL3uhvXZg4wOq471FoAneQXirziKYaikoxCJuhjnzrkeyHTpWa
	 nijkiTxsmErcvSQAScoaQPSOqi1A29gmZwrxQfFp7YIaAeOneRcu2fRsBm8KitR+zM
	 foESpL+Iyu6l8ZKi7kYiCxoDT2mZ+kKC58O5fXyutKnR2jfD8HOErEUGlTyNmxKhAK
	 3bZja19JnWrqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7ACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640879358.24740.17053214899386728893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e15e5b8ff36843acd86a9138ce022cc3f05cd628eef901845577d1ac9c88085
Date: Thu, 28 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756408793
