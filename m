Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4821B1CD213
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743842395; cv=none; b=ZuBCOxWdExbyysg9PEuf1hPtSgcXyJ9FHOR1Zeqv5F2D7DrBCIAF6DvOtWS0sQ5LPWzN8+8cq39WB1tmBIvncjoRoLCl0/TGWe+X/7/05ovUm4aJAd9hzEwKvgoMNPfv4vOEw2DGRfbo8guL8JO3c3ufqy8WarFU4Bmxzo26Moo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743842395; c=relaxed/simple;
	bh=XbNziZL5/X4q9sOIPPgPHAN00BxgnKgo9/c33aa5tjI=;
	h=To:Subject:From:Message-Id:Date; b=dUF3tdBifvyEUfnPfrDVDdWnH+UO2VnRVnd7RAw1m08QehPqaNxJ99r6arNTDPzA2hQk/8yC0NNqEI3ORW3wVXutiKYK4BRiawFqbB+HsjxpXa/MdgxrAQRcHo48nXYZDEb6pJuamv1yF8kjOBimtuRYg6ben92KIC3i3UOkJSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfw9vLk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfw9vLk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B605AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743842393;
	bh=XbNziZL5/X4q9sOIPPgPHAN00BxgnKgo9/c33aa5tjI=;
	h=To:Subject:From:Date:From;
	b=kfw9vLk+u7cmdAhJnC9NGAaA/HgLZwk6CtFg+BlR0XgoUBJC4oxzGQmfOv+oB57tn
	 TcNZ87pj7miF2sONIpgf6DWcxssAW9SKkrG71usfZF6Yhuhyv4kX12hNMLKdx6grw4
	 6qVbwTVnJfV9plhZMz8bAuLThk54ieYhyuDHPYAhtxLYaaU/QZuX/q3ET3GSAWHCV2
	 7o8WJIPYDtk2M+CbGSBn3iFsPy81pQTiXdERxcA2h7+UUh7ZjD5tOG5smeG2euiEqF
	 UZ492HV//c6xEIsSQPIRvRJni46vrRqGcm47x3qRSGXmRjUDo22AgYVGtw4RT6FHCX
	 lEIiWzi3lydZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF07C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384239360.31729.11628831953407381707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c025564bd7540c0f2ab63267633f682c3966668ec40fd27328df328017752c
Date: Sat, 05 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743842393
