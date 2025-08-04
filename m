Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0BE20EB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754266194; cv=none; b=YaRlGrV8FQH6GsSS6pEkIoaBvpCvjxVpCaXQUNusRxjFNqhL/5n/CWkZyRF9nxBQdP9pTOjdUbhwnFSgxS1Vowjaj3DWz/uyxvrmNMOf24/DqRno4PhZ3LwQA4wh9tsVgmkUR/kbMIaweqyntqYT2k+5KOZWnMdATGuseVhi0C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754266194; c=relaxed/simple;
	bh=nNsSbonAPu0dQT2gshv1muUFVILvuJro4zQVlhVvMaA=;
	h=To:Subject:From:Message-Id:Date; b=dXV3aJpTLf4ala1FH6YegitkyJV3oTsH+e1w61NaNiXM09YWRdkM5CTc5DZtf2SVlihgKfEvtxTFtTA0ss1/aoTKrR0XW1AUAVK760vlndEDRw1zoEDE5fJCLhS/yH7WnH5jJZRzIxBe97pK8h1slhszAJJ7TUsZ127NXVKVcO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ7MGFsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ7MGFsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754266193;
	bh=nNsSbonAPu0dQT2gshv1muUFVILvuJro4zQVlhVvMaA=;
	h=To:Subject:From:Date:From;
	b=uJ7MGFskwzX6n8wGlvKDhWS0IASBDgedwSHP+fttYpdpL5CZLuSAQa65/Yb4v8M2d
	 qDNQEtPeK+/YWwh1Mr+Ufi3ovV84Geqo21o3Lk2u6Ur6voHYWp8HDK2H5dXsFWCiDP
	 7xCKf7PVI0omYsNxzOtCc1bVDbcCK1yyfywifHnS2BN90IEtFv/1UhyaqWF4TitFmu
	 Vbgo5pHhieuOib7Iz/Ikv44cjPMqGUHazZ5i9n03X0tkvkmPBC/hPgizMqOzh4XkRs
	 SFHTbuwHODEw2x9+ZG2WMX4F/JKWdvkEMs54MmtPvYLU3u6zbDm7b0paNhlWKZ+eJL
	 qYl/MOpiSTxmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D8C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426619357.10886.8997616588133563440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3b623e1a3f7881356785164a05c93f0174cd32ef699b3fb2296e3a7b5b4de1
Date: Mon, 04 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754266193
