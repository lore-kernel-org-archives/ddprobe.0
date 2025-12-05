Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132EC78F2E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764910974; cv=none; b=iw+NQ+cE9fXTn/TWtO/YfRKrtm80Jf1ipVz/ywMFc3XbVVZxohmYTtbwEZBpajyZprq7p++eOX6gtGSw4VGUUVpEpck/2dBGr203BX+rKglvAAIhE5PfdnXaFMnHvsBXHuWkfzOlNYRSa5VPvmDR6+eotfLqr2B4zOp+Fa/NZmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764910974; c=relaxed/simple;
	bh=Sk9u4TVYdJYlKYYfJ3IY8Nmzta8asX/WmzmP7JsZDGw=;
	h=To:Subject:From:Message-Id:Date; b=L/Dh7/eWKuv/q96vbMCnz3VLWI0T15SGP8aGJedgWotO54htjFISqVJi0/+b1+JIioMt8PKlVZTYECqHsOAX0dYWIe5svIY7RgdKK4o/ssJ3oxRyOh2MMIpdkKzdzjKq/S7uhZgG/g3pP9uNUSvfrnFfCkLfxCgvdHycwgrACtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0WAJIPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0WAJIPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D567C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764910973;
	bh=Sk9u4TVYdJYlKYYfJ3IY8Nmzta8asX/WmzmP7JsZDGw=;
	h=To:Subject:From:Date:From;
	b=F0WAJIPfKreVFtlIDjUd6KvLQg3H3koliJyf7vdMCM4wFPRtBXi4WstbHHHVVO4eJ
	 /KiTHicBu1ii3Pc1IKq29qpXMmmlkFzjj1mWkictwGkAtYjsZk8C9yTgJ0u5CIA0eU
	 XB9kU6MSPSjuSx2xOmv3SAmQsj42MbjbJOrMtz11RyrBbYk5ihTNCrRIkLapRtzYUr
	 8LxgQguTE3G+5fAAAHgHLfXUyDfMA0OTal98ZeNMu8LyO8OcC+FKBPLPYehg8kgSvn
	 srZZQhih7R63DPZr1UtvKriRu31tcK28RoO8SIPPcq1arZtG0S+NkAfcWOIBOO5Z6Y
	 Q/6lgiULN/lIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FBD2CDE3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491097358.9072.8950993233791248459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0d33afbb67243acd99196e91a5b422d248fc59c4f598de9d07b3e710f898fd
Date: Fri, 05 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764910973
