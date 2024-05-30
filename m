Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F6F2F32
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717062863; cv=none; b=DbZnGesoaSatZe+kJUw+gpD2qZhGvTfhNiHYK3MUXh+OLToQvzwHbvkSIgj93aH6/JVojRjAusMmWBZakKL0Kw4hKGzCVJwSPgeDZkkf/W4U2jYXDSRpDoXfyEIynzVWCBUGDB5GOQihefbgHAJfhBbQU6hMx6DSn7N1ZgBUCog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717062863; c=relaxed/simple;
	bh=WTv8OAjpvZcSKdYscwG/LfkMXRF8O3tBjXodvHtkBnU=;
	h=To:Subject:From:Message-Id:Date; b=qX39DtQUEzaRD2UNFzRfX5/SuX93cXwvXUmBwT4b6hoM/QpIVUauevgYrAUUh9rkteHdMOATaBYVJHTDk6OTjGfsZGeAEBERj7x87lUVsMnHum8W3MaKjWm1iobZOywhWEwhUN3n0K44KPMtLsjRVCL3cpiibIrJ6xnD+UT4wkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnP0rL5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnP0rL5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D408AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717062862;
	bh=WTv8OAjpvZcSKdYscwG/LfkMXRF8O3tBjXodvHtkBnU=;
	h=To:Subject:From:Date:From;
	b=hnP0rL5KPPZ41WVz7eZFFsYvmAAYdhPx7Bbi3YEJ3utsJ75xJVW5fI/qEuT2AzeyY
	 Ak62LCfBdmvEaeAVo9Ynd6O6oh5qjnBSEhDcE+J+mFmpBog1USj7RMNg6XkHCNINGJ
	 qbHduL+QlkpJimgbL3jGcKmPBh4+CtpmoRf59Jv/nYry/UO2nEMITx9fK//vMUeITe
	 HFRyQ2Tl7+DqgpBVL1KS+0AE4/LlIAiZamXFB9A2Xhm7xRsTvFBH8tTVV7TKgr3N+m
	 K8B+VaAHM44hOt9hGEzDYxxdgkSlmNtggkcwgmuFNjSh8Fod4iC6byE9lCrYM5Fhdk
	 7QPtA0Ff9HK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA48C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171706286277.28767.8819676090536447281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e993644cf9657990e80ae25e911453fdf858fca1cf06ff1869121520000f3fb6
Date: Thu, 30 May 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717062862
