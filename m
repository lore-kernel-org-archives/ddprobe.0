Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E9B16DC14
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720719443; cv=none; b=UcXHNcEZTU/Ewx0bAAaFs83PaSjFYwPIQKJtG6i70LHDZDilUvi+Ffb4DdCNmTHOgwjTQCAwarPSbrPDjcQ9yzJ7nuIFhshEN8/zVxlabdBFCGLwjFNqssaDsT+PoRT43RaDucRL6gBzdR632vy/h+ggszbw+0+01sA8/7975FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720719443; c=relaxed/simple;
	bh=ENEd6xUp77yk6H+gFWNSekN6sMa4ZO2nv8QfjSdmyvc=;
	h=To:Subject:From:Message-Id:Date; b=c12LpSlTwLAQZofpNLDFWpt5NN0YVMxuSaT5M2mI/jdCceR4m7VrHpoRoVYuzduNx1Hqncb/16bV6BIS/8duvrfvSe+zFrX8Cta934BvbR6AHc7nEq69fQuOcnfTl8lNy0gJCSzwPuc/VLUq96+3tz8juV8mGNlURpa2hN0hNYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DleI9iv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DleI9iv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BC5C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720719442;
	bh=ENEd6xUp77yk6H+gFWNSekN6sMa4ZO2nv8QfjSdmyvc=;
	h=To:Subject:From:Date:From;
	b=DleI9iv5KPaljGy0W+7aUXaMa1u1vOFigKn8MbRz4Dr+HRlfAHOx1iibtMHikMzyR
	 8Vt0c+SuByyNPiqn+AMeFnlDteF/c+TxB/fXQGqzuLiGzi3DZ4HDJ7qrsf5e5g9m73
	 2b3UyxdKaPJdQfWHXNbqk/odppVrpmb+3UqgRzpZusEcpfBbsfIWiahhLi+bA5BmeY
	 59MnbkSPk9pZnqYJek3Q43XPfJEYG/k1YX2lR8YdSF9Gj4g5IB90dSJb8CLjzUYZJf
	 jZEacj30d8+kF3iALdvj5Noi3yWQT/No3jzRKUZa69gFtWC4ylHUsndfCXaLQpB9m5
	 220Nb1Id7LqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39FEC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071944279.1113.9299068395849687690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0a5ae3f2e36e903fd6f63480a652a765412ee7e2390bf2b1fc035314400f35
Date: Thu, 11 Jul 2024 17:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720719442
