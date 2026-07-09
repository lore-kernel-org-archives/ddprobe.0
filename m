Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C773126BF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783616314; cv=none; b=cTTk5kiqbXZ7hdCoDPEXT+hCt6qPH7wVAPxH0AcNG4dEicU8U/bKZtn92nvuEJ8vGjorzQQXD3jUjKQU35dWBIae+Vxt+tDR8gUsQRR9HcI9PRLZSyN1r/M/+gFUXdEyBsQ+/42HS8NPCiDypVigMO9FvId5toL5STV7aDkQZAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783616314; c=relaxed/simple;
	bh=nHWXrYOhImmgq6smOb2O16e9Jv8qx6goSgV7/JdhfrM=;
	h=To:Subject:From:Message-Id:Date; b=BJpV1URBV0t0c+E+yO1fsOg8y+ny0A6fsoXJLCvnfGso8B0cgqJeGpfeZmH6AkV7Ja1HmlykvNIeCEsey0MqdsbV5MuqqA2Mu5vYrRopPbsz92M6NwMRQ6Z/BTe5Idz8Bd7jJn/c7vj2XzuvyhceQb/ZiUuDEVuHhDMk56oh1PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oET/+7nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oET/+7nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA310C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783616313;
	bh=nHWXrYOhImmgq6smOb2O16e9Jv8qx6goSgV7/JdhfrM=;
	h=To:Subject:From:Date:From;
	b=oET/+7nl2Ny45kc0ae5BuXyZ9ztOLdNOTnvxzG7YjXKogDf5ljnxpGq3yPsRmOlX9
	 fnGhox9Opj/lY2b4+lOGVeWldWPP+YKtIOhlZDF/gfpsW/yk3SQJy1fACPO7ABQ37m
	 344i3dC8rqB7F5atscfNkw7qaExpEm8ElAj0HXrajpXS+S2u9TDju7GfjO3ONTvq36
	 A7rLp1q/i7ctaoBI4TTna7em+LPk1iF6jCLTtmvLZleu9AY1/AmScsFg7d/XxK6AWo
	 Ftiug3IoX5/Z99J0D5wsxZ7i9O3mWML08vpCyRjxct+mMd772QiVEE7mYBDeVi4715
	 GSKTUjYDZLAJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361631368.26332.17369713961369411997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e334c6c0efdbf06c4cb7602a12508106c30f166537ba387d76ba4616f8620c27
Date: Thu, 09 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783616313
