Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6010024205
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720393583; cv=none; b=BUSZBbiS7x/cZKn9FlcqnRvQVq/UC7mZKjs7xd5knlxobCwUpNY8mOnbVgs020w8XMhK442vlJ/3C/xbfnJL/D5FIsfMcuV9hP7ltzUUR84N2Ag7yYkDYASlBvhcCqou2btrsvn4VHxzS+W9vS22UoP5t7Rk8WA1metEf2hxf4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720393583; c=relaxed/simple;
	bh=Pj1Ut/Bn5To8+fWZyaQfHeGKYVvdaG4pIo1WSwzHZjc=;
	h=To:Subject:From:Message-Id:Date; b=UuFa6UJ5U1iG1micnKvsixJfGAYlbipBiCmU8qfvhPXLokOJjyDQiO6RqwsfPMEmuLugHdQ06rL04dUCO89Jh90Zv8strswBJXEQl8yK4kDxd05ZArJoojdUZPlaOROwiWdQ3sq3XNB2McaCCEpchbuO1iInkLl45KVRwl8OS/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah1oLpsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah1oLpsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA691C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720393582;
	bh=Pj1Ut/Bn5To8+fWZyaQfHeGKYVvdaG4pIo1WSwzHZjc=;
	h=To:Subject:From:Date:From;
	b=Ah1oLpsD60jdnJIEaZYc/5m5sx+j5sD7Una9r2QE/dw5j+8ziUyICayBBR+a31W8Z
	 Lpm7b5qOzhLDOV6dJ+oEKVJPYDuldVEJiNd7ODn1tcqBZz/pZ83WCNe6iWds1/b128
	 ++Goea85/HVf3x7CHkAnPnvE+5xgmNgvvyvaRFdtsc3kykA+UqEC0knVWDjR31Hb/v
	 5Jgslbkk4qaeDtO2/6MyS1AghFR7MV4aCbnR9d2z0By1QAz9sM274Q6ferpgppkDb6
	 2hpREaEswGYP5SzumEXskswC4KZUWkyVKWgVuMR1uOKxydCd1gMohkDwhNGN8c6X+t
	 6G3b0R+D478+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C02C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039358278.1459.1971442470093119850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69554a18919cec67d519a38c9ab57f2cef4e48a640a240b9879a18f0af1e5b75
Date: Sun, 07 Jul 2024 23:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720393582
