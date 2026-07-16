Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB0B2F7EE4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784214514; cv=none; b=MgPYlG2RDEw/xwVWTqm/+52SfftsD964H83ig3Gv7LGKG2xNE+ixKSZYQ6WNJOuq8g0Np3F0jHYUFa2RHLSp8VGTjAH20zR8oHf7j+ToK5GR5SQ5aHIiqyzSeyuhyYzzkd8SAFOLA7h7rrFisPp91/UrwbtFcg4aKCmI8wfzFjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784214514; c=relaxed/simple;
	bh=YEIvn+aHtv8zGKk6grVOuGwOmMZbLZlxSvtrulkTk3M=;
	h=To:Subject:From:Message-Id:Date; b=c81ft5dYaSwe2QqZIOdqs08HYbBH9g8VHWf3jbxbQFsjz4p03aQI8ZmiREQDqpukX5ad4iLKL2b9KGxngTqZTNcccbOha3Jy8/RkXSnYaW/Gpodaaek1TsH+E74CbAuNstHTwYMRkEymiEJkmt5g1t/jNhUEWxewnk79WuMPI1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5O9pEUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5O9pEUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A26C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784214513;
	bh=YEIvn+aHtv8zGKk6grVOuGwOmMZbLZlxSvtrulkTk3M=;
	h=To:Subject:From:Date:From;
	b=Z5O9pEUTlb0waskiHiJGwdojq16ZSPKLgOyeP25PeaCMt89C89fewXO2CY32cFpxD
	 0pZMoJEp42b0gD0bMWb0FjOj7fxArndXrjaLCQG/K7SUveOlJOib5TE0PoFVY+DSBk
	 USk+17L79AXhXm4TwRHNir3Kt0w7n4mQLvk3POvoAGnqqwQp4LVfQJVpoa5DMGHjYF
	 ArDrROy1XuO0O+2E+pOkaMFJK/zA3CRIT0uXJxOsMfQsPW2HyKPWA1QNNTGuQS2eMX
	 jaJ508GtayuEAtbRFnGO5fR74qUfCE9Ql0jt3J+OTSzi1WLcrwaq6K/Ruo2CLAjyu0
	 9F/bs4geDXFTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0680C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421451371.13569.15075051007949183145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70e3fb3db14e53c1c732f7a2bbfba3b1a43738d22cd008829a9cc75ae748866
Date: Thu, 16 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784214513
