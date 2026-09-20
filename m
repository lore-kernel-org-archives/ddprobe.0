Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053E5432E6F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789906835; cv=none; b=toYVIGN7YgUpBS3vYMZlN9sG7QaSq4rmHj2MGCCo6ImuVAPta7OQ/PbmDxZYAo09cXEgESQcqEaKuIloOThtEr+7DawGAE72maS89S/UXxEucisILrpuFc0pKL0AbE485J/zjrei+7UEhbajCo61QlvVU/t1HNaUW+s0wOM6c4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789906835; c=relaxed/simple;
	bh=aSg3+vQVrsgDwSrTZd7t7vxttNXGj0fseo/u1eiPLSo=;
	h=To:Subject:From:Message-Id:Date; b=iLCDaUHtYEKZth4utTGWSOUbM1eOdGYL6ivPjWbgSHxcmVsyCbccv3BSWxCKtQFVJgLBafhv8Cy1VF4+hioAC1OrVE3d4Nix9bNVjdfd0mT938Gv+l5kTYCLBYpsTfMaifVDqQ8vDrzNZIKG2Bc6SKsy/JpyQLbdbpGZenzBLRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxmNF1Wu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxmNF1Wu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC39C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789906833;
	bh=aSg3+vQVrsgDwSrTZd7t7vxttNXGj0fseo/u1eiPLSo=;
	h=To:Subject:From:Date:From;
	b=IxmNF1WuuSrlPuHFQNDRTeP922hY/piBVNKuo5PvJveyvzITw+h2szMG3eu72LHWo
	 9vFega4KgAYnLtw1f9W8x1IiB90bl1tH2cW1QCDB1CaAN8U+s69fjH/HEUwhksw9l4
	 uj+4bvr2KUDTQlNzZb+svSQL8Q4n4BiaMBlpHoibndIuLSFljQUDVOGcGGXGiL7/Ad
	 BTn5TcZREy79HCo02mnYM/9MLhci1V10vQQzxc4lywEq28DIALGIOaR6DOP7tq6ga9
	 bu4PIxdu84oNRD6Km74maKzBs26o2d0AIJNd+jrtkM1B0bq7R/Y+sDlPieGywiPrUX
	 f3bQcKBbxuJsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA72DC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990683368.24225.8495581467875389457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1df8ec76b4d2662fcfa01788e90a3b96e782c98c1c48bf1190c25876251f9b
Date: Sun, 20 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789906833
