Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F61372680
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788264634; cv=none; b=h6BGfcvJtIBxjW/zfvbbjSalpCw8Flik6wlmJhjWxrvxeoK/q3DuwRexrM+bMs9bOk/736LtLo/9U26TVQsB7PMc8/wEiJllr1PzlUV4opFdnJw6LXw/qY4EsdrmWxT7e+0OPWjb5shMeiKOb7tGCMYwZIvNM+OGi76PdnPSfjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788264634; c=relaxed/simple;
	bh=ceuNOjYXxXNANRoY+Chq/gmHsttRqRPbLJsEnAkIr3A=;
	h=To:Subject:From:Message-Id:Date; b=YzA7BEHGz9MtwHRHmWdKs2Pwc8QA0nvuDF+gkWiaBDc1Fo+OiDiqAaNY6rTsUf7nD9oVXzqxmvHRGdZS9Tf683DV9BZT2zBZmmBRxyp1Q/Fb4+eV+K2gWAgqswPPDkoC+s28lbQJ96TideFanuzVRPLu3S9K1ZO8eHU7x4YVNZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+mjAIxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+mjAIxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B7AC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788264633;
	bh=ceuNOjYXxXNANRoY+Chq/gmHsttRqRPbLJsEnAkIr3A=;
	h=To:Subject:From:Date:From;
	b=A+mjAIxtx+wVnl7ZA/uN0tGaQTWLqy3M2LgcVNCHGzLe7RPscIxr7TX4YV38KLvMQ
	 Hgwau9DdCAnzNAmkxrHL++JpRV8iNcvaZ1cYCoUqgTrn2zYFrg/dD3xDqrvJBBx2xw
	 NRjYdGjg+ToJkcz9FJV9Z5WOaPtSW5XRacpySu93Es/uvqgXdtEX6KEMIS0rIUufhl
	 up9L81St39YGg2QGlOMtUx1unecrqjYxNf1pqV7greqTUbm1FHv9zlAeKTbuST9JsX
	 hYpZLU41SztZQE+pO3eguDJDuWv6JzC3uWLN+MX382cAqat74exz9bo3Gt+zqDOIf8
	 /F+MNElPAfGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD02C624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826463369.22512.11057076979974899810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fe777a303478c73f9ed46edb7eb077728edc62ee1a4192cb37bec355c4b340
Date: Tue, 01 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788264633
