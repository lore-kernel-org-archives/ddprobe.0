Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6F41B960
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715449943; cv=none; b=dC9LQwkGDg0852zQ2CgYgHCg35JB+3U8NoVU/EZsthyg3PA6XzxX74nuEQLxbAzyZ1gCWP+kG8P6U3bxNP71PudqEOJ9Zq2T6JT6V/Nwt1LasLfSpMtc+uFaSrOnGUInIgL4XuR0Cvs0MJBDcs3HUEmB0O7P8hi6T3ZgxzN7rWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715449943; c=relaxed/simple;
	bh=sS91D6M67oz7FHq/gSnNLORruFEHFwqr0aFADIfz4vg=;
	h=To:Subject:From:Message-Id:Date; b=s+tO+ODpNo4T7PDhsZfltxdrsMBR+HvJCIFVdyGZQA54WP3uErC8/t8WBrwz2ne081Kg0TbJHNtj2TeVHZhVZnv210f75oxg57jjbMeVLpAngd5wUgp+80FZhH0hIpdLLX4mhi6WDvmLglVrxNi6jkzYRZJaJZEVemNnUh/9sHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxNrsdBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxNrsdBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C88C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715449942;
	bh=sS91D6M67oz7FHq/gSnNLORruFEHFwqr0aFADIfz4vg=;
	h=To:Subject:From:Date:From;
	b=GxNrsdBdmeavH+cdh03KkRLqfAeHwW++ShV8X5PVQL1QiEJeFvF91djkHSS+0L7ix
	 gFK1RTT1aH0leB1A5f0yHDlSNTATXQZU5C2XAASMHE52ujmpaKY2lI2K0UBBkduTqm
	 t/5SF1fNI3Q8+A+wlRtqTd5np/JXZERliy6aUOZIi3pDAYLLDcYUzDOxsdHB0DLhdX
	 PFO8fteYIIFLp2Xr7w05tsvCkXhnXD/fIqjlzkm1lijJLWzInX1kXJmYXVnu3PrwRq
	 tr26XDy3uKJg2oM0Pu8hT9+kYmlmwZWRZLvzHcpOw7/pJrw78Wk3XgGxxazy7DYYkh
	 m5T/FGDkqmH9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF178C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544994277.22314.12118102765240552066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957a34b40a232a35d95a666700ec2b0b7f68b286f0cb84d6be8f5a918b65aa51
Date: Sat, 11 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715449942
