Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8FF241C8C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780114414; cv=none; b=APk4M77P9h0pQUmKHMq4DUfzV1DkLWvWwjfG+xozDwAS0PDRS+8ekpn78qmhOtqe7EVl9ZWt4Vs3aF03NbykS9RubPEF1pmIFwxrhCeqgiFm3p9tRrkSC6sxSwchvIE7nSNKfc7m1m39ixqLVhrY5UAWnnCZhyOM9340qDuZ/nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780114414; c=relaxed/simple;
	bh=oVomRQ+2eKzPg4nnP7codwe9VOdY4ZyT1/TLXSWwLwY=;
	h=To:Subject:From:Message-Id:Date; b=j8oYQ0gVLttEzdO7iaWKwf6NMpeWJRasse0dJRMLddxyv0LywGsfNhhsy3ycmhIWCzOTNQh2B0Q7f0gs91OsxzktvcFLKQZAWZJ45JXQXibAsU00wddnFK2HS6na/ChjZUYSoFxVEcC7/6gkwOkcJVeef42Bf4YfZL7lYGZB/Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZZkgl4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZZkgl4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C138EC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780114413;
	bh=oVomRQ+2eKzPg4nnP7codwe9VOdY4ZyT1/TLXSWwLwY=;
	h=To:Subject:From:Date:From;
	b=uZZkgl4l/ma8FEZLVjH4xSbXoYhLu+D9oKGYCRlhPpFTBUX2htRAtWgDGRPXwWZjT
	 N/0b6MnFYCUlr2zUlaZq8mIxPSbvyVJ0KQn/jREXXaHFndwMN5Av96VM1ZnQDHHPUv
	 jyATV87GtQ793T7rqRuOquOXAEHIFiPXd1+ZRHye3YQvLTim+8JuBoP3TGlxF0HZqo
	 PNjdNLTYCj7497gs7hoiftyAu5YVZEPzQWwPtMFtXNt+fGe9Eobl6JnQjB4+DrXsdd
	 ICRoaAQJQX7JDPkZyDu9VnoN98d0sWTryRbCu1fsJmlV0X5Tr6dY987zLuP5vpfAoz
	 8A2rPdeQNekxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8043CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011441368.2337.12830765014316796186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e16ab6a1fd9ee4051d414556741fec2641ee0b7d97598de18d0d17286f2c6ff
Date: Sat, 30 May 2026 04:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780114413
