Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9A42CCC5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757645994; cv=none; b=J4aouzsoPVWlQh8W7/evDncgDnJzyGw2f0GoHE0nwxLEBCNFttTOQ8ugN0GtXHEbHs4m12RtwMQoS2+O7mWw6GUPqjxO9OiB/1Z6409xX6AkUht/O/5pQg+QYp9w+LVm6DT6s29hOI4/+ZP2FNcq0LxM7ioCIv2NHmjPFNeDUas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757645994; c=relaxed/simple;
	bh=puXIRWmpQu7eskQo++z0H8TeHtrgo+pEzATExB8h35Q=;
	h=To:Subject:From:Message-Id:Date; b=LkeQj47Zlqa09101Y8oJwFt7ZE858btZfo13eb1kHX0ddD+M6Zhhwf+8WUuqLyvcYjiiA/l0K/GkLIfSI48qLztrnJMFLvKWIjeXotMFOrE2xqoTKxnQAtiMxBzcLeef4nJ2Khv0Nt0sjSTJGOTaLi+PBQbqqS12FO66s8VLlec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3RjO7x7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3RjO7x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DBC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757645993;
	bh=puXIRWmpQu7eskQo++z0H8TeHtrgo+pEzATExB8h35Q=;
	h=To:Subject:From:Date:From;
	b=r3RjO7x7sRnd2VHzshcoGIs9CU5RUnHkllEo0ror+e6ywyCjcAA1yghJbXBw+xV40
	 JPuOhhfSdvusVGWBtx/hCqfQV+A/B1SsAKCabc5MvPpdJoVu+Oz1fUoT0V5YN9LSlN
	 EgChPe/vQhYVyjvSMYSJYtI134uqGg2xaYmTGh8sPb7Iyqpspn/MmbMou6olpbxsPg
	 aG+yNVuzEHj79LmDilDHTLEJ+dZb5Mmf6vznRF5IMhC2VeIF2VCApbqFafEVVVB4Wb
	 ANzc4TpDeQZJgS3Sn4Xk2D8kvscxaiSqXYWnYZ+qFXE2PIZr3UPEAfcQGo6yzIWg+t
	 Q82/36sRk2+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC4CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764599357.17997.18180659744227733165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6e8eabf4b028e24b57371743a7494fdcb8e74a8335cddb4132cbac6729692d
Date: Fri, 12 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757645993
