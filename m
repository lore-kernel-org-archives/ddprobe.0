Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBA9305699
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783864714; cv=none; b=oxFmWtYR/qQng11yHeO0HfQWEg9a7v43vHVFAzGzSMaO1SPlZGuG+qOcJPouliqRZsA9Xs2sex908b1TpgRHDkKRrMnEdTJdy1lwT1vNcwAimq96KK0eIQtspdV1kFNi8XHWb9OSVVLZDownWUoRcBrq6jqDNrYv6NW8rNkjYXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783864714; c=relaxed/simple;
	bh=pFD5/pf+Q+FIvDPzY/VoTrxItx5N926q9PKFTWODU4I=;
	h=To:Subject:From:Message-Id:Date; b=CUtC+FqcfuwOjHFYXrf7FzfIksqB1FRDrX0bRpDVc/xhIAsueevIMg9pSZ+XCuqTgkbVeluyLwoIaAqx0zFXSCu4qdJYn8O7IwZNtYqHFExkP8EdfSk+hIilOhyVG4LbaIVddnjeybpJO7XatMuwjCBLmMJnAuMeb6PubqxL1dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxhjvFEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxhjvFEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCFDC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783864713;
	bh=pFD5/pf+Q+FIvDPzY/VoTrxItx5N926q9PKFTWODU4I=;
	h=To:Subject:From:Date:From;
	b=BxhjvFEMjW1Ay18E17OIiHBKxikgv+bJTinQvd5oNQ2ShVwI8nbUz+Fg+P2cBuNVC
	 p0pX/d9gr4LknpxymsbPV4W50ahfhRsPJf5BGfz7aM0I+T8OrnIqSeOsmBPXx6ALJs
	 5a6e8IXqVITRR66FiHsL3rQr/61mEpqlRYzN2kSOKjk086LgsEHTb7rcc6S0qm+T8z
	 mbYKuS2PD/yxNfCb4cNchvwnTCKy9J0j5aVe6drxNSSMXW21FbvgUtdh0yizy9CUKO
	 ZXPnc3vJ6a7ig68gegbYRduwq8OkexrfilnYm4gGe+xoihkNqwaLnBnkywpPHL25Cv
	 dgfcvmyT/zKjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C15C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386471368.25670.3048817094635930056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efe015b1f5a39b54561811b4e1d4500509deaa32625491c40f3ecb1a3729a68
Date: Sun, 12 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783864713
