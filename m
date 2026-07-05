Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BE36E47F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783253314; cv=none; b=UAu3GFtlvHX6P/mnPIvmCQ9C0vh/bJ1eMx/QvbipPFSJkQ0rH2mHg7Urdu5ngjMNZ5elf9HYicVc0q5G85qbqesXiq+Igw1QyeUSJJ9+VCiVCZEsJX1Tz+oUQV+0nyB2eWyzaucAQuU0E+kQyCIu8cpDULoz4RWG+C0mD8nIpns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783253314; c=relaxed/simple;
	bh=D6wpez2cI1aydhEqU/qRt5FF1C6YkCUQYg47LJNGpro=;
	h=To:Subject:From:Message-Id:Date; b=aERWnJezB0n7Y6jxRT88h9vCnJ+7AyKBVdl8GNRprQR32zMqnoo9o796JUCzdgmis6sBSu0hjIp4vpu3LS+y67MOzKXluTVoixCixXluKfO+FhBBH3hS/wLT5UcD52TRjCC+rHLBw/MSXwfwHyOmcPITS6Tu/4in3YdPGyLZw7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ziiy1FGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ziiy1FGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79D4C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783253313;
	bh=D6wpez2cI1aydhEqU/qRt5FF1C6YkCUQYg47LJNGpro=;
	h=To:Subject:From:Date:From;
	b=Ziiy1FGJC07x5Nq9afRgXUMAKTFy4DQljAsnlieT90ZngCgZiZOITSHug/b8O9z5U
	 mzLgr34HEiblGb2u7FhojUL8TIznfGHCr5HYSxSzKXZS3aypBUM9/15mLDhT3SvEcZ
	 YIKe5yW34UOHf0tdPq2gSHQo+VISjeh9965KG9S59eVbDmUaHiZh8H7pCjHzRHYxvS
	 G5IwVegJn4bsaLu85vGUkB7jzuAivYo16hTokVJ7S9BBCJq6HdHl/vu1WX5ZeDLFyd
	 ntMl1I7NDvzUV5RtgaS6Qybqc1eMt+17WcP++X130yysI1yitFYZCrhJTDrmqRh38X
	 eyvpr/R6An1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8681C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325331368.12276.12486700220707292089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a380ee718d8c0a3b0b17fc9e93ab2d9d85e3660ab2c71ddf001a2d12ca0160
Date: Sun, 05 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783253313
