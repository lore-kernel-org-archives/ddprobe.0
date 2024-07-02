Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F84029CFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719898523; cv=none; b=PCqUwbWSkuudvhLFOPhi6uSDJdw67zfb9tAeEFyXTwpprVM/aOZfRKXMcf+VpJeQCLpypfEoSa8zHprdV6Dn+LgWVrFISgPTYIuowx7UstR2JuRi4nVyKslq+DUVs2H5iIwJKmoDXI7P3y2s1DgTt/y1KBpfucGIlij8yZujejU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719898523; c=relaxed/simple;
	bh=GOPe2dupPzZmBcxF9pEwHrOKMcVxCimoPUasp+TL+rM=;
	h=To:Subject:From:Message-Id:Date; b=q/cP51NtI4jOPLliiUHDp+gxIR/PlLv23XC3AS81HykG3+1sUGCRx7ebR/RwBkJx1NC1x5s2PfLFUTb3N+t2RiDtqWYbVhNEIBaW5IBfe3yrZfiZL7r4oB1U/thC6UbD2ENB2NGYov9S17p6hGt1uQI1f5tfLKV8VgxeXhKrh6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFsTLQuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFsTLQuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D801EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719898522;
	bh=GOPe2dupPzZmBcxF9pEwHrOKMcVxCimoPUasp+TL+rM=;
	h=To:Subject:From:Date:From;
	b=CFsTLQuzZQd0JIuvk+XHeNxw4UMvWC+yc2S+N9z+uXJpPYs/1x5oBFBKGEYPJjpv+
	 BA5coF9QEAIHzCLX+Vunb3wXbfrpc9/5LaXCeTU2WR9gMiPdBWRiEZOtq4+XcZ5YiI
	 nv+nEtYaUHBNKeczgyvBdJEjoiGj/vA2li3ShwyYImkbF7It1Xvf93sTszhXNyy5u0
	 SpN1o3RT4YiIlc7BsKsjNOY71+f7l90bv+g1VZVV9+EljsnCLvHt/5cnXYm5Nuv69j
	 CJQOgB3TBCwk8fDVhfWfIREyeXLG11kSbQy1XOoFHgODOMWIQwvXeT5H2pyuUdtA5J
	 FimI9Mxdyzi5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EC1C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989852278.22190.9438863117444841980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ca1db3adf751d6454e18a509c1743e60ebb70813fa8f6fa04746160733e4ec
Date: Tue, 02 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719898522
