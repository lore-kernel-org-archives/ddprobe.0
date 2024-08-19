Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B58B381B1
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724081154; cv=none; b=ejLkiaCEjKCOxpId9K025etf2hlcFQ/ZwkJKhDjVrwqeVP03WgEdXyP7mXJ0QqDp7aCdi9dPl1tGZan1vJWN2XNxIcSeQX8KzrEHXcKyn/heMa3+hVWKiAh2ANf0qantcsKlX2KQxEb1n9Edusr2v84KtV44072+eglTCSWgx6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724081154; c=relaxed/simple;
	bh=ce/8gqTPulYpRPOS2JgHv22bNEwyv0kkIjywH4hrsLc=;
	h=To:Subject:From:Message-Id:Date; b=iPB2TaOLWC3fHvhQROzJd9/JhoGKiV8T/h30U/AquP05OnIyhc/0rmqmBNMA7e/iZ0BZSUg2Lw2xHKOhOZ9S79mrojVIyZSAu0tCor5n8RLrAcIVaisiQnQqE9CL6XZXm4Us+8c4I5reG6ZrJeoa3Dr8N4VU9izt0wQbEjj2b3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMrUoyPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMrUoyPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7764C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724081153;
	bh=ce/8gqTPulYpRPOS2JgHv22bNEwyv0kkIjywH4hrsLc=;
	h=To:Subject:From:Date:From;
	b=tMrUoyPZnwdl8ZG6ue6CCdCctoxha6YSU7wFlLHAPutDRbdESe/dfJAyJwwnYvNOL
	 XpPWcVqgL1G4QSS4mAUBvs5nD4+7EvUagpaOxA6IsLmrnGScSU0lNBKxBj/yxZpDT8
	 8K7ixMkn3xaIPqnY1zYfb/cuIa+7ssaFPjXcawkbSLiGoayCbGzU9JCF9NGlm3tn0S
	 j7J8ByKxyzM+H3Kqe9cRxVsHFuMVRggjo1oVxfxdvCEbvIHToCrcgjlWOPuUYnYI4Q
	 rj3TuyiPgNbxBIlw0JLCC+UDtDrAGM6/3aDPboCNfipl1t1upMtk3/VLVIGn02C67j
	 NJe6cCHgYU9JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55EEC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408115366.27639.1900736815751237003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04654b7812907066527706818239f5eff5da629b08103823ca89ad1ab62fc581
Date: Mon, 19 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724081153
