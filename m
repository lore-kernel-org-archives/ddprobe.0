Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228E52F5A11
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762478994; cv=none; b=Dlw2uSVWrw/MqEA//44WHQyyBJKk2Ida6NvzPZo01YWeKOzJ02nl+GErNOdhp8UuvoMBwSv0Ki0yt5T1bj69UmLXs+/Q4yuZNchomX+mgNpAM9c3UPZoZpDhRaQPNVepQnU10f/TsgVOLxrIU8D8PXuixFWZ+fdtBtxUOziPQ6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762478994; c=relaxed/simple;
	bh=BuV6pEfFiP4rdRUyjTVRbL+Uf+DGfo92Ntif8Hu99cQ=;
	h=To:Subject:From:Message-Id:Date; b=gp7f1rM3u/V5ssc3ZsU/Nj+g8aZNVgMc3wj+IM4BqCM+x/5zO+Wj4XwlPg4766yDjvFaTwdoAtc+USsfy0vFoWr7UR3a0h5S0WhUOsLloST2YEmw6TjxL3dE5WoMGZ+5eyeIfHDh8W8TNtESnftbL79Zj3k5HRz50O26wD4gOTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQFqwX7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQFqwX7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1306C19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762478993;
	bh=BuV6pEfFiP4rdRUyjTVRbL+Uf+DGfo92Ntif8Hu99cQ=;
	h=To:Subject:From:Date:From;
	b=LQFqwX7ACQPZrnCTL3V/vT1m7i5tG+bdwmoVcPItV/F5OOYRoq0scPPjniPUIDCpn
	 nj7SThpdKUu3LufPBkgv5Fem1A3rhWsZmVchrwOruSQooCdTt9oDfsO1uj7jHNnWMx
	 mfjzBW2tcfvoZDZOb1y+oXR26D2dOC30Jki6QftqjbDuhUvEN9rGb7MQuRsdK4gXyN
	 Po5/RumBOv/d75ymzsFoCM6g6j1BbGIgxMSEqogPtEHG1qFV0vkhv57fKM2wuK8y6P
	 2zFo6PleMcJaSpAh+elvuGrfKmttWSJ67j/Q0tSq6peW3ZJA5x+QbDmMJL8k9UTB/e
	 iC0pb907GZSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BADCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247899361.959.8677612567131661783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c705690eb667e6ed09c864c2f5a5ff0bd92090c8edb88e4741fb1470081688a1
Date: Fri, 07 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762478993
