Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A14249EB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757474994; cv=none; b=D/FP993UXDAfVSxil2PXDTSJw8fAYDZLqR3NW2WQwLIBc8DJ6kHUHO52SJaRnOuFl/TjTzqVBt6JPw4//v0s2G07WoiGaRazqG4q+v03wm4vThdg1ewAEed9fubufTmI0/EXJaI9fbj8sYF1RCzK3Fb2+qIedgwRb1Y6MC9edbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757474994; c=relaxed/simple;
	bh=DkWny4mwKhip+Az3PnawKj3AUsqGA9xiZ5QRHU3ne90=;
	h=To:Subject:From:Message-Id:Date; b=pHJvxS4w+UJSrH07CvI0huSOApV++zcGZCTeBMGOKWsrGifusYP0yWOgNHslmL6iW7EhK5coc47pW8aseVMFOMlgeoahggQn1pANZ2CU2ylVEIJetiOU6996KdqXTHDMj/Li9wTkFyqH0TGgJY7LBHkIUiwpI199Ph6KEf7FVN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuU/noja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuU/noja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F61C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757474993;
	bh=DkWny4mwKhip+Az3PnawKj3AUsqGA9xiZ5QRHU3ne90=;
	h=To:Subject:From:Date:From;
	b=FuU/nojaydiSubI+Aa1w1Owl5F8x3o2Q6Q9yXWQEsMizrsix9MX6ZHnxri1604ROU
	 WyyV6A/RmOcxh4wuSK32WgkOomU6L3B4vFQkgipYtDl8MJxFYTmIdfD0nch3w2w+1V
	 58G10VcWy+iqCD3lrrS5EdV083ukqwGaBVp7Od84xkXqSORFTUU4RxO+OYPODKcNs9
	 oYYFDhIigaTgQdQEKrQYF0rpoX9FMQ5rpgSWnwnqbRrcUDRVN7KM6GPJKfgY6V0Stj
	 rwHhjvqf81dAYH7mHl4WJKlc2b9AMQTtLSxyb4zWaW2mQxapiLhvzoDYA+uRlG2Tgr
	 +1ftXRl/DdKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC9CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747499357.17790.2197762230113021070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e313e65ffdf037923fa0aff6dcee2ea9395bbd89e4ca96434872ce5c9390ba
Date: Wed, 10 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757474993
