Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644E40FD96
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773959094; cv=none; b=i/r3MZ7NC6bD397HYLMfepMIbF0j+kdO4mClS/c4pv97ZjZ2E+nmsvUnJm/8ybY1dVszzwHKjVq7mMse4ygl7hfysVU4RLPsiGGKXwYC9sI0gawgkhhS+opESronSiviqW5NwZTPJzdhp0SVLvl1fcQGhf0k9PMS+BYxzliSARw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773959094; c=relaxed/simple;
	bh=+KfezOxO6HkMtnjNtGS90IT8fbcbPhXBqxHnoA3wSRA=;
	h=To:Subject:From:Message-Id:Date; b=C4XFOQE4zIRftpPDCp+dq41ZgNIbTb+YGmMwkbsagpRV1Uh9OplpLfauV10OtfQL6+PEd+3DlZvg6mDMZRhO/4nhoFex5OsjZi48ZX66O8/SxSohNRg0uV+Goha7KtI5NDp853FHZqJMgXlPjy+BQqSRL0xIbd27tjxnucp0tGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF8Dge4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF8Dge4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2756C2BCB1
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773959093;
	bh=+KfezOxO6HkMtnjNtGS90IT8fbcbPhXBqxHnoA3wSRA=;
	h=To:Subject:From:Date:From;
	b=TF8Dge4nB9rKpvH/yCQG1hAG+ekayJXh9qCP+1XUaPTErDR2PsLbDObhAVF9pwHTx
	 UGKAqXR3YEFnQn8Yd1qCyQsGb0UsM03j/Mzf7gTrHb59Mqh2qK5OlCwYcN0lK/pkXu
	 tBeHNsOpyHwJNl8+pfwpaoEQPx3hQd9PAF1RRy5X++8INL1fRp8HzKz61Gd2JX4xyK
	 9woDJDxIB7XEWHTUiX/2//YkFscKzHVD+ZAEJiNnXNMFpvPH8LYEAVtaw72ja9kg0A
	 YRtcF6edMgLNYMIAeV5X1QZvraLlVh/oxlMIn2kN8J0u8RwNzgMfIj8cK1GtskEIeI
	 64UsW4oDzIwEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018C109192A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395909358.12757.10513668880573769620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff033553d464960d029cb8c11d7be55d86263c01b809e9bbcf65546f14499a4
Date: Thu, 19 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773959093
