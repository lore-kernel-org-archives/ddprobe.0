Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E91F2D7DE0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760942394; cv=none; b=Md6E4534PrSerjvCB7Hg05HwUTrSLjWi1dnseisPgFcWZf0VNxdX/sk8ngU6xDvJ/N/HKcN1oR0SL0JKqHGt/sPeo+7NJslxyyruT1aw+lFhJp9vaYSJuxUOx/KEkpyiwZbkl2lcXw474Bj3PRszLaN4+dAyGMUM4pl8b+pEcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760942394; c=relaxed/simple;
	bh=1g7HozwkpsJzvnxcYr9PLvdOTm1ZsZzatRcCB+sabdQ=;
	h=To:Subject:From:Message-Id:Date; b=dfb9V1uqgDEDouVgqK9Ut04x4qbMSi36Q1QwuNrXeJjegvPAXd6tou5l/9/zJdEsba+VxOhgC26K2oKK0uaIq4MpyzaecihyDg/W8X3f48ujmurwgIkjA9IJ5IbAwhUnsOELy9MoRVGVVLLrP81CIXd6jAjegWbsg7bsya21k3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGKEUooi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGKEUooi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C77C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760942393;
	bh=1g7HozwkpsJzvnxcYr9PLvdOTm1ZsZzatRcCB+sabdQ=;
	h=To:Subject:From:Date:From;
	b=WGKEUooiiqJ8WyZwnKHxzdOxDXsoLP6aqrdRUhINLRbbqKRGt+6HDY3wEtOC8R3/K
	 f3WySpYO5K9JMB0biIGm9Q/wncGCErVFv+EtM4Gfpc73zNCl+vHD+DnzxZpPUY8JTa
	 w9ApSDLRw6FOnm7R58ESuaFvf+Nggik22C37xDqFG/0f4GpsvU2VhbPxnv7ScaqKba
	 zeJLAB/NfSlmsV+QkcCHeEWzE3s8n3TvP5nysC1OG9880qKoEDOW0/g8xA/k25RArr
	 FZfyM5wDUzGV6h7bA3pLRPtufl+vBgovydcyYlP9i0aKPyFDIxOefRyklgsUA9LDx9
	 Ds0X1UrS1Mfzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C0ECCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094239358.8588.13140375724299859041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29efed01ed5c8557543ec8a77da9944859ec3f87a0a9fd799a0795075a1c8e6
Date: Mon, 20 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760942393
