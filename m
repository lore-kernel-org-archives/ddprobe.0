Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723A223D7C2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780064554; cv=none; b=NBmhA+RN8Nnaio5MkKlCjoB6Xvv7tgf7J9SqaGKgvjfvgyI1wuQ4os952k22fP7JpxneRS7QxjBb5FYZU3GZWjTC38QRfGANL4OdBhU3KmbiSOs8KkfjCUW5QRZn4uFalPnuS1XP/PZObjb6uxnzYQna9Vc+ljAAKQXr4jp5vZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780064554; c=relaxed/simple;
	bh=X2CRSJ0RbIJcuypp+Hgn/ZF/KUHwdmnS4/1az8xw6ms=;
	h=To:Subject:From:Message-Id:Date; b=qcaZZuTKnK3Y45dacD7UHFDsNjtckqbYHf4Mezl0WVJoK9OJfkUL3IL4XOX8A/CYrvcfqZZVJXcA6c6RyncP0AD/nCiR3HhLpkiD9ZhoWnMdqBQfbPwZoTwPtYJ6+elC1W/Yac23wcnUtq6q+/OmTq/kThs2K2fW3iikJjf8Dls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfIKKMoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfIKKMoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3026C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780064553;
	bh=X2CRSJ0RbIJcuypp+Hgn/ZF/KUHwdmnS4/1az8xw6ms=;
	h=To:Subject:From:Date:From;
	b=cfIKKMoMOtKk87rSS2RaOvrqLmm/Ph3P97Hjjs19g+8mrt0zOK9OFn/jP8Kb1pyjO
	 zyJlDfEUOHh9bTu9HUSzhINg7CRjGhBF0sWcXcRiGOz0GKyaqFicrgxRoWWufDkz7T
	 68JQZ8oigYMV9mVTdHjl1Leo7KxoCnF6TWRDxci/XE2dnoA5JbDxaUU/KnKzrV+O0C
	 aL909V17iRkkgOQNGbbiIjbS+q2AWgrEFFuoF9cFWKi528TXH4mPSi5utFY73cVAlX
	 5x39Te61+/qPfLzwF30muVgrE4vdYTDMLW/Q3He+I9scgLH4e2I7ravmQ0jYqMhEnK
	 nEwYHSEg12Cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CB0CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006455373.27110.18180099689099150710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99f912e79548947483fe3b76aad1f56fd25907cc51e7f1e0ff000664e0fb7c5
Date: Fri, 29 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780064553
