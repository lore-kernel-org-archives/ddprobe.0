Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750922F851
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789791634; cv=none; b=jaaNULb7m65yCkLzyQ15ISjYEuexlIeNIZEF7aLwda7Zv8lu5emVAkjKJNvDAYSfkopOEdPMGE/ZS99jzU80AZypf5l6oqe+HcDIa531f6mHZqhovl5NV0Ac6ybbElmvzAWKq/wSoYRyd1Eks30Y9zXyaXJ50yLwgHm9RrXYST0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789791634; c=relaxed/simple;
	bh=vF42oLn0HJ4+WmJQdw1fGm6kU3xP/hSRox1pnrwia5o=;
	h=To:Subject:From:Message-Id:Date; b=L+WgE6HWDxukD4TOQUM19SimvHQjQ3pf4kukEH4UEP3/n+lnnlhuH/BHOW5QB2eagCdnMQWj/27ijA9tEZ1Io04358Ad7w6Sz8Yju5piSjoMAZB+Qt2zJ1iyU2QALYmswsWNiukdXK9DXLQRZjoE70tFDR1LVmoEa4WS1U2XjHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/F4XYV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/F4XYV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E519DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789791633;
	bh=vF42oLn0HJ4+WmJQdw1fGm6kU3xP/hSRox1pnrwia5o=;
	h=To:Subject:From:Date:From;
	b=T/F4XYV16CzA32dW8PJdp8yAGFHhwA5dd4RdQVSfgv/fUQ9SpNFiHVBBAb63ischw
	 xTrGiwdV1L3BSREw2pkUzXnX/6DJEWgKrw+RG23dtuvJ7lPml5IscNS0aOocJCLOXu
	 hJ+ySini88Rtwek3AjvLp/JaR2N5usJ0UG4FmUD4iVTVBQMCnlO51gbFh+/RiLffHy
	 4/5Ii8LQdZmxOr7noSA3nb1BHHrE3UX9gByK/OcbQoCXL9LuN2o4Yqig/REoGeTfGY
	 /Bvx5qlSvpIZAJF4mO1tVuIPd/1p4AKeQ6q0RDAa8JnQB3m6ExuXswhjuIJR4trmgH
	 utb+QJG59aHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CC1C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979163371.30320.13897129880887445792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88df5a43b892b0c33789d8154d6f10b13fcaceeb1dbb02466e29d097ba7bde0
Date: Sat, 19 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789791633
