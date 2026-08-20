Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501981A9FBC
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787268634; cv=none; b=l8iDBzvQtFTcLXdbJKCqqrJ/6HahY3Wh786bOk3TI8XuuL2lFCE6UqQsMh8wE8uSlXFu32klbLooiooNmVtSSsVUOeR8RuwViFjYWWUULN+HvKo12rzDAUbxbw93K3NWNvTRXVFZ8Vhk8jBNolDSoZPtGLueeRqBLW7LiBB7uxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787268634; c=relaxed/simple;
	bh=o4YkQt7eO2P5Aea2U3T0u1K1mqvexLvi8i9tapThBFM=;
	h=To:Subject:From:Message-Id:Date; b=GrLgEmKBBiuzEqqXhLD5IqeEA6x5fI2dZx4CFh6jrN8shob9u/RQoS6q41D6LDTw+0I0+hWhfddvHzTDJPlSOqX2NRooHkQuYjoPKJrb5Xj+ngNKqQ6QRuInXDzNQHthU0VaR4RtZTWH+N2Nc78nD7acZDIzmq6+xwJI0yFq4ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOH7iCio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOH7iCio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F28C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787268633;
	bh=o4YkQt7eO2P5Aea2U3T0u1K1mqvexLvi8i9tapThBFM=;
	h=To:Subject:From:Date:From;
	b=IOH7iCiosCs8hBgYpKo4pAfDMArJrX7a0PWbl4UMt7Hh4WweMCfpos34/LSb6DP8n
	 StNiFG1Vq/WO0jpcBStjAKvhxxGfAZid5CvImeyxX3Wl33XrdFNqJdLMHuul7Q8tCb
	 n90Ld7+ADcNpTFOjsrBkT3DwDB0PgiWdJ8KIpxR6OPLc6jqOYBV1/Ir0db3OHsdQw6
	 IQfV76pTAnzJA05LFgi8VStexRpbRb+0DSaGa1q+fuGyMH8W7ZC8T78OL88ie8qgA1
	 9+xPFAHL/t2XBd41vsH+rGPC6VNkZ6EHSEaqaK3peV8YZRRAjcLreKgIfrALHOIT21
	 wpGK0ZetgedPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0927C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726863371.12960.8699168904326109031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aeb3314d94d98f0fa48984021b77a1c00adfa3fd1049e3da4486622df31b9a
Date: Thu, 20 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787268633
