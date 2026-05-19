Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C094383C6C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779217234; cv=none; b=s9OX9H5vk0ciDiJs4M4ARiTUrjt4E8VdibbyFgqY77p8PKSt0cFJ5NrrMwCNfLU3QI8L5xMYDb8eyoXhzZb5ymVFaL3ClTwXTtFOXtrMmr8Ekju3xfmENEM66p2YisDo/AP+PKIgcI0w2HfiOK8ZzpwMTTmX96w7QpIGuDOiETE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779217234; c=relaxed/simple;
	bh=XByTw2ue+ejvFB5C4n3OYWMbWAS5wv9rLBarDjiWOEA=;
	h=To:Subject:From:Message-Id:Date; b=LD1r0SPXJimIgcZlyuOdv9bVkW3VqujO0uKDt1Ie1Wgg+Ga7ZZmY4F96cuIu8Pfw0Hl1WsI/KbdbhNhERNSIuQ3eNhHsTzdQJfYmamHEGQ5DM1RVt3rqrqFoy1RYjJFHDx48WAbMwCAPTDL/C65q/+3KsAkpsgiMJP8qmtMgtek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9QPlLPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9QPlLPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C9DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779217233;
	bh=XByTw2ue+ejvFB5C4n3OYWMbWAS5wv9rLBarDjiWOEA=;
	h=To:Subject:From:Date:From;
	b=Q9QPlLPdvoAGsywoTxIBQazAeFSTw9eOD2lRWI41H1HqUtJLizn8tzaeJoFMCNHks
	 dm6MgYHWL0Zsnct4tmR4C5GfMY3nOzLVejIyl0Y4ZRK4iu2JxHh98/uIlYeJPinLDV
	 AqJFZEeJ+1sOph+7vBiQZ12A/Nz7dZogodvkL2hI8ze7k4PG46phiCzQTO6w/gIBlC
	 GgSeHtVh99BPTqa29YdfHkJbif80BNq1pmQbpCv786G9PTfIIpJoVH9MhkDjPiDEBA
	 FJC+OaeMIBQXmycV7OyIW1lxAH4g88tq0UPmZpCxQhQJmg4eBOYgisW/Rw5tl56gNh
	 sdTQOwNGuuStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18CCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921723369.12647.3497322968836291995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ec8557334afd63fbf368e8c80fe7560d7a3f1a7502c3eaac5607734b945b99
Date: Tue, 19 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779217233
