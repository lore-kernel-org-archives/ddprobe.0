Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5708237755A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788371434; cv=none; b=IpY+URD9RTaKBqNMwNVVxBqGYrjsFU3vpccphESNXWN7XZsNPDoY/q2Hs22b/rj/9pP7+J4+ERSs3tF77TjAzKo6vlob9eD1Rro7qLaXMK6dN7vjeJTe2WwZId336At7jgK2eA3ag2HacCCNSjinThAXtDgP3sTXaJOfMrWDmco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788371434; c=relaxed/simple;
	bh=GypAOsE3JqNpOW0TKH2BGqsSFjhHB8WhpGSmuNai8gk=;
	h=To:Subject:From:Message-Id:Date; b=kvbcMaQ9hx8U9zJuierfZZsIwHmsuO3rUUWUZLVHtikkPJqHpXS8aA4DpT/B+vQi6RBFN6gQJlzhWrNeOi4zRiueaMy9Z84EvjNEhEg6A0s/W8OPW5hsZL9GdAOqF2V9H6qp0M6TTQUPOGNflk/doGVlgqnvgWHdD6dLQiDgSZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8kB/wge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8kB/wge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3FAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788371433;
	bh=GypAOsE3JqNpOW0TKH2BGqsSFjhHB8WhpGSmuNai8gk=;
	h=To:Subject:From:Date:From;
	b=G8kB/wge2Qsq75SQbIJEj9I2pCO86/tSEkm+YPD1OI++bQUzHuOuGo500WH74tj/n
	 HBPlkpAR6oAgSNcAUzat9jLOhpNMTty4WBBawNGpFrdwoxDL/F04vHErdLR2n8bLOi
	 IAn7SydDWYqdpwYfXFZ8xDXJlDOeqDIQFBteRBTIPPR188B2ElGA3Yjeth+T5gIoZK
	 BHSYtJLqOO6raVpSof7T8jopwGKzF5IxaVJHtExEpegcbda5a5aJ4IkkR/z7Fa+KmB
	 IQ6SIl+RlAI+0GD3BbyaZAnF2nOtUgerjPhvUCO46jXMyDHqL+INjr8ffgVY5xRJ/L
	 XfEUvkqqLnx0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3AC624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837143368.7958.1131211595967736313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7f6af5a2c495f3ecbfa865a5a7c01f093096dd4175592ef9c122d8896e315d
Date: Wed, 02 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788371433
