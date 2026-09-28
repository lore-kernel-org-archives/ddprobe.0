Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFA32AD0C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790561434; cv=none; b=kBEj0HouOf9Cien58cLecAr+PGJywOAYjicyCX30DAIMM8jn8VP0rge1xOiZUk0xX96pQ1793EsqMUt/xWxm/etGmdDmRFfG68b4TZHSIgKYEIxlprKfd/mDSvwu86pskonlYFliadQFx4bfb9Oi6h8bNw45gR9ATfYQXFTV9zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790561434; c=relaxed/simple;
	bh=EISixKlX2Pj/6WScbkVcn0+XllJQcLnTrGgRxA9cvTs=;
	h=To:Subject:From:Message-Id:Date; b=BOeq2/dTPjWvBZGxiwF2+Je8YQrHzYbX5Bs3u8BRtxUhxR5XG8YfSCFTpS8NBpMVnJ/cBeMHJzacNbMx9KcGZcNcl8DtznE+1qWKRfw098nq09P2DvncswSwIVlZdt2zjf+sKYBLXqAAPRW/JGp3ak6MWJRH1jYUTMYoqFmOL9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkRYPVC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkRYPVC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B69C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790561433;
	bh=EISixKlX2Pj/6WScbkVcn0+XllJQcLnTrGgRxA9cvTs=;
	h=To:Subject:From:Date:From;
	b=jkRYPVC+zZjN3ZPGHjnULojY5CbYNW2L0NIEVKBOF4nAPRPxX8/6suRo5EnnydHJ3
	 yeJBqdzVTkQO4uC1VEwgUdl9O7tyQmt6QHpfV8ad954CP9cnn4WBEGUH/gWf3E8qqH
	 8XE8RfuIxoJ1T7x1herMw9XOnNcFz0rdayXf8DSmAteLuMY5lMQ4AXDI2zyNtwypmL
	 7Kcrz5DWzdGsu647MoexokAiRuY71g1cBz5IEa3q24kCDdFR26YnuxlotLevUNci79
	 qWwFZotEzGzvqOkxoVM8f/s5psBy0w61X9p0fB/i3Yt571HUs7p9mtzNzvnBvYkC3I
	 ehsPtgX4KEdMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB0EC9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056143369.10730.11464308152545476014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60eadc5020e4d74fac9936c6f4ae1cb616f08b6dee96a1703b2d62abaf29f77
Date: Mon, 28 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790561433
