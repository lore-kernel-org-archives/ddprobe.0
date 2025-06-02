Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0F2C3270
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748831394; cv=none; b=MKB0AKdFXMlc7n2AZQnDS5e4lmhvApNcehxgbYWRYhp5LpixaXYqNCcWTYZ8NceplvmakXZZe9GLhBbnOB0K2GX45ZyZEgAvoe76H7sODqir/+OcDzRlFOEMYXT5s2jVsZcsPp7P/X1YL1fObF6nfGZTh6xRmB/NDLDs3XUo8MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748831394; c=relaxed/simple;
	bh=Yb064ISG91ZJAEUZEvDpcuA3D4F9QXN0IEJu6hF5E+c=;
	h=To:Subject:From:Message-Id:Date; b=jU7EAjiqU+zeyFuL79nfvt+MB8hcfsnBjr0xRckd51DZJaua36yqCPGR/3in0VqbrD//pf8qDE+ucTuJ57ZzZO8jxZRxAx+dn0HMYRPd8AV62akjEua46heA8Nx2KA6yCpE9jy9UEAP1urEkmKSzV1c3EUd+PI3wQUu9op8SvFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMk/cClk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMk/cClk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6914C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748831393;
	bh=Yb064ISG91ZJAEUZEvDpcuA3D4F9QXN0IEJu6hF5E+c=;
	h=To:Subject:From:Date:From;
	b=FMk/cClkLMsPXb1PZ6rSCgJcLPOkhDaaYrNGLriUi0RxLtbsHsW5s9TL0e8ZLfR7f
	 SFM1m50QhRx0SGIxRldFgPqNrAHUBsHMVBT9m0r28mLWJUCVcpuIa+DHTwuCHv8v+0
	 98B8Oa4V1IzaOczHVJGdTSGQtpThMxL9wnaD9HESBBMjdDewU+W6+OX2054DWM30lL
	 LDlOGajHTvQ1SvNLdY6zJbjnbpT/9HOF7JdAsUmEI/U9Ms1lSv9lGXB0JxzavOlm50
	 1vGcMMH+0CUfWIGNM+nS3Yg7FxXJ7PyiB0vr6azQbnepBlEiB07CcntBktaS7AjJhd
	 8qHWJjikDSVfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E1C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883139357.25558.2662822300584909688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d87a58f2ce8ca56d5f970af2e96818ffbdea1cc402e15f4a158b591956c037
Date: Mon, 02 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748831393
