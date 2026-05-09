Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8057813A3ED
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778324854; cv=none; b=PAoFM5UrLVTVeuer8vjZbpeRacLyu18x4Kf8wIWpcFhujUvXuGMXsgv82rOQ7d3BR1i6xwgMAizkef4Pi5VsyxyvAmKsxD2WjJOJhdcJozBtjShdKUmx3uc0+P5mK2L28j03Vjo/mIF/9nQcaAhPyA5ccWipGGYM8AgArocMv9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778324854; c=relaxed/simple;
	bh=bJu4D0R7T1GdFBzMG1p0KTSWRfT7AhaSgRRTH11TMrU=;
	h=To:Subject:From:Message-Id:Date; b=n82B5eUsk2A2uqxIBqaAudEbD3H6Znane9+qk/h+xM9Q2VgNY9VKEeFDaiVeKn66gFIStGkCrelxU2S8wOwYbIeHeOwF5DWEXLDS9u1cATQl6q9PTBysZU29PNRwLdq2CtSpPFzf/IsCmsioaNvJ8OdeNhfnd0LjtOP+hIPXTY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5hCkQzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5hCkQzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 112F1C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778324854;
	bh=bJu4D0R7T1GdFBzMG1p0KTSWRfT7AhaSgRRTH11TMrU=;
	h=To:Subject:From:Date:From;
	b=k5hCkQzl/y/qMPYo52Hpagq/VY27NCeQEy9Co++KYP///ayqVRGhrg80GywzsV9pN
	 hFnF2vQXOlaxbR/MptXYRNkiap1glCaY54KtPCLlAHWPsfhinbpk1hKo60BQCsg/Nd
	 qTdg0GQMxGezCFMY63kBxEfltRLpMg8o0N7V71VkRWkkLq05CqI6rSEvxtHjst05CA
	 u2EvKWU9IyMzjJ56lWsnYpkRkyzoWGaeukmiwn7TmEFVqGvD8iVpxN0yW3fbeHrsnl
	 WfW30Kn7Tsty8ltN9DFc0i/gjXwnOJAh2RcY5Pcbo9XDSy6Heet8c/nhbfM7gzwT0Y
	 0M8nIv9dHxIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9CDFCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832485394.15821.5489310396851349890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7249c6de3890c0052a9a7d115869dffb3fa366bfe069d5baddf75d53ac6e0108
Date: Sat, 09 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778324853
