Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B14712E7E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746896994; cv=none; b=B+kTaw9DkRO2SJ9seamPPaO4edCNA+g+2h0+pvIkXBMx6PpXV3rqVPL90JGUH+f/XUtpkRI9YG9tMRu4acTc3FrgZcO0usac49YsaYLXiRQkIf1UZbfuuhTGgaKQAo0Q+glG9qzRXXb5w08nIoH4P2vkWjQ3FCWmzFU/lFTg/1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746896994; c=relaxed/simple;
	bh=UGvfYHHa4XLOJ6wa6NSNgsxuPgh78MjBzo2cgfVdpuQ=;
	h=To:Subject:From:Message-Id:Date; b=L+Kvsv+Bg2qEC0ggfXD1UzyLq6m2GcSqXMwmTkkI9Rs6Haw7IzFw30ODXGNniDZPmvaG/ZVqK09vK1nubygbYv513FgrZDNHdzyLTRPXY22idx2sIHvtweTJ7sWteqhQ5uh7q97K2jBa1vGIn6t+NKuQrnscErXBTYPaR71n5rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2bO21Ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2bO21Ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1446C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746896993;
	bh=UGvfYHHa4XLOJ6wa6NSNgsxuPgh78MjBzo2cgfVdpuQ=;
	h=To:Subject:From:Date:From;
	b=E2bO21EwLI2Vzsv/FmXBkyKc18twyOMEjC7kuaVy3C9SAYCX5dPljRSKvhVPE0Lpi
	 FA6o3tGaeSGozTUPF4qADdiMaHpw4g2RropX6RpLrvovb51WFFeHguqxPHqt1Sqa6K
	 P1SHZX2frjNeIb1H0MVljz8IvDKFtsHsBo0cXoQH4h62aAwifj+adaQ3RT+eZHaifv
	 duwUIaxGGeNdRAQhLOH4bjvXD40PJlTlNn6PZhxUdcSEfN9070C1IO37JQP/M8Dr1V
	 I9Z8m5Ck4qDXsfCQ/fyOaEX/KbDGNpCe/zA9RLcOq8mpD54hrTNz3TPREuwQXl0Xpx
	 G0j1DXJSh3zpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D86FC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689699357.32419.1030661755129888055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2f316f19c0eb5991719349ace6cadd38ccd6cd9972e53979b3d6a9fabf30ad
Date: Sat, 10 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746896993
