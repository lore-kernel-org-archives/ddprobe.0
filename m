Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A3042AA3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733209554; cv=none; b=AWzWNH5Fg8rYR/Nh5gflxa9f3RGLilpEbYn0uuklnL1f47/m9l647lxlw+CUMWWlfYE0HxvB0z7upLKqHHkIIPBm5tOneTc01lhv0TkaHZPx0Te7BltXhmZkWfce966U4hOYJ7ZFqxOszxnBmkSQoan/tiI67ZDEk+cLlK0hZYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733209554; c=relaxed/simple;
	bh=8a0pSBe5tyRbJGGOBilK/ThFhvRFqvrrzRAce7vQ11Q=;
	h=To:Subject:From:Message-Id:Date; b=ZU9EBghkgdf2wFLdf0NsxIMqU/IgR7UjkBB4YoLlGU7vxRhQxN0QjRsvuIifkfUfrWQ9V2R6QjVCYP0gajjtNTeHwBCB0XUWWFLb6xqdOysuqi+XjcapRsnL1jTp2EUysBmpK2pcyBaENGe/sQI/Bg4h4Pb35yHG+Kq2s8KxuL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajQBGzya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajQBGzya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB4AC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733209553;
	bh=8a0pSBe5tyRbJGGOBilK/ThFhvRFqvrrzRAce7vQ11Q=;
	h=To:Subject:From:Date:From;
	b=ajQBGzyaEsa3s6dtAq7XdOoFBSK3WeZm//bqI1WVCxy7gNYGbALEi3pS1Qw2QxMwX
	 NrdehPDnYKmbE2T4vTXUf9DHkoTbXaAwlGtRylm6EQcn0gIqbgFlAQYXU2SM0J4tqF
	 dgdYdlS5qSxR2Vk3DCxSrRpoaCYvWuBrRFzktU7UqHfOSqw36wOXV0WJaFdvg2C1nN
	 kSApGBgGErYgiEA1CZFo0PJQHF2GHujTnWXmNtATfTg0Ms6lF0CJaEsmJvh5f6e/g7
	 +7+jUQbCV7mtHyWWKefPoGTuTpC2P2PJRs6fZSc6krCyudUIh2NHjOAH9GsjdUlnwD
	 8I5aykUk8IFSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5BFE6C60E
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320955364.20917.5212569290462268785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec81c0e81c563fdf5efa677575e7228fb5d4a3f6969a74be146ffc057962b43
Date: Tue, 03 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733209553
