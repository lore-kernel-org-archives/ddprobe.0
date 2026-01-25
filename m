Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112601632C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769300634; cv=none; b=hgT8ooroW4FRTNud80dxdTPC79OncAhyNZEdBe1umA5938nWP3/Oo0m5Dz2LEfkQd2QULcYuWzYk4U7yLB8QdQJTktkpLfTK1GUkBMgn1pltZUKz6zY6mq1YOg1eIj1xflPvPE7sNwBIi5vp9EuYcmjg3n23Ern9zIaYj7KiYo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769300634; c=relaxed/simple;
	bh=gNIv2Qpbr1cblZlguofR4ibc/LXKsAZ0OQ4L4pa25zU=;
	h=To:Subject:From:Message-Id:Date; b=JzMa8TElhxjpkRztN99ILW7ZH0bVew2x4TlhNyMpQTlpS1VCGhywwJExtt+WFT0jUVhABfIxX/2LwqvGedx1rrFjf0wMCiKzY43m7DDwqSpXAL5fXsYXVG+KIs4446JESztFaBErTQnEQ/C3pHuSDLZqwgie5tX5FmADyi1pSpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8iAZaAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8iAZaAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769300633;
	bh=gNIv2Qpbr1cblZlguofR4ibc/LXKsAZ0OQ4L4pa25zU=;
	h=To:Subject:From:Date:From;
	b=J8iAZaAJCSyXRd+lONPYrsF68L1kJB5LjFFzXLaH9CPI7uQ0I6/zFau+0I9BTNkef
	 dd3HBcyUAd9ihq4P5zljY6CuToL6VxqqtjhUz9Io4cAB7J96ZLlO0AM5O6RR3Ct7Fs
	 TdtVpQnW+wrTtrMwMOf9SyfNA2nCK8NzVM2fAJzNFFAJWdRSRqxiGqpT0jQ2qIC1TG
	 X2cAKUx/MHNJKvpfRzI3dOSYub6+tCUOY2rL79W/wiaMMSKJhAmFbTgjg+Nl9gzFCF
	 Buc3wB2ZgQEHIp36mmetr+MIslucUBGxFbZEFrjmcM9kpSP6Fyn5SaJGuz6pyHX5IE
	 aH3QzA9ceEbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDCD715F8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930063358.9362.17724062413818439676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d7bc2bcdf7af178dec0f502ff5ac7ddacb9701ec9b8da1472aa147760cf0f9
Date: Sun, 25 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769300633
