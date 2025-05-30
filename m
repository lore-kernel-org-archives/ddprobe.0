Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33094D27E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748570394; cv=none; b=XEuvLuYRW/kxVZM9OvUps3Y1qGk//rGM/Nk0wuD+3/aLpzPzxnAwxaOO+/vX/gXRcm265tLddcbV0eeoZi8UXUdAx1IdqRzZgJ7Yw8oMlMs1tyNSNYfB43AiwfIpE9CkzCpo3ELDxxJDsCSIFNcVzLN2dY5s56m/hjLe+szMn3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748570394; c=relaxed/simple;
	bh=qrD14s6dKebL11wktooGDUi6rR9M2KcBbt/5fqd0HAE=;
	h=To:Subject:From:Message-Id:Date; b=a0f4WK6XVdDQpIsXjWdLrhgunWEXNDB4xhSVm1IpSIled3aj46B30AXWyyvuKbmRNvx4ON1WMwz7VdpqRcmPy4fuiEh43ZVlKMtEuvcskgRkl1HHIrc3TtH/F2eC7J9OAN14Cb2cPitJOtRwgG+rzdyT0LYAgYl31t9gEcCafBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyVrFA11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyVrFA11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0796C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748570393;
	bh=qrD14s6dKebL11wktooGDUi6rR9M2KcBbt/5fqd0HAE=;
	h=To:Subject:From:Date:From;
	b=KyVrFA11x/1YyUj4QuLjFcO16hSf3hHy1ZtZ5A4i2ukTlU1F88ra1FS3SQL6K06QS
	 1YiWaUgYg1qLrw3dXTjlz2YjKkTArImhanjyFXv5RoplTvQB42lvrAcpvZsd2fZuQt
	 BAaGXRrCAhPUPuoarzE3AFWsifblFX6vYuIHcoeapSlOzMvZpGMINTZ3vsknz/SbM+
	 A1lQOLodg7Cq4Ci+2qu86yO4kLMamsioc9/Zy1NxtlXQPSZkzC/pExDcM4y0oxhqxx
	 k6yFOi+MCIS6NWBKuraVDiPFcAI0hh8qURhrVTpEkRVqsNl2lg/CfOmyUfBA4duHax
	 GsMgpgem2oT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD9CC54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857039357.18637.12524997046137710335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e0ec65fd0b29c93a5f2f990ec499f55f9cac75aca6225627ffcc81e7beb448
Date: Fri, 30 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748570393
