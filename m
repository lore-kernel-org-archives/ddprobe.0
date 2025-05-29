Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35992278744
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748515794; cv=none; b=dtzFp2Jnm7Nnx1bKXJArHnwSSwq60kMEUbajPg8ZSFtVpVneP9fy1jTSBJqPkudV+uYQkIPpPjE+Nj1ebbUfXd8gwk5DMIL/KU7+JaIT5Hej40t7L5y8u6RZ6R+yJyZ3x92jcnKTXh7SGcsdQdionoIjxAOyCAvyyfH0VHbSSr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748515794; c=relaxed/simple;
	bh=j44vFaDsoETU1vo7bxNaXAMmjeqP9su5MEZ5Ad/2lpw=;
	h=To:Subject:From:Message-Id:Date; b=kZFemhpi6F679DIZnw7KiFJaIJaIpNqdh17x/pLEVnKRnukoGB7sY7hBpkULKPk6SjGxtnsvabyXXn6z6uxlLvCbb386tt75Y1bkz/xcGSQ1XO/XPKAa80/Q6wimLtfOm6++RsGPhH8smTewSPJ3cGwMBI4554SPMqeHOQBWFoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kki59rj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kki59rj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FECDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748515793;
	bh=j44vFaDsoETU1vo7bxNaXAMmjeqP9su5MEZ5Ad/2lpw=;
	h=To:Subject:From:Date:From;
	b=Kki59rj5DoMDKR1UBvRXVecq01ktC+kyY8AQLZnKghHFUkcuqqMF91HFdr4ZoPg6q
	 4IxKLzWdrE/Svk0B+5yjRlwgVqJmo6JPjrh54U4hBmlshAP5btCGiRtAXifae8oTfd
	 bvTF2WDaqmhhzRGxt+SwF4qgefKPYQWiUpNgfLSr8tQCcyZYlOCt2NqoZwOSS7mt8E
	 y/Dkuyu8Eg+S0IVSCPFH6RUXI+7lXqg0D8Rnt7m1CstK2AQwN0ks4JDcXYeMlRK8c2
	 P1pMRiB45w3KPZsyLrMLBhpIoBkF44bFgjBJ2z9rmABg3wt9B7vagf7peN2REuZnmQ
	 Sx4iLUcqj23KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B69C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851579357.735.1973798601245854546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c1fbd2330e5d5c58bda94f276c6d2d5ca5e0b0c48725d64612934bd713866f
Date: Thu, 29 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748515793
