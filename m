Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A137247296
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749857394; cv=none; b=t5S+dTtFF4nvw0jCWEj9ZnKU7lyNTsRgQfVjj0cegkR00FCDnlQSlXDY01gov/8LoYxid0TgEG61oSqQDuksn7cK8bAm/5EMGqEQ81IvivqPi6FTNpMX4Gv6xBtSnBz1ComBLAq0mZ7Jf92sYTvT2HFET1D2AtJwCpIUZm1xk8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749857394; c=relaxed/simple;
	bh=rnK77JxmzI45TZ1m47mlLv4gwkkRxacBrLLv1d+toPI=;
	h=To:Subject:From:Message-Id:Date; b=EM+gpMkM9HprEvqmTc/RUKyTSQNHID3CfdUaQfcEOFtpDhl8uVll2q8d0D4tnAwatqIK1S+NhNgeYqWGypUwa1tI/ni3QqfF9tEnm/GxMKOnBWlqsKCZ3SAk4+7hGfMJxZnvhxsz9zoHYD+I7odl3EPj2DIPA8UYi8P70tKeJDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnUBTfWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnUBTfWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749857393;
	bh=rnK77JxmzI45TZ1m47mlLv4gwkkRxacBrLLv1d+toPI=;
	h=To:Subject:From:Date:From;
	b=AnUBTfWXULYc0EATJQzqwjJO6npkRKhZy6Er7SMY/KF6PmCcCL12DO8T95Bn3aRLZ
	 63RfDmNOJmU1fopu7tr3CwwCdw5S5x8HL/bEIjV74xas/vQWjWsvabQdiT62EOdEKB
	 KS6gDlV6s23n2DWFvZnVb59RCCykEmadgNdRjaVIoMWra1heeQX011V4GbMCwdeVDs
	 6g0moHJp/o36vmFxNewWNnVt7ibadwAjdX0kH5w1c01lWt0fuOyeEFSpHtb56H1Yl6
	 r+AloG1QN5ljuL4M1l+rgqgwks2mXF5T0+xWW/4M1rpvGx4NjaCXWn3Cel/pZKNc9B
	 cUyDlgI2vdWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B16C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985739358.7861.14919882725079312578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7770263f9c83e5b3d220905e0b96f43d868a4f0c513ecb81fcf3ea6230f44b
Date: Fri, 13 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749857393
