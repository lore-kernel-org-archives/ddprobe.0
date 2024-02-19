Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB008376E1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354697; cv=none; b=EyIfuSrxS3OEImE2oBxn39QCvzyk5jgXL1VJ+fz/+tICNSGn+h+NeYE2ttCjfMm1qmfAxWLlmE8Dt9eIRTAt9V8v2n6hb0FO4Ip69Y4fY4ZflGsk4/17tnO0nCABMB4lWSJnKYcAw27Z7o3SMWg0eb+i/jZPqnui5bG5hCGO2Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354697; c=relaxed/simple;
	bh=u2F5CYbweOsazabuStTVedSTsBDKgk57BUl6I3Ddihs=;
	h=To:Subject:From:Message-Id:Date; b=FyDKEfjBgZfnbrAn1AEF1h1cT/FHMvNTCmGaEL6VCOjRArDQgiN9wVs4cHo8mpFOTQ1N8zXSJGpXsJd7nqoQ/Y83NSU9DPKq4YR8jqalW0yeJVisPBKwkVmbRa9ulgkR3dQRzUaRP2mIRmfmLYrEdwncpY1NKaaT9s4XDRC6lxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr3oDox8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr3oDox8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCD6C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708354696;
	bh=u2F5CYbweOsazabuStTVedSTsBDKgk57BUl6I3Ddihs=;
	h=To:Subject:From:Date:From;
	b=Dr3oDox8DZhw+q9x252Jir4U8KLSi7ap1fw8D+pIYuTgZgEwbbdoH6xo2T8hapQnh
	 My9yZnppm+hJ40J8jRe0pFMnpVuxQOp1LDnyKzp2kDk8nnutGM9uCnl7rGvOJRJIaW
	 bIqgaWLP4qUgJlLHh0j3RkDjoZrXwk1yhuffVOfZ8ziWHhJWx2mwfHjneD7t3YG6eG
	 SPoAGv37c0X0IMzi0HLqkclA6hupIMfLXdsKAwSFWOpG4x/634nbKSQ0KUaw1KtlJ2
	 ysa54hkWPlI9tHxVMc39k9+1yuC/X6Qt6tHQT1XxZbNQEqiU38BFc57UFyW726cH44
	 VEAIeZxno8Duw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6178BC48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170835469639.5030.1953529692138078084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c693c551d793bb66f2ef767ffa6592542168aea1452a38786f772491868519
Date: Mon, 19 Feb 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708354696
