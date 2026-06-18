Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4005E35202B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781826394; cv=none; b=Lsk0KvY1nRAtH+ejYtsDnuCydGFbCuCFgkl1Zx1JecLAGS5NMidxLihQ6JG5wM7wuRPQlvtznoMCcltcl3QOqOJK6RB2TZJTWUR8KBQ4Ici9eXTEi95RUHORI1w7SeEAy9qJSw2Jk9ft/BVVHdv4KSHGMJ+HpdkKRTQRE4BKncU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781826394; c=relaxed/simple;
	bh=m/n5bXCNl2LokrlPg6wsm6xgWj514TyilKint9/Rsbw=;
	h=To:Subject:From:Message-Id:Date; b=mNao7pgVwb+7AjX66XXw2ORbY73+0gNWD3VrM/8Q3tmUDBFqjzuX50Zk1luKl88TRtMRarVeO/QvNNGibEIV67ENhXPuPYzHhXjVan11sU4vM6UgLLl2MTE86Hw9Y1HhWAKFcSTbqnM88SHLsZXevVS7ZolOdoSsyp5iW/Lbmxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1c8Llwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1c8Llwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC389C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781826393;
	bh=m/n5bXCNl2LokrlPg6wsm6xgWj514TyilKint9/Rsbw=;
	h=To:Subject:From:Date:From;
	b=L1c8LlwdULBZ25PAeQHu8G8+RT/msRhjxYIPssVAnMvE3BQPfUuQ3BElSvMBlKu+0
	 i1Fyu0KNVLFuuD75GGL+FlY9kARC16JxmAsViE/IKvByuUyR1kkX9R+mZuGKUk7k9v
	 y6ArFnEDT1POTqPuRvrqaIxjgiMTGZlI55PclTWOrnTgns1g+ePqETR0hASLENEbd9
	 VGR+VzJihI8EcCt+our5vEZQuLbGAAVL43dq6MNwstoPhkg0leiDS3AYXT744lWqh9
	 gm5FBcGqHxcanxGyonE81Sc/rA+UAO9C+qzfNFd8bOzAkbhVwupc1qhbh5BbCJTpvK
	 VB+fILhKp4k7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B009BCD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182639370.29653.4789403553029040800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb6a0ed7b14961efc3c3092a479ac245b8f0e9faa513e39c9f58375fac198fd
Date: Thu, 18 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781826393
