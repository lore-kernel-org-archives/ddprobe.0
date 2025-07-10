Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2268827FB28
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752116394; cv=none; b=V9V4ESYWZrnVBiXgpoR6QpuW+9fGycOsCfRtX79/TyxyaNht0fuKtYRF4A+EIxAcJp7aSlAU1CZOFb4DPLoEtdV+AQHZwEenkTfgnqQooDFQFnXrFTlg2gi3X31VaufF5igvcpjLZ8HgcOTlX1VE/p7CmHQO5x7av251Fu+F1qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752116394; c=relaxed/simple;
	bh=FjhJnFMJq3VLvcRoLXgXpvepcc0xMZENvTsN3CNPxlo=;
	h=To:Subject:From:Message-Id:Date; b=R/GPDrgxa66tBNTtQqqASKpRs2WNzHchyoEQH9Dpq2w+6Mr5dviiFXWf4Y4cdEN0DNhzRuh4wIIhCXFSxctsefN0nvXAIAVdeIlnyN3i4m3fKjR7Hn7SlHtHn3xv8iCETdyOHyKu2K+hhPU30rVx9Tz5XqRmtZL5DdPqmpWcAeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAQhxyMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAQhxyMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B2C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752116393;
	bh=FjhJnFMJq3VLvcRoLXgXpvepcc0xMZENvTsN3CNPxlo=;
	h=To:Subject:From:Date:From;
	b=HAQhxyMCaBxPhCK/cYp6t6GZho0Ttje0DmfPLXiqm7Yei3y0d7CUFFayfWIQ9HMp8
	 rZt5Xpmbr7R92SrvzD3jVe5qQ9BKSPNPlZkULfur1M7qOR5sjwEme6PWK89Mf+pI3Q
	 wBhry8048KQGdbEyRcsurK9FAdbDjaj27wGTd/FrMUy3GBdO/dZWnEgx8o1rrWoJaN
	 6SBdqruVI8OwF0zzv/yUdzpDoaOnckFo+upl2kPTCpXAc8PNtmbAS7qLWYSq6TBrqw
	 2H/sD4kpHAeM2lf/U00yJvJ0dVEnGSNohsP8UJLXXUCDq8XeRGt6FpIatueI/wYgVM
	 anPiVBB9QpWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92831C83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211639359.17912.3651972239757083747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3b41b5f5048c751f003c13efde80aa0cc8be950263fd98b6daec86a9a7c120
Date: Thu, 10 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752116393
