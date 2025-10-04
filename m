Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223A91862A
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759614594; cv=none; b=DKQ7KDdd9aaqYYkUC0M1s73BCgWgpagZEAr+pfwzsBvqhJbMsd9WWwZMs38fdc9B9Wgv1Frb9oRg75mE53CcxzB2SkKJoRL1lJzf6tAPqhpXH+shNsApSaNnPJ9vERSNHCcHAiqi0eBsT235592UUio3SCILSm+2be0HcHKz4v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759614594; c=relaxed/simple;
	bh=ehjBi0npNFsnAD/m3iprQcnMYSuat7yoTu3nKhuCfws=;
	h=To:Subject:From:Message-Id:Date; b=CckeWHj0WpqT3y/IJ3OO+pF+Nhsksov382gIazZVDSglODlO4kDvFZzO09vp3lw043oSMKIuU5wSK9rFhvPQXNk7giJtuBn98MWawzsRZX5sDsOSKF1cs4/V+rWTNZvvPq9AZa+0++mRh2Btlr6LZLGJNU39NTC2r40ZqT6BI2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OowUH/5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OowUH/5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8B5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759614593;
	bh=ehjBi0npNFsnAD/m3iprQcnMYSuat7yoTu3nKhuCfws=;
	h=To:Subject:From:Date:From;
	b=OowUH/5i2dSRalkUaCGoJbKRwEw5LkmrNckSukhFaMbwGu1uZiWug66EDMcVqXhjC
	 cE8yJ8MBku7uvnRE+s3mhsGlt+MkL/zkxG+bOuHI6bfgFEk5gw2EZnIKRZHh2SP80J
	 cByL7CZVZjDFpaikLq/i/BJaN72Hw7FcNR7LK1nu3ZgarjVpjE4GmaBs/hiw2bOXMw
	 2H3zrq2ptU/veZctKv1gwGK9DQaN9VMgoEtzFd7tk224o/s1xrS2cf8vXzDT8BRYpl
	 bM/IHhBsAm1YNCsv+01Ou5l5eA9YuoqvxJ8BPigPCB5sD19EAcetLm0kjB3GBuqa95
	 wBOg4byzVeffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B6DCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961459357.20243.12479009118379459921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1808b02df886ed83c59f171ec2c5c1abfbce3409ff4b6a935f24f3d6ebb19e7d
Date: Sat, 04 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759614593
