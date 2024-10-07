Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727418B491
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728334554; cv=none; b=iPrhD0lNFCxVy364L3rYWRgCVbgVY5nQFj6aMV/Z2qI8XCvDTcxO7zwVHS4YOoeLJj2+TT9Vkgoq5vbrrPKxZbugwPBAoYlUObkwmIeaaq3PHshGOZ4rwgHABqNjBHtwVA4Q+1lFTcgh4F9Hp/IAFjJjVw+ZOSp+NOcjcars42Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728334554; c=relaxed/simple;
	bh=GX87Na4n4h8mD4F5lPPxgbQlEzfO6eNUDYKRurHTZ28=;
	h=To:Subject:From:Message-Id:Date; b=rwgeKAdmsX19RWpffHfn7nDVPje1rOvgd0L+tPlCyPD/7LjBBHNNOkA4njkdWtdCAayxekWl5pDJz6shfTSkyPhmVNjCaML0suUy58gQg/p2ltf+gvenGw54Di9opvfKgc+TDlCyAEJWzTRFYNXtpDOvUJ9HwjYF95uO/lNjcZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKWZ8ni5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKWZ8ni5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AB6C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728334553;
	bh=GX87Na4n4h8mD4F5lPPxgbQlEzfO6eNUDYKRurHTZ28=;
	h=To:Subject:From:Date:From;
	b=WKWZ8ni5+b9BbseRontiEj4u8o6CuJ94MUUO/sppX+9CHpX3XobmejIrqJGK2E5XA
	 OqDCZnjvOW1ZN54doVK2GjiEO905QbZPTUNUxQN9a95F8794VaCg7IsUHgciQmD5ou
	 pehdy3eW053eGCt5BKwLW0ky3SZ4+Gz0QbAR6dMWu52EPPArj1Rti7AECymAMDstyP
	 +r1IL4jO+cGMGLebc3nW6OigsLf665hJyy1FwgFjw+XwkLjoLX6yNbK7xDf3f2kZRw
	 v7U/Iy5z3TqVqmOWwEaIjqEbJylla986rVLRLDC9+lh8REPGl5gqMBhj2lTI6Q1rsS
	 +BxzLj7MxCoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF460CF886D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833455366.20739.6001350473184859409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975179c3d1f214a084765653aa3d858fea87169fceb117ad83b8c2277fa906c7
Date: Mon, 07 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728334553
