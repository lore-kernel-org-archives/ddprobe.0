Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2DF23EAA0
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787013634; cv=none; b=bE7NQcd+ZiWPTgmk0gds1x0sQGNsyruJe5WMVXOKBvffx/a3BosBBRq8gAhONyoirArytXDaxAfyb6nrbuDRBh+hRBnc+e9v/LJamkjB6/JAcIccPnFCIy+Z0cgFA7PgsHJezsRmPn4UUSqGpexQH2sJ9AnwBR1qUWcdIyOg5E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787013634; c=relaxed/simple;
	bh=CQl9EUCAMA5NY+D3HTwFDCjRmJMK95tBUfPmhwSbm5o=;
	h=To:Subject:From:Message-Id:Date; b=tU39RWutgCAdN8lxoJtXdHXPZnpu0hedA5A8swrv9bbRA7cjJEyN1vIqWOZFoGkGViEE1EhmGn257EcmO5lS8uUDUwaqaUEVuZoEDCHLnyi0rxIaRRdf42oi1hSrl6ZCGZGi3EMK7hZu6D/bmOZSwbEi3UbANMNdw9i1tIwq1cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j64sEg7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j64sEg7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65C3C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787013633;
	bh=CQl9EUCAMA5NY+D3HTwFDCjRmJMK95tBUfPmhwSbm5o=;
	h=To:Subject:From:Date:From;
	b=j64sEg7kWi5WU2p3hAcZSQ8YDHwCCnYHqgYQIpiIVMFGJCnCHoWwoRTBktftgV+PO
	 qL1teY6eQ5BWMLQHpVBQ998TmBZqDvtmFWlxzPAyEv4I7t7bdV902DtCBhbFeQWQLI
	 ao3/THMgd3S2/wlyO1lvSqKfwwuEm5Zph9GxbsHR1J4WDJgtdx1EWU2NIPXrimKk92
	 8PMug1iKLq3qJAjPu1kecyOvBr+RLLpVD/jniA6i1o1ECe1daPKcKW3bT/4aFXSzEt
	 tbkFxlH14KzrIF2LM8mQMH1j44Y+xsfI/YukOmfwnwcCmPuDzR+hoJdLaQX3kRvNF1
	 HekhsT6IjJPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F8C5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701363369.28715.15528410785735388667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e049c7f252d78b94084e604ddc25bf657af4c28afd4f68baef933a59e7476270
Date: Tue, 18 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787013633
