Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD3207A27
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751146194; cv=none; b=lQkr1hS15S64m3cXFovQ+PqKLlP+PEJ03Wl7UlEJH4mWL3TBHDHri4upHGqr990h7Fg+ydkSw5MbBaSPiaF1fVFd328iA6fgr9nsreNDFKL5sJevA416mqbGu7HJ8eIqh7hsJJBtFS9MEREL+MAZ0Nr4l0u+yyXzoMkm6IaOZJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751146194; c=relaxed/simple;
	bh=0ebQhVwnhXbutaiL04aLwSxqHPg1Osw68K2S9mwL1SE=;
	h=To:Subject:From:Message-Id:Date; b=MGjVnOgUzEIImeGR5k4gGTaU/8xCXOnZq4dN4W9BlfU0ZuWuY4HlcJ0N6ig6KxwmZ7sFCdow6Sa0tkKvk2TBroT25n0r5owHKlORt43Sge3Cqx0KS915IVw6ZtR3QSAWN24crYLGlr0liL3yUWYDAVL76tfafiNPi8B/n8+ieFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5qZsIoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5qZsIoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD01AC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751146193;
	bh=0ebQhVwnhXbutaiL04aLwSxqHPg1Osw68K2S9mwL1SE=;
	h=To:Subject:From:Date:From;
	b=h5qZsIoFtJmfIPHVJudf4g2BZJ+I6oFRPVj8ECRDrcL+nNmlCmz1aM1Do7D+qKiyL
	 7LMcxOILkwVwZD5FeEAf4rd2C1LJJkjN5un1mhM7pjaqestTz0zGpwjP2gnPeOxMPq
	 S/5DeyUnz7uLucLlrKOfpLWkAn9Lhf/KQQdShNso6BEWIMhrDpAgprpjdjehMz6rMP
	 pzwrhe560cy8Wd70E2cGUwhzKvPUudGBtr6IAU2E+O/ApH1iFpwmdaeWqBaxRub6Ib
	 DA0Nkpg0NAewYLIjpGYaynqRdDYkxE4q3I6pm7gw+HM3rYOzFkzlyHGIKWWc2HOdHF
	 kiKwZkOPBBQnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172FC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114619357.6606.4281275843586824214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a5183b7926d542e8131ab6a86e35f841616676393cffc626cbfb7c55d7fe27
Date: Sat, 28 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751146193
