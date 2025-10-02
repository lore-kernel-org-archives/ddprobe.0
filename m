Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFBBA59
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759370394; cv=none; b=gtpwQyQDBiUCalpOQBIDybaa1ZCNLtIEo/8fDaN45vHT7m71/eWbxzgBUcJjlft/P87s1J/3kES4DDZ9BzgUldDExtvUrF7UVd1CzrI50cCDiP84ku2ph+usKiRi/cdgOY0rvif6rV0Vi7XO5t2S89fAKGgRZZR53Gf36+ZXQmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759370394; c=relaxed/simple;
	bh=JQxw6y/K7bvmh1bPbrYUOOkNhojYLKEM1UOQvo8Uz1o=;
	h=To:Subject:From:Message-Id:Date; b=keAH3xp5ZnrNe08Xcpsx5eiQGMQs71VWEs2fjCabfyyyNd7V11CweOw6hcACS78mwz2WqwSk6pNs4ip+2LJZAFDFCKY7xSHeGtGJ5iDJL45C5v0x8sSDTAYSBnU5mW7v46U/+zMz+1na1EGCTYPd8qt2EAe8ZG0f7tNRoZvDClo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSy72xyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSy72xyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D661C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759370393;
	bh=JQxw6y/K7bvmh1bPbrYUOOkNhojYLKEM1UOQvo8Uz1o=;
	h=To:Subject:From:Date:From;
	b=DSy72xyjP0dZyx+JknC/cswshwyChqe9JfGxy1CT9rsRLWp3h7yrahRBYZ/1s/H4D
	 VDPZeZVk5E9Z0leK5LpTVTb3PK0wyhA8lj7sO8gPy9Vy/d2EGKNRF+YUnnekgdVTPO
	 t5MrSR8+++1MGTRVXClWySgc2pu11PVCUOGeG1TwFV+t2hElQX0Yb/MatUtf64vhws
	 anjxfTYwd00glMXEPmntGAaIK5R6VITFhsQlcd1PscfC0epW/n/Dnuchpbw0wrjD/i
	 S3t/IH18r0UObCncBktjruhWvbu9oYLq8Kj+JyWwbXQrEhw/zwlna2sRGv3tyM9PEv
	 LonW9PpOV+I9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CBCCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937039357.8508.5754196956348411432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f558ac7b1d992c036fa21fbdd401dae86facdaf1949c79f11c6dec477a0f0e8
Date: Thu, 02 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759370393
