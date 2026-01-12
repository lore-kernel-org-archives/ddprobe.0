Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1289C26CE2C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768260834; cv=none; b=W0++MN8gLDNG+XmeUs/u5e7f/wV6v/8JZMfse7WKzy8GSYTQGm7MhR53VJH2gouzdQGaxzHKBLx5epmwNaGhVRPMTEWm48wATM1jwroBFizNs21Pewi/FOFpI3aJgTG2ET6P8VmDshm8VyefGeYIsENtCXy7dFPA2rUtl5JpSNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768260834; c=relaxed/simple;
	bh=7S6H2ffCCm2kmOBpjMXfMqk78qML3D3IwJE/vvI9Kh4=;
	h=To:Subject:From:Message-Id:Date; b=R3q6mYiKRmyMBdKIbgsx7fvF0uAA81VsCthdRaRV3ad3qeZeuaj27L/WH48Ctg/jjMmLnaJYfwwcXz6hQOyqPAASbR7EgQ6Fd3NOJoiT0HMzH4WkdUMA1Pxlk+RVSI8r6ixeFuw5/0Z7qZMmg4L1to1CcXHNIz0YOdE8E982uP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVLeqjB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVLeqjB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B14C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768260833;
	bh=7S6H2ffCCm2kmOBpjMXfMqk78qML3D3IwJE/vvI9Kh4=;
	h=To:Subject:From:Date:From;
	b=lVLeqjB7eTqIXA3rnWHJAUpP/8zzfomSlDb0UCX0v9/vOD3Yijy9TPWcWqX80WKOo
	 tir4xPFn2cyMLgb0pbScyWPQFu3bvEt5mKBJuSL/2K5ivehbzYdk2b+VyxXbsg7H5R
	 0VRvwIMTfepRw7zgtQQwDmMubb5J4oXe6/sraaavDTT7JGRt4sS4MV7PxpJr0rlREa
	 V+p9z7AGtxBuUXK6lJJpVS2j80ZJWmrQaNt6opDMJI++B1ZMNfw5fbkDJsGeZ4ykhe
	 gJhC1lu4i8u6T8eq70koHR+UZ2RM09UIPT3drhfkc6EtKzitOUQNBB8EDbEgUsFwgS
	 dxdBna+vs6hSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E99CF45D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826083358.13299.16218749620777047138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b80c684509d473009f34e1c1a3261f12caabccdaefd1f0f5de792a6bdaf8b1
Date: Mon, 12 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768260833
