Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E145311C3E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781465194; cv=none; b=ouk06O+i8gZ9sW5nfzUvCyx646SntdAMNLiVRh33q4l2nh6zKmv9i0cg3mu2rAXrXA/ltzcMgWODLa2PxZ2h86Cwpo9NR5fExFDMiqM1/sLMSnnEYrWg4BL4c9krzRyD1Hc84MqUWGODzKWbxTYSALEZ2wcujcQ9T4hYmxIFnEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781465194; c=relaxed/simple;
	bh=mqCUMXM0Peb88q9LigIXdkWk4JgYvE0HMS9QTeKu2MQ=;
	h=To:Subject:From:Message-Id:Date; b=OOBqGleCNxWoz9v6ApGNUzIDmT47gfMr2mHEWVuCbiaZvQdwhbU8aS5DUVLr/iTqkQ54k4Z6HtDgz3Nhj76EAah/EtgIknnHOd5HJrk5/a3kBBJ7IYz7PCECP1Wgi3cD/KXHCczHrja4f0RJx323o5kY/nRq9O2eFE5oZndqPSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFrA//B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFrA//B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61B9C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781465193;
	bh=mqCUMXM0Peb88q9LigIXdkWk4JgYvE0HMS9QTeKu2MQ=;
	h=To:Subject:From:Date:From;
	b=vFrA//B+S5yOkLnrS5nnqsDPxSCQ/Xzr4fJtWKl035BA5E9skFosW1hyfY3ulKO1x
	 pCx/JwECxF9wKEVbi99vXCa4yoQ3h5N84c0hHxZIBAm95yeJomZlFpsytgUWtKtyqD
	 JILgYuq2IcQAs7wEzjxJ+bLs2DzEXz+vPk5ge/sP/yZyrjzVciUfgDf32KbmeSm7BA
	 VRkItDNlWtKId6sSq+wbJta7g09YrvMlufrXJQtJEKf1tYrgVsamCjrDyHvYHm35Tt
	 LarlwAPh/A2XPVPYA2V7RvauRu/aErKoOaT9SCTrWkR4I+wWngOx6NPorZs1PG0TvG
	 s0ohc9QRpuWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC640CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146519372.3374.8986744669373957606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7162f389f8c32b54a59d2e26607b2db4dc16745c5e3c7bfd0bb3662f9f4cbe96
Date: Sun, 14 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781465193
