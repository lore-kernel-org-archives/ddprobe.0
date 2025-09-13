Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1CD272E4E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757752794; cv=none; b=TwmD9ufxKTf5i7z6AL+2dEZEXoM48j2wXDg64fHSa5yYMAGZsLpWvpfOpBSVXPPhwDK2esAO7ZBnXBju2RwtKxLCEz8SoXdEGUPpamTU+lxE7CGsJtI95hocvwS9SnLFNJg5uZNEeUBf7GJ4Q6mlG9F8OMbO7ZxPJhvGwOCdBrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757752794; c=relaxed/simple;
	bh=zSioyedthrgF01Hqd2nFxk+veoCocQmdYWKcdYQHRk8=;
	h=To:Subject:From:Message-Id:Date; b=A0cgY+E1poo3fq5jyLEpXVAaPoHJ7q8ha8FlLB4m7bu1Fe9PrE0ToL1AjaRoE9O40IP3AUzWSFU8afeIsL6IHlnic2BVSZMRY4i9IPndIR4DoNVhbXA771jlGpZoGU4j7jk6trvkmHGQTCK+7rkpTAtUpY48kVJgPUh2K+Z8x4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYN23j2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYN23j2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757752793;
	bh=zSioyedthrgF01Hqd2nFxk+veoCocQmdYWKcdYQHRk8=;
	h=To:Subject:From:Date:From;
	b=XYN23j2IGL1JZEHYAROR2h6SdY+hyjHQdH9FQLXW/teoA61pPxKx897Nq4Ee0oKwZ
	 onvHYABVnI2cSrKZ2Qq3FhdkzNlz6YocAw0E2r1va9ea7zPIvotGsyZXuoZkHeBmgw
	 otJUX8mxCJMwnH58OCarV2DV62oz9D+uwxQcp0vh2ENCOX/bRIpJW2N3zLgTMfj6KK
	 xC7L0eWDlZ1ZzSjT2gWmFto28117CyDdSZa8dWUXH0Ci5Hw0atS2GGbFIka6nS1AlL
	 XEsIuQLb6aZr/obEsSH/mIOaz1NyDlN82AuQDM4okAmatCG6ATx8/jpNAsfjX4Zg37
	 HssbcIvjXN0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C6CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775279359.19051.6614151017212474731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebdaeb18534b7492b890cceb09e58313a708bb90c7c9035c44324c4e4324ef9
Date: Sat, 13 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757752793
