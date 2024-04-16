Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537AB1170F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 02:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713234563; cv=none; b=i21QCXlyAgxiJrrboirGKGAkrbduSQVIDTb5b/9y5j+pUv7NbnN1MgoCOqUg9eKrFBD2RX5g+7ltBcLkazR2d1llmA80+RlDGUZ7AT+Vgjh0rXaXTw8CxIjALIvmM0SnAAR23DCRRCWg0Ibp22vbbo/bsbmEeWBDQ3I1Q4CBzuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713234563; c=relaxed/simple;
	bh=1SPZlT7ixB6DlgeUnzaRp6U30GS92OIz0YFvCIqKTaE=;
	h=To:Subject:From:Message-Id:Date; b=FC3iQKfGajFGvIzae7GB3/F8pz0MdGO781h9Z5uZCUC/61oifgY8qYW9YxZ/jY0uQd/qXCnuzxiwisgLAV9YvDDdr24HykZWs5F4d+cdW5X8MZx9gz4vL4lnKStlrBA7aWoKNHtdZuAM3mVWEL04huoA3ZtJ86gkc3bTUaDvKFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGns+ojv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGns+ojv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF041C113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713234562;
	bh=1SPZlT7ixB6DlgeUnzaRp6U30GS92OIz0YFvCIqKTaE=;
	h=To:Subject:From:Date:From;
	b=SGns+ojvHsmx656QePrXsHxvm8usJ2yN/bL3XDoiTeKvqGq2CcFvFi2EaCP86h73Z
	 0s/e0MTghLDwAIL1q4ZIMWvjOYMrm7c69IhZvmE/drDK044w7BCyQJea/OJqDy/4um
	 qtHEUeWn4XjqaJNJ6+68tmCDgJxEdf2RbfsLIC4fS4h21Opb8zN1dgSC10r0vw1iw7
	 +6vXMNe0xUtfiiB80Pq690ySQp/CuAvVPFuQyH4uZqDwJQFzB9rlh3P3zIfDzDJ047
	 HGV/Hk6sRc/jUVS1KS3qSePvee3CrF9NAKO7buSNIK8EdPjiJeuK8vpXC9jr5HKmvP
	 CC1QjpkxrUQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB55C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323456276.1895.18010702909979257775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5975271cdc8b0eb0fbc4e83eafe839d103d7499a33243df023964925aa65373
Date: Tue, 16 Apr 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713234562
