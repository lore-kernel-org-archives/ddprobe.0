Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC191FF603
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746975594; cv=none; b=HvoKyOdoQ9L6TFu/Y+7M9htzq6Dgb+C4wlFNQcOODDV+66J4bIQrELTjgA1dDrZz3nZ75o1rBXItfshCKq6HiRjSrKL4q+5ZZmpPnsAaIyScZxO9I4zySTRxLPDsXZoofk9foThSQ627CYeyiEtuFzx4sAxsmg+DPJyxDPn/Obw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746975594; c=relaxed/simple;
	bh=jeuGh4BckHy9/29EfUDRMPv6x8XPO3JKfnEXeR4vS8c=;
	h=To:Subject:From:Message-Id:Date; b=X4sGVfYDMrF4LLas4bVMYvVwQ9Gh7dE4zwE81yXw6yIzX8xOLyGJ16d1BziJv8IEkphTQEjmpXSW558C3iYANi1E2HRMeDe9OO27uxHpwpeiU0G+e2tUGgmebelVC5/2HCCqUdasHTWINsVyfOcD8qaegSEq6IHx3E2vMEXKjps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQCK6/d1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQCK6/d1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B75C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746975593;
	bh=jeuGh4BckHy9/29EfUDRMPv6x8XPO3JKfnEXeR4vS8c=;
	h=To:Subject:From:Date:From;
	b=RQCK6/d1OA7aHBu0Rpp8MPprDm9X4W8XHztti8O5wmHisfFDQgLRfrW0GWkrGET7G
	 zcp49Z6GGn2bxSF99ASdFP3lp7QBUPyrOFL/+L1neDy1wGqog2IIt+YTom2C7OV0R7
	 KXkbi66AhaNbSBead78LcNzmNneQLM7UFLQ1mxq430WXCehfNzVU4GPsXrg2xeIL3A
	 oiIPfy023jcMU0JpfxQ7/8KHixUvXY3+WEkCOgYO+qUKiBKQpwNDu3DJC7KmeZDvwZ
	 1tFCaF0q69RYW8LPtSQsKOXz/141NXZrBxDIjwyLsWpQp1Uwjnxb9MYRTPSlhuJAw9
	 u2m3FZ27Yas5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91894C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697559358.27315.2337461695135582388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efed59d97f4c0520409aa63a7a3cedd6d91f7c4a3419c63a3b547b953627136c
Date: Sun, 11 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746975593
