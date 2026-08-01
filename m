Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50941302163
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785607834; cv=none; b=pXxX2rOj8UwQbrpw1go6gkw9NVSim/KzKm9Cfe2emJK5qtoh2VvlPJsD3DQmGAVTyBT3YYkoMtG2HsYph/q+vMqIHLRXtO0TT6yo67XNBsnTI3A+3oVl0JM7izLrdXbFrxiHOqco9zWGEhslij1rPugUHhhxuc7HARxzfmoUtBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785607834; c=relaxed/simple;
	bh=NUH/eaen+AoTPbtEO56Y9wu3bZrb/9PVfAsjdmyazGA=;
	h=To:Subject:From:Message-Id:Date; b=S4D8IC7SC2buofP0PAsS7Ixn4KqjeReoVKZ3D5aYDT8ElUHPjwLkpYErZVxfRY0A+I/xWnaqyi/bnUroAG5T043Wil01fh0GHkPRCCOKcZtcFUiBXxSJ+h12KIAnuvrnNAO9L9DpN6r0f/CvfANnxt5eBuXSSrabt4z0XXV75DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnqvHohF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnqvHohF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB151C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785607833;
	bh=NUH/eaen+AoTPbtEO56Y9wu3bZrb/9PVfAsjdmyazGA=;
	h=To:Subject:From:Date:From;
	b=OnqvHohFDMSRWy01mqSCsTgER2JVffPWH+tRBL4KyUuZUlj+NxngZTwyswtUZ966M
	 XhgYvlWr2bYOQI45tGsxwbZnoR1Dm2IK6LNi1YMJJleYjcoWj+U+a5j2DmHIAl6XZb
	 8UNXLlRV8k2+3teV5IqdAGLxk2lMcvurHLBRcVEvTgduVE65Z0LhL0kIVqyzCqCwBl
	 bkOsvwHxz8cQwGCoBs4xSI7CCVf+V2KVaeUDmAiB8eCTp1qx8He3GgGha1POLynMtk
	 VI3QDdsnnk3rJCNKwiI0zPT/X1ccuZFrDXooXDb9p1aYXQw4Uq7lQycDrEbkmlTYkI
	 MLCkOyTijV9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47EBC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560783371.5847.14345398136707171907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d9d403648dc56b78fbc31f93134852bf3f4dbc1b95ddf7e70b89de9a11eb97
Date: Sat, 01 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785607833
