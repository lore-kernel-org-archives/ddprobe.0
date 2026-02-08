Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6DA2749EA
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770527034; cv=none; b=doAmG8Pv5DSkFnfpYxTjwQoomp12jb2POpoyLsDHwhEdvubn4B7IFDnlZQbXB8jT3m/FDJg6op3JAkPG7WhApbRULl8+FVAL60pzoO7IN+mJUO3l/mLB2nlG9Z+cMnNj0JbiuF26MmkcHSo9mPd7BxjpgSiV3omjk9hQ49LSLoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770527034; c=relaxed/simple;
	bh=9zOFD4jPJ1UCi9mLb/CEimiefS1VYyBpy9Z+x/QhGf8=;
	h=To:Subject:From:Message-Id:Date; b=PARmPoI+JxDb0IN7GyrqFczUGQDGEPEp/lZeCMUDzvxnEWfxb4P8uHxXL+2pQvbTEsqU1rwKLiKlZAXAg1fNc98xogzBdLNP8RDIUJdCdN3mMo9ibZYgzn0JbBp5fGbsOM3Y4cJbY/GM+nxtG9Usy0wuItUO79MlnwGKHfjq+zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbIw+uDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbIw+uDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1894C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770527033;
	bh=9zOFD4jPJ1UCi9mLb/CEimiefS1VYyBpy9Z+x/QhGf8=;
	h=To:Subject:From:Date:From;
	b=mbIw+uDet+a0M24ih5udzl3r81NqMR1b6hEJT87hy4Q+B/22hOkJmKyOiSBXv+tKS
	 rA51AQjDUNtrahzcS2Jd3WWw9ngYSJ70HzMd6UUDX/enPkf884/3BhdCZFgbSwemDq
	 TBOCtnThPj5P5mlcCCHocbnYhwHcINnyVApHOmTd8d3+xYP6LHl5ebYaC+z6ynbc7y
	 IBd6F+R/8KRO1BfiIFuLOkJhwvzFAo++rpSHThnf3wpsRpfjDbsoZd5UICcKrSWqnk
	 2zSyIB00k9pMX6JbJWn8gj3JYhRd6UiKQ3JOYBBaR1cqMLrHOCcZ3poFRehRV1WI8K
	 O5ZOkpa3LqirA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9982CEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052703358.30176.1449985382334822585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0e5326b84233c0f8b5c1af9a3922778a9d5cb4aa00d0a5d0f341a745d8ef7c
Date: Sun, 08 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770527033
