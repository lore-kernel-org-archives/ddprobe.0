Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362732459D1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782533314; cv=none; b=C8u/wboqb396WmNrXrp8xMa5iqkCXDgw+c9WTuO78akaWvtpT7d/xGEjJAYue/Lht7BticbxuE8+vb/8u5EF4gS8lTKK2Nt/AgeYzv1uUZQZyey2txwRcu8Zeum4WWCPkmoXr5CemEJXiqQiBMqVmfcBbHYZq9Msmjfh+OM97Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782533314; c=relaxed/simple;
	bh=oEqC9y5r60VJLPlaTx/YS/Pfn2x4BfLTkPaC3b4DpZ8=;
	h=To:Subject:From:Message-Id:Date; b=lNi/chXKch/gk4unvq0qWM83Hx1LBKglsmLUbF03fleNVU3PvQObd+kIpbU6TxeVeK5L8eUrtsHJ9ZCMBVbXVQLImGvPKtdhZtbEZGJ6eh8Hz2f4DDpXyENT4cOXc0OYWhAk1TjavRVckP/rXFFKdVcSxHel8FPJTVChjB8+g4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l09RvNhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l09RvNhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D92C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782533313;
	bh=oEqC9y5r60VJLPlaTx/YS/Pfn2x4BfLTkPaC3b4DpZ8=;
	h=To:Subject:From:Date:From;
	b=l09RvNhCXpt05gAHAP0LAIityDG3xgzygSHvw9bOJbxvJLZk2RlHM+RLG8YonMVOd
	 aKp7mAktxFfcFSRyfDa0/OHyq5oIul6E1H23IYNesMDp2kLEtRvSLSwMnz/wXGtoRK
	 WQQfh+pERC0D6y07AEIZHP1coMXCFv5zNUshbhEU2yqJ/itNkngEGSzzwJZBKsgHB3
	 zRKYkNOvhj7/HCFot/6eOHf1/ganbUVSq9NIOVprcmC/oxXCa2HXV3sW6nnBQNWZp6
	 eB1V5NoK+noeu5yOAeCuwUXEU/x99Mimcw8DAdda5jdGARxqUAfaVBgRlWAm+SRIm8
	 jE4K8IsZiotPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD03CC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253331370.29009.7260426387897333999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598f3cf7dc475300c48c7d48bf427a8a4a9348dfda30744db89ca88d4e117677
Date: Sat, 27 Jun 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782533313
