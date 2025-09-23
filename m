Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07B13959D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758587394; cv=none; b=ahhPtTGnSfYuxP5EVUIPBQWaHTPPG7maGSf1j7Ivvu3Nh6Pj78Lh0WorTQKoudit0SDMSghpXAQKuu8bTy+oYxvKlPHd00AENCwlo6RHU/Xv0BS5zrYgiMuJX6EzRDUFULkBKzGPRAZB+Qx6OA1N2s2/LAQGUEmB/VcDrYYGyzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758587394; c=relaxed/simple;
	bh=mFq1Ar9N7Zw3O8ACP99aYd6jkEc9vFZgUCpYDvRl0KE=;
	h=To:Subject:From:Message-Id:Date; b=gBrmpnrQ7abVdTsIYbI5lgc7/RK5iSctAL/c2yO25N62unXRAcD+I7oX/jETzznRMgzizsQBM4dIM5DdGAiMRhSDp/KLBZ9o2xf8GMkoZKVPPgR2FLGMXg3zhi2Bf+sglY5hPnbJ4WsNQWpCBII269gyQWecVfYHgLSH1ObLOqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcJE90ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcJE90ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6844C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758587393;
	bh=mFq1Ar9N7Zw3O8ACP99aYd6jkEc9vFZgUCpYDvRl0KE=;
	h=To:Subject:From:Date:From;
	b=UcJE90ZUI3cnlCcBOHWB1/or/y/fkXlp/OckBfMsf4jFF4cgUt6xgSnm3lxSSnz6v
	 g+0B/GER1uImIQaSWQcnpZxCWZB25OBoTjvP6HRxW3mNcdzWSOp86TzpHkzJohhKij
	 9B0O72trEJvqPJEvUffzFFkvZMyxRO4hPZGJRbdxXR72P/JRTPtVxggi0GJUszJ88d
	 E+uT0BB5+EQIvvs/arDpE9tgllhlWW0vsygWkloH8IAnlD0E0+cBt7xp18ehNtdLPV
	 qkoDqWX1FtpkI/qDh5XEBATkcMmsiXQDaIchIcZxc1cR+6aUNP5hcnPMSDAcCt4e5X
	 Bx5OmR1gPHHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628ECAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858739358.18472.2624386287306718346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f4eecb4685236510d0581fd2bf8971ca46c58809b688ca7b88c5c44ea5d629
Date: Tue, 23 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758587393
