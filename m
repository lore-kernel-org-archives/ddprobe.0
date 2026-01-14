Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4B12DE70A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768407234; cv=none; b=CqU3/grJP316gyGdiwnHMYu5bMA7oOGDKx3IGuClZtkUEyH2hn5+HIgK32+Awe5YK+5vysld/BVBsOe73en1zhVkaTuFTdu6FFD2Sysgwc879mwC3erlBrvE5VQDlrhNNsolJ6AJzF6ht3FonNMvx/x1nr6rHiEDoDFMyX1CcUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768407234; c=relaxed/simple;
	bh=QqT+hBDNzhHkR9SDe+irlNgJPbhXBESBW7CLUM24SY4=;
	h=To:Subject:From:Message-Id:Date; b=Rc/XL7V4WEzruI94aTUhaSg/f9M4sflHSDXM6mNdOppr7O9bP1mqwBEx4DhTXPp/k9OBKdmj7RlGZ5Vnw/zr+nID64pGOxvdUvy6/qdlxXJcFt4sP7RUXTDP4VL569lPs/nQiT2GlQ9Mv37nM0KiIssxNnXH2hPcwI8C7RXP4tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maCTuwab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maCTuwab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768407233;
	bh=QqT+hBDNzhHkR9SDe+irlNgJPbhXBESBW7CLUM24SY4=;
	h=To:Subject:From:Date:From;
	b=maCTuwabH4fgfQx2BTYVoMMrCzE4j0C3AWvOsKYWXHBofFMYwAKbST8QI+yFDK2nM
	 Oo5VQnsn/GFIXAZc+9ExJI25FItmWaO2nSNw+gV+/6PVvYAS7fjWB1AxRiER6aWtCJ
	 IHKkTAiyu2/JPoHbmH1Ewgpl5iWfoS52/kX4sBg2ZIcqkx5GPtGpIDC+EdvPQGq9kx
	 OniQvIvgWm4hKqWo1NK6LnXnKCax71iZq0GL04dARdJ/bj6b4LvP5IogyH2RIc+XE2
	 S7wunizGs9ZAkG36wDH5fei+n+Pm0dgzM6kENGq1r++ZQDI8f9+ESzH1XQm001v6PA
	 +RUgZWelafxuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DAD38FE3
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840723358.5738.17605244521541678696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab5bc12a1104d8b27b39f2e721c1f9ea06b0a88ab2effb0d9f2fad3cc013c03
Date: Wed, 14 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768407233
