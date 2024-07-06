Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3612313C80F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720292183; cv=none; b=oO3WUUunqe3LAT62FuGZoIPweENwO4pmMJzLF8l3CAtWZJ4NCPMdnEbTyl73J2Zb6zaBPkINOMP7ZLuRQj9ltheVo9lYt7FJKtRceE+7DCnq3uIa00OJHWJqDwLvbnjWZe94YLeb1m73D3C09SU/151Ckv+GFDQiIWiBWlgmQEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720292183; c=relaxed/simple;
	bh=SJw+OumSfC+y6z+Nt7VNHhCqGuxbZxPIXIli7XZI/Ss=;
	h=To:Subject:From:Message-Id:Date; b=FNkahIef7D0TQqmuEiHYdZy8bIn8rct4f8q8pY0RWJ5N4+YcoZvFei4rhkk8oEmZDiULRHs8fII5YzOzt08kUW+5W8ia2wJyGLm8lvj8iALxwRzUepYHSBrB1al++Mlb86l/baXweZ/CqQL/xBQ3ukuAWNUxf0xA7kGkRmSFoIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9IMlyeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9IMlyeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6743C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720292182;
	bh=SJw+OumSfC+y6z+Nt7VNHhCqGuxbZxPIXIli7XZI/Ss=;
	h=To:Subject:From:Date:From;
	b=b9IMlyeUJUgSYmaDbj4Af7FQsPIn/9r6ctYHs1is6jWVlMijRZORV9LOwqorXnSau
	 o97qy97olwwViV4rlM7WXnPMBqvH8/G0pvtNJd988FTr65BF18KHqSE6STPAD2YfLN
	 BLjWf83odzO9pjDdAyta/Gb04pOmFkvcBecN9AgGTnpk7m8r5RwI2dF+BffyS25Pnl
	 0N6EPAF5wRjzrewAoRcn2YcE56ivm5SAw9PzQTq7tveDsmWio6wTOYdTvRqjS1/Q8D
	 mE5tZqQNJHtf55LIh1f4wQcB2hlx4ifcf/hu+CIdFFl+gm/fuKj45Eu9FCeoj9R66e
	 9Y8bG2g8bTI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19DCC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 18:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029218275.7838.16966438891515036309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165ec68248105e8b62a8bf0592b733db47e636eb96e2292d6771a7378d6a3d5b
Date: Sat, 06 Jul 2024 18:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720292182
