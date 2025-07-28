Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1AC1A76DE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753744194; cv=none; b=U1tNBMHfMH3oGblrclqRf1b7Q5p7YU3X4ywTa6BbVS3INXCwyUT/xj0J7XBQiNJxpYjTPgwSeQ3/thzzviVBtv9jbNRW/o+hp4Ex7Tzfhr3wy/IPUBEPw8PKYU4yG1NkxEeH4Ax2JLGu+cZLfi1/NpJkI29dyvtxfh2pzUJVELM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753744194; c=relaxed/simple;
	bh=634i2n+ZxGnE1W+uIWnDP7ZXI/Dddo0xiQRazkjEVHI=;
	h=To:Subject:From:Message-Id:Date; b=ElR4FwwWlciEWgzFoFeJEBiokH/qi0nTcI03scK1RKz+CMhOpJsz/dT4Ws2txU6xDYTUzb0XitmBkuBamXdhZVLikZC+1IAh0ll0qlb2LnXu0chdvATk2CkTr16TUP7CgiPV5Ex9zXgRM1pUCVWh1Dvh/GPjI6k6kyOqrkHgQQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQJbpOTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQJbpOTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F2EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753744193;
	bh=634i2n+ZxGnE1W+uIWnDP7ZXI/Dddo0xiQRazkjEVHI=;
	h=To:Subject:From:Date:From;
	b=XQJbpOTcGUAheEuuLa2uMFlHYcCPrRtvfbYy2OCvPNZ/GaeHnPWSrRGcBgyzeB+nr
	 E8mRghXSdJ7MdRVpUZpbOnBsqjcj/3RX2J/DdtxWK4gSUdtZGAeNLLsZj1Xyy/tMiq
	 1c38Qx6C8Le0z1fuv2GgFT5uSsowXfvTFPNCmxWzSxypEChoSAHQoNle7Ta1x2ZO6M
	 23/riy8fL0NWcsmRh5DnnBPc74xAkvBk+iY45pmFgQaqG2T36sP1sbPe+zUNhbTBXh
	 O6ArpQKl5LPokSMwAswhZgeCR/jtq1rhzVMRlF7QbV631a7O096CDe2LkPElUVGLw0
	 s0hg15LSVJIsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA1C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374419357.21308.1569938157555882477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83a733909aba06049b0191428b1d0770763bb4c5d2fa18d22a5a9d6bfd89f0a
Date: Mon, 28 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753744193
