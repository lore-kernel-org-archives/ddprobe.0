Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618E01CD06
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721202923; cv=none; b=RgDEyZ1yEuqw0JyRDTfikhq5dCGpibPv/x9GFbLykIB97veYrYIHSa4g6poTUo0xnbBXzeMggl04VT2PtHDy4n3F1v6xbEfUq/Eu9q/xGoTtAZ9wvxUIMXdQ2wveSo0TraqVpb0PM1O0+4dQi1vH0xL7IuV50b/mwSGA/15lAQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721202923; c=relaxed/simple;
	bh=Cisiwnu+FS/d7cBjcvV4QDef/0AcBeL1dS9wz17xt8A=;
	h=To:Subject:From:Message-Id:Date; b=Ulk52lwCcCkimfgzOFq227QfxKm7MKHifIfWYGrN9vb4PXE2toRwPcxK/YUmMtFqK8rX5aWutbJNve4uyXWAopbktz6qzBQJaVoFn58TqcADJmDipC9L9S9fgqByD3m1ynJuRUZK7QevEMMO5tRVrJokmEpQHNZRtgJ8AhblkEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS24G4Un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS24G4Un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0ABEC32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721202922;
	bh=Cisiwnu+FS/d7cBjcvV4QDef/0AcBeL1dS9wz17xt8A=;
	h=To:Subject:From:Date:From;
	b=LS24G4UnZagnk6T+9iNZJka/qrPqraZIw33XkbI3fEedYEOGbipOKv2Mq15fCTudt
	 DDCfJ4cSbN6/JK1SRUZBW01G3YR1Qdm5V0t+n7dWyYvPw9+riccqFFTh0RTleWGmoP
	 mnlUC0+8z2sZwy/HlZPx/B/MH340xMD6WXbZInGXhle6DFQeWO9oE2prNNYwpKN2Jb
	 uJYG7rxZ/Zri7IfoVai+C6zrbR9E8DUz8s897pZ/3nFK/Y/O+t8ZxAh6L4mw+U6zfs
	 lWSMdGD6c1pHnMrIxJW/ftRpv1cyiAwRJXWzAYxc7BXjk0EVbbn0fXHB2L0670afgF
	 yBHRqJ/FMU77g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD48C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172120292280.3825.12417871065635659071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5f781f190cf51f5b75a9b74be439f434ef988cf4e4cb0c1b5fd102cb129b64
Date: Wed, 17 Jul 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721202922
