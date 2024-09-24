Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0051A3A9C
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727184954; cv=none; b=BWvbWamnBg9mIhlrK73l4FWgWdcdx7NALBCYmTpniGxQxSbFFNScdLKbjEawYDcu4oTTsMFtZdsfryJtLlAU9+g4D7xpMbf1ButU4IJspU8ypXGgxaAqabaPaZrOCnCpRAD1mYIi/dnYH1zpYCGHTFq84H76yPQbUw7sWyARvKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727184954; c=relaxed/simple;
	bh=AbkJ4MqH9zMytiM7eQdPbzdnR10cM84KQgv3QvRK/sM=;
	h=To:Subject:From:Message-Id:Date; b=kC/gKoAqUiW2XnKnGh28ol09r9OzLmXO+725n3TPpsSiWSxgozzcN6klHwxQ3t5jbu6yRxTlAEALd9xmRnRfIPHAk40W+uv6483iFLgh34NX/WwJRqNz4bNVawFxbMrBmJHJPp/u+PpwpFdXsLH+PC934dlgNDWAnxiIVgXU/y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ro3MAZ5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ro3MAZ5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0970C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727184953;
	bh=AbkJ4MqH9zMytiM7eQdPbzdnR10cM84KQgv3QvRK/sM=;
	h=To:Subject:From:Date:From;
	b=Ro3MAZ5rGKWrHcY+h21qYdE9PzuMquX26B/Pn5vLr24w7Zz6LsmNOK/SJ7ZT9T1AP
	 TLhU5kC6Gg9LvA7sx+En0zbg4G6ZVBH9giTEP2scgJEQC7U3txM9WaykfqVlIPaLoZ
	 oeA2PwdMN0Nf1QJLhR0ch4ARAU6KjY9b2HsVP3YQbSSLAlHWPnjU2d5WZhvtvjc5Jk
	 Ey8+QeM/hDf1yrIaO7GKMrYsUiYITjMuK0eyE5MrxGkcJ4SLs2JD4MuI4SNQxXFn0q
	 CDEyIoNydCTaHsi9v7adLk8+SgJ7ijrWeZilWca1npBd5C5W4OCRWKVNjVYZTalL+k
	 yR1+U/nzprhFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90469CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718495357.27701.8531887005165056342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880ff20d1fc8356b242780cb93b9a04f8076568a77a8b055018ff0efaf0eb8fd
Date: Tue, 24 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727184953
