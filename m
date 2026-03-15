Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49E3B2A0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773587094; cv=none; b=djWIMRcUQdzQ+J0AlhVTsvHm+RxrVyjXse2vM3K8v9hRje9TiJwvojzBEFRvyVPUJ+3QC+7bJMB56yF3oLrrgTg+zYiqDqJm8twMe/PuG9NiNUC2sQ2pW+JoGH+Iue1vdF3RRdI4/tEcm3DVT5me7VXDJo+d3EwBgGyWlLk0JgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773587094; c=relaxed/simple;
	bh=vuRKELagOni4RoqiwQjUVh8G+I9urwieMeeeslHZG+k=;
	h=To:Subject:From:Message-Id:Date; b=AhXAxgDG5ZsLCboKI0T4YBBuvArzV2oIyGarZownjCXUYmaO42xtwSh6+FMUz6QTNW0CaajmuVKG6sXmZoCZGtaHLZocfhY4uWSdZ+nJT5ZtedFZrjkC3EPjkNRtMzKtlup4kuJHz+ZBjcb9UXUQ0mr2Q60Z5Oh1NcfgEg8fIFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlnFRLOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlnFRLOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC800C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773587093;
	bh=vuRKELagOni4RoqiwQjUVh8G+I9urwieMeeeslHZG+k=;
	h=To:Subject:From:Date:From;
	b=RlnFRLOI9VBSHHTSu8xVvMQxP/OKnIY89Br45UDZ1TFzMsXexUKW+BA6Y+6mZUHt3
	 fqNO2zscPvuxGIrKDK4kTKV32h3GBGuMw/QoTjzmZXn67/SWqXVCEdoRVx/da0uCgv
	 RHjtFOApnPoVWf1S/EtnrmF84gBt1UNBi/Ege4J04wNKDLum6N5yGAS7q0MKu2Ky6z
	 nA737YMDHvuEA9hSVqI86DN8EivgmKzp58CyMPLxVR5SxBEVb8laUTP5nkjL74I7wF
	 MuY1cAy+MIwIlYP/O8bA8i6CfQp+UTYQoGiy5IE9aKxSdfApLp+uocupBPsyfNhC4W
	 szGsXMY5LqC/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A43FF30271
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358709360.30524.3582314129914866299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2549129a07d4017d70e619b122f064931dab3b83d035a728b4a7ca79cb8c067e
Date: Sun, 15 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773587093
