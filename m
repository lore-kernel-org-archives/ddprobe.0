Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455EB14A4F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780762474; cv=none; b=baSPiq6Zh4sLEQ1CW7wRiac+teP+kB5oVGvOm2gzWqcKB+iYb2DNXYQlTSP0VVJngSWLn3rDuzwQA9mH32MlGIfQNnFxaF4S46kTBVKPPJ9Gs2t2w0vuF1+DxhBKyr91PgmcuRKaI2j5hw1j2T52VrwlpOJF28Kb6CU/dX17Cqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780762474; c=relaxed/simple;
	bh=UNfnYDpHGcGsj21yhtWpc15pTB9DBvd2nKNdeHY8xks=;
	h=To:Subject:From:Message-Id:Date; b=jZvscTRfurUiYL326+HpuIu0UAxGbp0p7yYurcBEyhst6wjcU8OQ+09Y+LxaGyCZOW50TDxKmJ7w8XdpzpzXyhf0Wh8Ytrjq0giVGP96imP3QuadyItxH08HlX+mwPb1AiiHCAFIjY8/YHX2EHjfVNaFn7RBMBT+e2J1WAjFTWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X79NIPPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X79NIPPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C808DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780762473;
	bh=UNfnYDpHGcGsj21yhtWpc15pTB9DBvd2nKNdeHY8xks=;
	h=To:Subject:From:Date:From;
	b=X79NIPPj7mYPRi7yo0fwUiI9gSD4WHKWg2kHCphcT8dAGha3vno5iaGH/m6/JgMHI
	 ZNRZm+NgAPlD56GdpXNWtYFXCaTaxnNkbji8uBYHVqc3ukXsrP7+4r3aqoBm+1anAs
	 PCUyi8D8jbPHnVYMCRbrVSAENCC1IA5md7ssYun4KA9sjMPQylcD9XKYTJimHkFHgr
	 yuTnHThsni50p99LkRX1Ym2Mws1avqxR0qldrrrSGYTlBddz/lyjfPcVqYBKjQvV+K
	 1YEAWVMaFTpyavLAMj0mkdoGbRN/L0sF64PWQeVzvV6PECwnXUt8l2X0ywvegMXnvl
	 +DrBbuO59yR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E5CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076247369.22773.14961399657259364415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed18afb7cf365f544012b20786a7ac773ccd661169ba375df0a3b7c20b8b7aac
Date: Sat, 06 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780762473
