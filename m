Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3472F5339
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760106594; cv=none; b=KOs8Iwk+bQSSM9BAeJrzdtzPTpKa0GHVIuzTZMu1r+zD77jSsLBMIV6ONBtCrhoBy8GnZ5+U6/X9HtkCJL0LEQ6PnpAzLkbY2MkcsnyIfCPq2AwoJzuiut2eCcU7ux7sfiae0fElaGBwqkolE3Y520xd8oup3imRoFMWjQop6v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760106594; c=relaxed/simple;
	bh=yDVyHQqBPH0Zxr6sfzibjlcOYW6CmnhfENjLO6e50cU=;
	h=To:Subject:From:Message-Id:Date; b=RLQXZmNMIIUgJPvPXKEagPXPbpkN5Timz9ROw5abEpEQ+dRoFqsyDthSqYTWN5DcF/hhPM2im907TjOppMkihROEs2t+YqWAgwerSQMfxmlcyIZhkjzGVG/qmZTAuO0XR8hY2ykstrXYrxmzmQrHaNg7RcFSqT6EIonVaGtYnDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxtoIEz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxtoIEz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98DCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760106593;
	bh=yDVyHQqBPH0Zxr6sfzibjlcOYW6CmnhfENjLO6e50cU=;
	h=To:Subject:From:Date:From;
	b=IxtoIEz9r3tmXEYWhmwyUgsOZDy4Wj3ikGH/AnRjFrgIGluzWJ24Y1nTlOJr16b4E
	 aU4gTNnrCSf/dQbUUvM0SwZEEKIUefW8YItCNCia+9O7ahLCwCSTABXT4tnvueGinz
	 1KsJw+kQRs7fy5v0HKdxnYn9q5f/UOaB1SHRKlatj9PGP/LkfXkf0W4KYzf/uCSAsh
	 hVsmDIkryPGSjegZxfGj9boHEWchAOi38C/MINkXDmuk/kQx2z6fO06ibZNUuR8/Tj
	 27/rS4Jxg7Lj/34iZNaYS6a1m1pNL5dbatTY1Yct6d+cWnz8F/MXcR0M+ZqvH8Al+6
	 mj3kgHG/HMdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC8CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010659360.17379.1340451962751564404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd017c00d0467ebb66f4ec7958b7b2fdaa56fe9a6adfdcdc83ac15b4dcc357a4
Date: Fri, 10 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760106593
