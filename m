Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CACB33D6FC
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786833034; cv=none; b=YpXatHkUspUDd70o3DseFNyHzW7Ry4ob3GAIvRZKrLtr/yZcKZwUMFjYhnyTyDwrIP1GJhybXa5k/gtl14mIsWPkYRkJXqrXtKp8CRWMVnaUB8/WRwFqjD6dlB4MM3BjCP2iGGAOLNQBezATMNKwDCdWJunD9sGoJX4x8j2sQGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786833034; c=relaxed/simple;
	bh=zN6JDmAQ9OjwcNEsOCfBEVMzW3/EE1y2/VVVRbhR0ZY=;
	h=To:Subject:From:Message-Id:Date; b=ofewTfnAnqCi/7W9BGr3hsmfG6v/ypZBvVz88aG9G0tjZ+oQ06sRd3UFx8+eQ2uPwE4BPZdymcidzCZXgmFnLEWljTHgkr1Xq8BFNO2djRa25Z0PWIFIoO68corGXzQ8/BEZGxY24uyJ2hCBCdtYuz7fTRGVWxJceMps1SxEsls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9ebBmg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9ebBmg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E51C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786833033;
	bh=zN6JDmAQ9OjwcNEsOCfBEVMzW3/EE1y2/VVVRbhR0ZY=;
	h=To:Subject:From:Date:From;
	b=l9ebBmg3/G2lwgN3tSz8CiwvwMXc34/irrSYHmmVcGb7Cky6IPbsN2stqYzvArTs3
	 GZGhAY53AP4QS9LOBbpE46CuiAmNGJ6pmSkXFUAIfWnaRJ+cEDvI4ezu4+v+W0I9Jl
	 518EicFC56afI37cy6a0ew8kCMbJQSBysyOtgnIcbefde8h+oUnkIcTPaAP1cfIqT0
	 w+R3qIW5RE9uu4vnyQZXjaz2Af0ZyJbWlC9b0C/aEpgTFBudK3aNI/78n28Q/F7iOZ
	 TUzTXPr2Kt4rhmZ9QHM4uWRE5KJNkF7EjSemL34JdGtcl888mVxWauJEJTG/XtM7ZH
	 5B6v6VG0LBBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AA8C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683303368.15640.14529763555333746842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d1c1500d5d6d29527cca8b422198587f99b53a8523c621c4b190ba8361c36e
Date: Sat, 15 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786833033
