Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1381319D065
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790643035; cv=none; b=XpzCAySSMYUgVwcHlj/Tg3DMwWybH155DvJMYs5OoEC3rXnspw3rDybhfERy/vrzaSrcJNP9tGO93XTd7ydLLbIdOtD+Dq80enMY+4LeR/mxIY/QrHEhNK1SdgHbfZ7pPfZUSbt03Fd7jgAlI873pQWEuoS2bWt4NEedzm+aZyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790643035; c=relaxed/simple;
	bh=Kv7WtQDvmSCb+FDtYD3ec8IX3R1zjF7qQ3I1UFddbC8=;
	h=To:Subject:From:Message-Id:Date; b=dLbyfT7HHPOgsSa+ScKF9NNq3eD9iKby4Q7zK1QHKWPFTZ9m+zU+bd0G9b9fXg4f8evdEG8qxrumJw2hsDBSB1O+I8PipHJE9SjuaIywbTZmPUwTw2D5SdDVYOorWsphagVarnGa6PX2rGczo0KBBr/vq///wLtYMq5qaF2/C6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKIc2EjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKIc2EjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD179C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790643033;
	bh=Kv7WtQDvmSCb+FDtYD3ec8IX3R1zjF7qQ3I1UFddbC8=;
	h=To:Subject:From:Date:From;
	b=GKIc2EjE9shN7ZWKfwo/dUV7zWRCUHs5urPOKTD7iEFmyxIW7xFoXkvSyyHK1fOX/
	 OhdFbb4/KDUvhLqsKUWRWd98mzASkMKyDJclAd1Rgs41t3M0XPobfsfdkZUNk1l9Lj
	 E6gbFz+O5de3EabCMAw7ZVr7C3QmpxcS/pgeg2JltX/25UalpGGreEPC2HGy2hRqRm
	 cAfNyW98FkOHlwTNrK2nlQ8sy49bLXKdIH3J8Ox0yA2xPogFIWGIZj9tzNqaV9pzxJ
	 D6469VDONR82lnSuWPnSnN8jZAebXfmQtwpiL8ExisvDhL9PO29ILXdYmFllSbcg5s
	 eHyrYdFfmpknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC6CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064303368.21538.17965146531483467593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb9d54e403cbc8917895e56f9ebbdc4fbc06621a469e568ee08281b0beea25f
Date: Tue, 29 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790643033
