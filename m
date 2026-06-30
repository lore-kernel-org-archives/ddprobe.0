Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB8C382F35
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782796114; cv=none; b=Fpn16oRU0lF3cY80vldj+XY/1tMJYTUHqGNlcO5UW2aQoqUGJhYeb2+3/2+iZQIU94u+UAhQHEv4oS0jPgpZWXl+MrSftjJi1XAnqdmt2FrgZPt/3xxufnU/KQGEhEdsOzCePBe6FHacMfSbdPqtJ96o45oKooLECzbsHp91ysc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782796114; c=relaxed/simple;
	bh=xyvY7po+HdGszWDIB7aZ0+2ZO5BzkwgN1/LpgrSlK+Y=;
	h=To:Subject:From:Message-Id:Date; b=gmMXGQ4al93J8wl790SN+RE8T+OQqaiXZHYwnMEdhIsM8/2Q9taSWUd7QoakgK4iUHtDWwRZjeJcpboEfS9tQ5JYFgU4xq7q3p7qlA9kE/CCRwQ6o+l8JJXv/NRMgBDfnGy49n9AQDeHkLKuMGZiCMiTz6eZVZlsn6U1nvm5Qk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOMQOL++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOMQOL++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01A4C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782796113;
	bh=xyvY7po+HdGszWDIB7aZ0+2ZO5BzkwgN1/LpgrSlK+Y=;
	h=To:Subject:From:Date:From;
	b=SOMQOL++lCGE8Ub2Na7M23UqXwa4j4BL16WMFt42cFPx1vH7lrU4odcweZPYAlQzO
	 G3S+5TMat9tZaBrtW5Ve9Yid0Uc4fG3KkaNC3Is+MVffVTcFG9620Hpp8P5f7YGfCW
	 heLDPkyV7mKyVmAP7oB/atOSJN83AjTPlWxXCWj61aQOPwNSE42SHCNLB98EooORh7
	 ffqfJFeOwIyRkRfoXMFg2JFXr97x1l6b6++FHqOivml0D/YY7ZtZ6BZKOkMCRgLN5l
	 Qx/z59944PnKHhTn1ke39SvBZJzR6hCTd7D9X2mvs6abZLEkC+BdvWrViUK2fCLwvT
	 pPrBMXkOlAqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B49C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279611368.3089.9061983751319255109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7aa6e703706a802e14ab204cdf706e8f2db3bd471fbb70ab86c4a83104ea9a
Date: Tue, 30 Jun 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782796113
