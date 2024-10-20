Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A967187FE4
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729437954; cv=none; b=F6KmTE/xHesqRHQMlYX3MvWQULDFd95IdiXdFiowG/JVuj5BNGJfAoF6Wqg1LpgN1fqG+5xhFUk5k1tc5UnnI9bIhTQ/ZuZ3vRuI8s/PH+C32vgSOQiyFXdkYKpDPkaL906QOJIYczxtb24+2lOAcTPun5yvH3fBzJtk0JxPBUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729437954; c=relaxed/simple;
	bh=bSy134/ulrvwa/6UdEzB0INm+qUGXgr/veG0sYGmL3E=;
	h=To:Subject:From:Message-Id:Date; b=GCw5CE8x0wHzavKUDo1U69gPcmGvGYwtXCGIsMUxE67f/dlrVyKDJSAC2X/LPuMwZx2mwny37iKAAX8BVjFeodqY6MkfzzLCk1U6DtikqqEvupiWikCWEQAbCHBu13cqTwfndWSa+dYs32J/84FitXIaiG/jMzr9qL6oOi8VroI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0uPBQgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0uPBQgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EA6C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729437953;
	bh=bSy134/ulrvwa/6UdEzB0INm+qUGXgr/veG0sYGmL3E=;
	h=To:Subject:From:Date:From;
	b=K0uPBQgxN8jZlJF8sCh2VahA5Sf7PXcvs2+dAn8Dn1D5OUhMcKsaFQG3GnXPbR/mc
	 UYnaPd6VkIAoZZENPMxn40AyH8c9MH5n9kQkz9uFlFwhcmZZFrS42qQRiYA+ARaOzY
	 KdovUOTmocAkoZR8HLvfEH3IzueFbXCXHsGMcUjfkhEAlEckj9NL6oB0ENMZ5yCzz+
	 L7rAZF33lO8UzFOlkt7RzdsT9iMnOrc4uR9uLWcRRa7W2pM3dIny47EGO5qm85NXLT
	 XQeNzR78pbVSKfp4HLx1n4WWah9WVYw8u95oUmHbhyuMeVI9hH1Rt8+8cxshkhU/hG
	 fg/pdCGCey2tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73C2D3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943795362.26397.7816899036642667161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2174958b109f4bfb1fb8c3d68293e6a7cb8b4d4d30262724904bce6de8a0d31
Date: Sun, 20 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729437953
