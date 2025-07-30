Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF0829293D
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753901393; cv=none; b=qiiYBko+Avq82STwaz3dXTjtWE+4mwqkkaKy5JbY/ZKz6YwUi9E4zLEc4x81FX7iISSRujq1Q1Di0M0jOME3yWVwKDBxmSrRSEyXFhMRUbD6iDuVq+E8nhPG1WK1aDyaHITz5aDIYfxAU0tl++q0c03LFxxwbUuR7OlP11bT5Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753901393; c=relaxed/simple;
	bh=kQfNLpKNol4BMWH0kwOtJyQn2Uy6qqoYMEKvXuU3ltI=;
	h=To:Subject:From:Message-Id:Date; b=UOUSr0i7N6KSkH1WO1zON8eS4UN+rEY9MQeA4fLw6NdqYk0zwpZxrL80ZHVJFmbrkuxKD2HAOXS/umr1P6Ilj1eU6x3BkwEiRsFCtoSuAz/LItYX6cvNCTnkv57AttX/VuVh4kcB6/l9HNz1FNr5qvYbDKMBrve0GVz6kan9qfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saiJGJ1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saiJGJ1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A0AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753901393;
	bh=kQfNLpKNol4BMWH0kwOtJyQn2Uy6qqoYMEKvXuU3ltI=;
	h=To:Subject:From:Date:From;
	b=saiJGJ1shwdXvDdkEmT4nH9yaDiR6x1n5k0703P+lOWnCtA4TIMnb2LsdGtYf3Sap
	 9BsjjHlfh3rXzzoVixygA3deGIzLCYgP/yWeXpDNLko2mtNymZ36HmDp+2pm1V4uTn
	 AEdhFSOWSy1gxBPNQfypntUS0YACCovhd3TD+Ne2/dpp5YAk9rOyKaPxDZT8MssCLE
	 HPJTGAN5pfL5IavJpKwi55mup/7HE/TZCHmgwrQb4GQB4VJBTtntTwLfuWsKXW7E32
	 97cp5g+NC/XiXe/nLoefVwUJcEnHHrFiCpyatcDAaGzJDyVlpOQgSKqCLwQT8Rxrbk
	 +j0dKHsEOVlRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F2C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390139358.13862.4480654734107026175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b28453129b34f344e2604e5018153f3faa2241b12d74ffc803250beabec735e
Date: Wed, 30 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753901393
