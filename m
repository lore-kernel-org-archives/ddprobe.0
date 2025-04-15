Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4685F4A1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744684795; cv=none; b=GSjrFQE6XYg4zb4B7VOYHwtCUQDvIf/xhFAGWSOcK++K1ukMq0Xod0qya11OnDDoR6KhuikM8Bukaic/tIgCQ2rHM8d7qj3asySsNg4/qMOvU8hNPHBBUWqE8iT1FL8Xiqbg4lUVZnyiAU9aS6byhQ4W+XEUdFh3QGEQv5LQf0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744684795; c=relaxed/simple;
	bh=z1bQypxDbUu0aVYC4xNFosrwtJnezDsHKPU5M4nXvzQ=;
	h=To:Subject:From:Message-Id:Date; b=ksPq5lFRHW71DXiEth1XV5x1w8vNPni6Dc6uuBzUMyFD2JLQoDRJizxrolpbwbiFrUDQ58fRxHH0hvOaWlKCnVMXXFNtjqER8bxSTEcfNCo3l6fT3VnDE0GW465bMszdG1dFIfGgP5Afjrwp5ttyacIeQvLWUSpwu8/TnCJEcnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7Aq5O1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7Aq5O1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4234C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744684793;
	bh=z1bQypxDbUu0aVYC4xNFosrwtJnezDsHKPU5M4nXvzQ=;
	h=To:Subject:From:Date:From;
	b=E7Aq5O1Y6Yj/nNJvtsuTRdhGeaHzvYcGfCv4GdcptWWhHCnp9dnMe5dA+cdNtu+vF
	 I1w6sqdRAWed7Vzn64snhXz+MUk37hZVnHrZ5c1euFSZ3kWXtnCdXds1WHuUbt8EfU
	 mxFgtMVd/5Ip66vgqUiKmF4tmTULrJWOPo4McmZ47pLIxsCPALpcP/X/McVWYiosGX
	 sQymytOQFD/oDGCfyw2u6zdjl04L7l/17YNXiN9euXb+9NvurmfQOlTHbE9IO3NOIp
	 QIvx1L+2Xl3ug0CiTg4evk2pLHcwrRijjVtk+rknbLyx+iA1dOpB02JVaYDhEHPUfy
	 6Fs3Xw9BqCDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1E6C369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468479362.29362.10746476850017754834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3107ec34a390d31af8e13282fe6745392f6db275f1d0c72d5f146d68e31251bd
Date: Tue, 15 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744684793
