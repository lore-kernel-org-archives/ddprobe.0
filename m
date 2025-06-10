Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20119246BA4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749561594; cv=none; b=YDuiaRM8wxPy3OuH2LzYdsGJP9c6aNYt27g37Z07U1IJYyUNBuc7pGlsPYTElILRupEU7w482xWkq41rt81RusTiduWv084d6orjKbEm38gKOAO2B8CyYW91sf/ki6d0sn0RTEwPLkPGAtxVlq+oBvdq07paQGxQjIX/Or4gYwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749561594; c=relaxed/simple;
	bh=AgxCQzbceG347/ta2/x/wdIZqu6/VIBfT0gngDJvcQI=;
	h=To:Subject:From:Message-Id:Date; b=iyqxPBD0AbsXG/HWwS3Ay/wfdfkMYNkATCkdJDtrEVdwGungTLjj3LdymJKTmPVpZ1BdKL3GZVX1sg3Nkqbej4X07mA+45iGyIIX/vagz/dtAeE+PfxNcigfYSyxx1DRX46OmkFttA9sgEL25bNk561rpfiAq5/SB0b7rg40BX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBr48nnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBr48nnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A7C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749561593;
	bh=AgxCQzbceG347/ta2/x/wdIZqu6/VIBfT0gngDJvcQI=;
	h=To:Subject:From:Date:From;
	b=SBr48nnShw+teaqQT+1QbtKUHjERKQ01I4IgYdcnHYQ43fxL5Q0Kt9mw6LwkvWaYz
	 DebwVqC0TnD9cda8/aZ2FEQWSLrIYWMhuV4DQFqyUsibWDv91iWyljvRHmCJqE7Lze
	 r2NxmPPLoyHnnllVf6voY0xgjnL0yjv6OKFXrg834siu61Biefeaepop7BBE9sw6z7
	 RpNqeluSTqzF6iEMUwDZBWIXWMUbpEs9FZpHQlEPI77N0YYG/v2sAJlDwQuq1ZDHUD
	 W+PXDUyn8SBBQEtvmHDCAm9ox2Ql4/7djzGb9ckXelt7Gqn/MLi+tpeExo/yBfnd2f
	 hgEEDSTj5xE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA9C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956159358.629.16916423419279603604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c503e7512bf9d13837e09a7e014b93629af31a76c510bf5f29e4715fea4242
Date: Tue, 10 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749561593
