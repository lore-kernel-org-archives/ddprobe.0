Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABFD2EE611
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778345854; cv=none; b=oaQGmEb6ky8hcYoSX/P9y4huS4K0TGVNZ4Ln7LsxbjZXIdlSguBYHW5f6eUiLfgoOAk+9SkJilsAl9df7Uiec9J+fm1Gp5ydL6BmksaTTL/UZTwScKwRAABCaBEjFgRUcteI4HA5DbBAs+bL4tRliDX+fE2MlveHPiexQx3UWK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778345854; c=relaxed/simple;
	bh=+Ykog1aQskBnLlqX3y1LuD7px218Te8AnjnA2TQ9vNU=;
	h=To:Subject:From:Message-Id:Date; b=VasKVCbD+EaGEAVXhcps9EtSB8k8yhqhKxkngIp7imTIXz1F0Enco8BkwVfRC+Lul7zjNx6Q/q4nJf1znp4EqG4rlWlB7YmTByzdg9kva9H7TI8h1F05+2Ew4VHPuZzsdf6EiX09JucJosONPVd0rWno6axRofJDDDN1rCZKc0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhhJ/4Zm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhhJ/4Zm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 53270C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778345854;
	bh=+Ykog1aQskBnLlqX3y1LuD7px218Te8AnjnA2TQ9vNU=;
	h=To:Subject:From:Date:From;
	b=XhhJ/4ZmI8aZ+tNNaBM292xOOnpwk9brJn6qLjYRHNVSijChOdSrrrmDAWb/9WLtm
	 vZqXXPSUIr/rzZtkTGMqXD1EQn+vbiIMgtsp7+YXMUpxvYUVIoeeG3/tfcKR5gLMps
	 RZiPf25lAT9k89KxuNfzye+qmlf6RdbaEN5RgbrVWbzYoYwveqt+E7HhGDk/eFYaSd
	 MAGm355uiqHasGvz2hWhnK1KXDeA6cespV7zUvJQxhBt1Y74udD3XVD2hkHsDgaWUg
	 6E4uQEjs2kDeAU0ll+3BrjoGm781SiAxC7ktNU+foRkFU2ysCSQIKbLxrFPAzgMdhj
	 ltbl9DC/XKQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED981CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834585391.5485.4298764013822594632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36953ba76956bf765769c3b0a3c25bcf2715a2930ca0a76e78a1063fd2ace6c
Date: Sat, 09 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778345853
