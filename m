Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBA13ACA4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781648794; cv=none; b=VC9vtSJXxEgh4ynLwgdNo6/yEFuIyqD52bd+lgBn11S/0pSiFXl6Jh4PI+GITtLkYCKLJiTnT6P9ygT8CMAlvtw1eTzmhsx7D39+V1iHVuBUVxVefEn9qjJLQ0FskXs+GGbHI05F1CxU3zPmMBaj0x2Q9TqZYI7mY1f5now3VE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781648794; c=relaxed/simple;
	bh=RWBQcgYFjcTN8TbucHUig1zWRj+iLx/8evrAxsG5hIc=;
	h=To:Subject:From:Message-Id:Date; b=dtCmN4cDbwSfkz/HxCnxDtm3Ik7U7ZTMplH3oqV5fjs0fMgrnbxH69yGLP78OFsJzX3zlg+LB9aSoywUgv8GB5n+5tVH43f+1e8BWY9n/HtK4R/QQ0N9xf42El7MNF47d47y6WOsfWehRB1DXFcPzZf61panOGL2B+m6vgqB2yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY9Ye+0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY9Ye+0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2F7C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781648793;
	bh=RWBQcgYFjcTN8TbucHUig1zWRj+iLx/8evrAxsG5hIc=;
	h=To:Subject:From:Date:From;
	b=BY9Ye+0ByMn2jDjgmIIws9Up04PCp4kNXv+QBCTG9y9RggEDF0Na2VKEhgR7bJpZe
	 aLoRDmh3BNymE43uvsQJQ2avWjinooT+d5H2XgO//QvDa/Gx2yJDdDZ4UIBL9LcgXP
	 NRImEYyvhoHX4rKqZZYkwNMXY6d0nn7dGPHXMuhabV1Xf/77//mJv6x07yhYP0RlbB
	 sF02gEVsFTUB5/yS6Mb5v0OPB/dcNovwFhJBu2Yd6kYQbuaP6Q+tCwQstJxGVJGG3f
	 sBw/xvPj0+2CAnanb4Mi0rK5X1gvEsUTXpQ3I7eUDJLtPBe3SdSTDy8ifyaLGz+/dn
	 AoF7kjLSqDCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1813CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164879369.24651.9333896959206464278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3e21cba39327be831af1b8292575a1c20254701c67bfdb68541b5be8258ad7
Date: Tue, 16 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781648793
