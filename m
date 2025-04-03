Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF7D19F42F
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743661194; cv=none; b=WoBmbhbU3Cw/9vEV4GloUHzPEQxPvzOBbgFvZkmK23iAnFjmy1xMx5G1D9MFQHalgnGgaEvA4cmOkhnIZcfTNvXNqNpsYrWXMiVXDhlj1dc5V0xQEGFDIeltk591gJRhcdcV+Le3Dzl3ahELW1KwipcKPT2Nipxlaj6WW6Q4XTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743661194; c=relaxed/simple;
	bh=eUYe1F49oPyuf/HLtgKqfol3lWPlknSI9XxdY5UtQjA=;
	h=To:Subject:From:Message-Id:Date; b=r4kXV8nxPZh7/8ENKPb1bPGsCVym6FVaZ/RskMcadusidQbg6IGgCoPuHUz4qIwxFl+NbW3eXYM+djlk1U3Pgqoz2C6pEcU3hiR6iYLAru8NuV0dl+KQbfgdDJzAzl5t1aG1YxMa78QvCdMX51D5GRTQ9q2nPIP4JSoj7cw9D1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ainr2Nyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ainr2Nyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07A4C4CEEC
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743661193;
	bh=eUYe1F49oPyuf/HLtgKqfol3lWPlknSI9XxdY5UtQjA=;
	h=To:Subject:From:Date:From;
	b=ainr2NyzloRRIURlyNP8myudhSETpT/xbMYsHeyAJhsrMcmTRLivlIDXXjl1la9v8
	 EL2lEO3X9Uzp/yoUySwZl5SfKTQTzWL1KTPCWGCOH0tTeB64PcuCFVv+itC3Mc44EL
	 JCir7tf4ZtivVaVslplSsedIlliYbTKlQwU0Zbi1woVndSRsV3IhPOwdGKdZGZAVjX
	 HQf8cLHQjW1e4Uw9E+FEmyFHBEvy7PrQ/MF3wJ5x/gXtxEpMp/cxVRMoEZeAS20LDK
	 h9HKI2/jzV2/D6pavoIbQpISxj3GBHEH96wx0Vsg3hI1+c82UTPxResQ5xrnDW6C1K
	 p8PWChmURVwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD52C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366119362.31587.10380670817380763647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f4255464180e9a330c0316eae4bddf18dc85251e0e15163bc17f66c15bd266
Date: Thu, 03 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743661193
