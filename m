Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F882905
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726547154; cv=none; b=UfwCocyEu409atUbxbdLwxBO+WCTo4aF98Ly50+g+l/bmrAQ26YTLH/UBtKhAfBv3P2UqRjL3Wi1ZIBJ1+925Lw8EixIczK4xoXm6P8G0cTx5+PYDpmyo/Ajzz5xZgZzLob1EWIC6L3f+jLud8xJq6QuWFXQ5WWe8ZR29e+vTYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726547154; c=relaxed/simple;
	bh=Pj+yB50KSmE2K7wZKSBrX+HtfS7+l9VhAgZ/44A51n8=;
	h=To:Subject:From:Message-Id:Date; b=QWNYgoZskwYpHCoFVRFvEoDmZy5JDIf/pf3kltkrogKSOIUmrEyPdnkfN2K2jevXJJ45gFCfQAylOmjRxRW6/w7Mars6k+qFSvLXSTfcifz/ELOjFKE3hPXj4fEdQWoAvR/Yuw2Hku0XZzJGvqyogZ6NNE8q6BUpjSZVye4Hxbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCo4m1nJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCo4m1nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE134C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726547153;
	bh=Pj+yB50KSmE2K7wZKSBrX+HtfS7+l9VhAgZ/44A51n8=;
	h=To:Subject:From:Date:From;
	b=hCo4m1nJPUwl1PrS2/btteHr0ANHnu+6s8rnrBvU1k65K/6/5POxWV7PVo8Gt2xUH
	 lbtQa+UpmCNeFFx3v1BU26QJ3Ui0goMPeDN8WGq52xvLHfly/esi/GSffPAVC69lnl
	 HA2+RTw+vUnX7Z30S/Q4DwIGmNa+OA2jUzDQ7LqvulZuw5mXaZ2ErVKLtQCpb0FEBs
	 8pwGIbSkzD8+5dxXHHLzbXsFQ5uaqr4ePhO3zop2UlidNOI2RKz/exKzIMpbwH7L5v
	 4L9oAuhWXa2+nf6UvpCx/iluV/+pJB0OqxAd5PzixyFHnDgj6Oi8N1QSPcRXHYv80F
	 dl1joo4nDgZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5952C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654715363.19654.14911698367755784750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1336a51c8bac221e2c72e1276baf1b2634795dd1882da912616dcb1e1fa399
Date: Tue, 17 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726547153
