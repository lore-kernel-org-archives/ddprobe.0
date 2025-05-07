Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEAE1D5145
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746590394; cv=none; b=iOz8Vz+AhDZth+O8AlZOtjMwtyM0W4w5RsQpkzqjZRjJgiCvbXbJwXU0XDUoPWDXJyXJ24jlUW5+hnWl7MgKbfDXKV5VLzvPfv6K2lVm3EGi4QEfkD9GgLR2CrKzdVMAiYFCJo0VulailV0WpRPJiPTDY5HvTkm9mQhdX5anWjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746590394; c=relaxed/simple;
	bh=GSVepDxfhbNuMavyn+L++r2NgDOG6W/9DBQ5K+bdnxA=;
	h=To:Subject:From:Message-Id:Date; b=hp+BkR5GtD4pA5Cs/PulA5cchXA8kwSBeIQpK5YG+J6ga1nbp7JCNcFHPI+Qb3qQKvH+OoxEUcrMruyJE7GFn15fqPNmUJ+CvU6tPUjPTTg9UAPE34MKXjJsJPoC5zd1eAeq75YHSvxj331Mdfu/SI7UTVV+pxkoL9ht2znNFl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phI701VM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phI701VM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90CEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746590393;
	bh=GSVepDxfhbNuMavyn+L++r2NgDOG6W/9DBQ5K+bdnxA=;
	h=To:Subject:From:Date:From;
	b=phI701VMOQpvHEn97XvPJDzwwJe7Ewq674nLSPxJcDV8bOc8t0TY2ADr7AO5NioMM
	 Qg1KB1xzsD6en54hTVOvlhOSqW+nNZ4D0tEky8nyLON9xFMJtoAU7SIiO8sSW5CkrG
	 tVq1+4xHzY81H56uCD8UZhdd5j4pLnZwcwgPOwC37ntBmfzGHecb2YFye10gY8tyc/
	 4Q4bok31AP5oTFwYzE8QbAU0eMFHcC4mI/o0cHxGysDhdUlnuI+IdXDocLFECoPtvf
	 RWTNf9cDSlXOi56rNZMv3bgRRSL3AjKFx4+1cOLwxGQgV/ArjpdjV/gNpAT4mbL9qK
	 QxDNCYLaZTgtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935FEC369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659039357.20431.6699510664173405434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7300bfccd57721d354f146e609af61b4b5047be0d54e0352de1f5d36e92455
Date: Wed, 07 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746590393
