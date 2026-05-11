Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F3402BAA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778514634; cv=none; b=MTeSiKGhVpL/sjeWSuW75J3JJApDE0Esk/qc+Mtsp9IACNRHxWNMKHOk6mSNUBNYbvh4CChZOkbWazB+HtM2+l8t7OWX86qcVlU2AK8mInOLQHULpnRXa9WwoQznRQQwXcRvJTxb6oW3UStTqY+GlZxqSYcCtbzB7996q9ZTKpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778514634; c=relaxed/simple;
	bh=+9iw8WKBlExxbm1cRxQs8tZuddhrb29OggchQmgVdyk=;
	h=To:Subject:From:Message-Id:Date; b=tkJABbs3ovj/3o7mVOxRSumLh4csIdhgEf+r/SqMcvXqLgK0e48dRAaHL8cGGaDKZls1TTkLjSTGD+tzMTlyR5TxproQ2JoGloOMXCliUzd3wi11uQO17lPYc4qrLhExnTbimxHhqoRr9zfw4f1CBvt7OqAU0KXiOtm3ErWem60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNt+VoI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNt+VoI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB994C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778514633;
	bh=+9iw8WKBlExxbm1cRxQs8tZuddhrb29OggchQmgVdyk=;
	h=To:Subject:From:Date:From;
	b=qNt+VoI1ZzWGmFcEmmAzyQGOrEucofR/ZiqdV9NU25vldTVmjE8Zk4Waz7sRcs4D2
	 iAT2SnX3fX/7FVLvD4OOwFm4h68TDeILW7dMsaTC/PcsIa16ZUpFg6P++HjCPymc+j
	 a4bJCBE2AgenjwXiRParGxNm/sfvBNKsILrvqyvh+sAvJkz1TCma2I4o+/rbQhRMIB
	 8g2bTi5roXLh73fp3Sw5JEliKWZyx3cKjWS4VILtHPvJ+XdTfdunWpU680p2aq4EKr
	 QkwkyncqqJb9dPu/PxhXiT//eQU798nCb5t8NSSyGyZ+ZrC77zN8EGXNZWssyUsoMf
	 nW8baO4OhX22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC65BCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851463369.13596.12115033065144259489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14574f36c36649fcecd77880075bfa27b4a5009df36f00d828f3eeade5c6e96
Date: Mon, 11 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778514633
