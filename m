Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE5F18FC97
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792371634; cv=none; b=R62W4GBwolDqnyF1+f5+7EWjVrTrz+IABeg4dNUmhgrPt5hd7+RVjFDx3urUmFqMCFfw4lpy22JJwhPP3wRiyrwOmJF4fpXgbdGwOEO7U4rE2co/s3/01Ks3E4BpEJau5j7Hl925toxtvcoN42xDr/KiDkgKyoRZzM3OytnFVjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792371634; c=relaxed/simple;
	bh=1MdZ9kRiMXvbm2c85lL72aL2WFz9u9C5ozp6GwPkDdc=;
	h=To:Subject:From:Message-Id:Date; b=OpJ5niaIdE0GesqaVTkUHzsm3itshx4636jyemaSDaOTzyw89Y+92axQ15o85yjS3izmfGhVc1me5QFemVClA0ez/QthKWv83g+voJwU+OqgzvikfnwtIOgGQbAc+lywCQX6kjveTAuDPVt1z80mUQTGKC5PYKnt8bzYDsjEdw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4M2Z0gX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4M2Z0gX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6A2C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792371633;
	bh=1MdZ9kRiMXvbm2c85lL72aL2WFz9u9C5ozp6GwPkDdc=;
	h=To:Subject:From:Date:From;
	b=h4M2Z0gXrjF220sWwj8NqWS/MwoQuupLTnOmsCuk/sI2LoBuW1L+NrN6jBlvbKsKX
	 pzcWXElhde3Jt9VtSkWib4SXl8CoK1lEjVcnGOSteMwwfZjv7CRts3HV1tGhIbS1Xk
	 DLe8AzZzm6S4G6BRqgrfZE9RJAc1z2wSOTSmWU9gYgl262TOcllBva+Z6bIiv6BCO5
	 NFCdHvwUeHF+gKAEduJFuCDnZ6py9ZOcyvNBP9YSfip9b8dUGisb55IulllYCwQwu/
	 hqiHIuVs1e32e0bT9RAW/9DoFoRR4AHLefB44x8VrfjtreMuv0pmFdEfBm8mdXytUr
	 xiV32tL4jfgag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30C7CCA490
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237163370.12243.2432862583396504467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5a4592e6a416e97a2101f1630413095d52bab81967fd901e94e745bb1efce1
Date: Mon, 19 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792371633
