Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405671DDC0F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749131994; cv=none; b=MC4HVBPR4Jom36DEBzDMcGMKAB+GJIvusMcuhQPyzWR3UrUpaYseHFERW2Dmj5xu4NET4SjYe+lhAQ+t74ydIxEx1jTJ1aGhs3kovypOhkboXXg9wYl5hGyui67k+TmqzrKU5stMImkTq+8s3dvwOf7knZCnihmy/zfX3f35PI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749131994; c=relaxed/simple;
	bh=DdlchIj5oYaNzu96qWGmgB4KE0T0i4knlGYj7+bpZIw=;
	h=To:Subject:From:Message-Id:Date; b=T+cYGcRwBQdWX5juqHW+hrRXl5xNst0wy0mAquLIovCUjFnC8WDhXN/Y2j8vnfTglUH5YqjoOX+aC+PdcaiN34sB8bZ5Y75qT2PsKdZ6YPFpX8gfhcXiwjbLlio1CefSzQHbgcMq9FWU0grn56m0jXrZ3lYh5ZFkEd23NHDeFwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt2qb2WW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt2qb2WW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A276EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749131993;
	bh=DdlchIj5oYaNzu96qWGmgB4KE0T0i4knlGYj7+bpZIw=;
	h=To:Subject:From:Date:From;
	b=Wt2qb2WWktztQhhelEcHEZNJy7Sbobsxf9uTLPeGQMui/Ilw2e/lxJ90gKAPaAjO7
	 5Tfe8VagGDU96GCruQL0TjEaiKhDnxh8vuZiTUHr4FwrEov5JfniuMmSJwPGWZc5h+
	 RB5+ikfDUPErxfdhnKUcA+NNAbMGFzzr+guCcyFDR5oYZQVNrBh5ffHlt4qfIyNUIk
	 3W96LRVedvZ1sX6W99LhMBu0IO/aEQQ3J7C/hyo5LNmLgorwWehPXUGRSsK8MTJGSZ
	 g4Cp/M5NpcXMe+d8MNGK0S35ab92xpKxbC/KrVJA73jSVhuRHF42bgmGhZEBXX8qCD
	 KPtuHxrk9YBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E257C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913199357.9696.2084432257231362403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84ac5b8a5ce4b5f084df06cf68ad90dbdbd435f5d9adce89f2f664abbb0e470
Date: Thu, 05 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749131993
