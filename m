Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B15182D0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760867394; cv=none; b=Z8FHIkWswkoj8mRjoTQoWhfohwjA4dmR6serodeKk2MbCU5ikEQM84Zfbyoc7Fr8AqLCYz2pFlyJSGiWCS+Woi9Pi1aErSspjPnEuA0O369MOa+d8omQbmHFpU+1Cl76euSxXLVPghMsPuNxZj83L6mOgHwPOJEAsd8Im/7TALM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760867394; c=relaxed/simple;
	bh=LDROtz/pvSsDMydEloQifj2E4s3FZuPY0496RT2bMWo=;
	h=To:Subject:From:Message-Id:Date; b=ZyOnVKv++s6Wg0QRN4FFhRmgjZcn5wrQTuLxNuxaPRagcRp++Jf7hhoYdy6/475og+O0ev5Tdpmx2zAAiBZZ9ylS3I7em8D9W756bWnTyv03Vlubrz/ro3ohehEtYye9xsPm7g9FbMHyIHt5BcfulYpUgICAaZIe4mUv+sf6sL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqM3L/CH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqM3L/CH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A06C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760867393;
	bh=LDROtz/pvSsDMydEloQifj2E4s3FZuPY0496RT2bMWo=;
	h=To:Subject:From:Date:From;
	b=mqM3L/CHbNBSriqESdeQ24maLzSCAC5ur7y5oZ1kc6TxQsbavWiaHDCc6r8mucWir
	 v38IxypCEczplZzxSg42xnbafS+awVsJ7DqbD3xOx5lWDD8jGtLaHiN2xLEsD5mmnj
	 1FeueNnl5AefAlah5cNJgrNkpQTMq66oYQAh83pTPh6/Ia6qf+H5jo7F+KfjfjtZDt
	 yMxPqAWi3/UNSHVcarrf9hM6WrtmNzpNW4IrezbNzrFfwcC3SBOOH/ywCtSOiY3w8v
	 4Dz13+JRUNM1xFYgIkqY4FWO8mfgA4KtzqH/h5eEhQKiuco28SHa/Pn9poJJwI+z8M
	 eRWrrRagzTZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9692BCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086739359.31569.10510918191486147110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b0f35641ca5f069dbcd1b4518351a3415fd07cd4624e0a07cda89d6ba2297c
Date: Sun, 19 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760867393
