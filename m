Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C12F6184
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772289893; cv=none; b=KAFR/kgwxkEjnee8jPmbhiol1go9TP5xQY8n2eVNBOOXqSvIlpNms76xPpnFA8SmCPVOQyJh/2q3bnHfq3pl9XMCQOaMooech+5r760zicqc2wO2xDSltr5u7rVIPuje4jmYLJnda/fn/JlUHACgrgkvSVZXe+MyZ8Okzv/L9wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772289893; c=relaxed/simple;
	bh=4d0FswsobLbpI7yc6FUDizMe5bKjDbZhqpeTfo+o1s4=;
	h=To:Subject:From:Message-Id:Date; b=VeKC1q7b+au74tQdXk5zO+zQPVdXXuKQy8h11e0WVnFVH6aROZ/eHOBzH67lZk8tlxtSrkGq9TQysN8WG4uW4WkTOBFLhrNsOZiPypFVD/CxQNojjyPZE3TrstyWRouFptnGr8P0qJIWVzmYMuqxmhrP+jfJpbu6sOL3XFU8Hao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etixw4Ne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etixw4Ne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAC8C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772289893;
	bh=4d0FswsobLbpI7yc6FUDizMe5bKjDbZhqpeTfo+o1s4=;
	h=To:Subject:From:Date:From;
	b=etixw4NeUn39Dh+OBrt1gHK1WyN0W0r5k88Lk1NYFqwDGJGAnD6Lpuo20XoRYQrjm
	 iyZOx93/O93mCjWheMSXcd5xNHRrB4X2Rd2sJ2cFjhLPxLPbLVQOdraUef/Pmi+LbT
	 T9aA/xwxv+ZOX+nILmTYR+F+330eQEHgvODXKljZWF0Q70xoW+MRdMo2mSYjAUwV3J
	 yY0dSJObgYu/nAb606d8QKgJWn+pPP1+73Y6KbG7mPkunHTYse3DOfiN1HboyUju0N
	 racg2XfK67eBwU3uAi/LnXAcl11HTzYmRbXEnQQ5sthCNPsYvQXhTOBxPRLiQeDpLa
	 YhqdYNUyuTEAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90652FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228989358.2422.16011863328295155994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0f168e38746abedb3c61a3300b7d6677d30c8b6fd06ae81a09111c6104186f
Date: Sat, 28 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772289893
