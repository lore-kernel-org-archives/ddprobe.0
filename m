Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E9F78F29
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743327594; cv=none; b=MkfWQjc/4FaPMfna6QO6x1W1YbVi4MuohFQe5gO2eUVmh45mibtb+9WJx5U/C1BSD6nfrF0pRuKrVrL0kti+dgXG/hYb15wbiT5hJLaQVNarcXIkU51e0gPEKx9oCkdkwiKFirrzbny+NeXaJ+XrD/GC3xg8W+OgO+tJTDh40iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743327594; c=relaxed/simple;
	bh=Ib1ueydedzelg7OBWIMk+ZgWrH/4HQJDvaqCDdrIWVs=;
	h=To:Subject:From:Message-Id:Date; b=mqSoDGQqmsGkEyGXm/3XvMk2RyNr031PfyMCFL/42R+s/zUIOTNmwDNFNzNG8FR2PsUADIUJnswaaSQjVYXQjtFklDGpO6jxpCqffZ40mHeuSV8KsNypcBsU5GZ1u8DAicvF3Cb1zH+zBFRJbRkUH/0+JUUhFbFGMyQyxV7DoUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O01vOw6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O01vOw6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87DBC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743327593;
	bh=Ib1ueydedzelg7OBWIMk+ZgWrH/4HQJDvaqCDdrIWVs=;
	h=To:Subject:From:Date:From;
	b=O01vOw6HDB6sR1FCPR0RUQgHihIEl0Va9EDWdERAWRsjOOQoKJ9ay8RcgKe9LdX1s
	 mbDcO0JfJxybM7GizV0VQzbqSD82wTpodn3KcDDShZ9nRZDFvmNdIwGdLA0my1qWEm
	 oj8PnKYQrvEo33VgAkBE+YiUun4gxoA0kB8MOp1YuVNfHg2L2Aduo15a3pB3IPJTlr
	 7YbfVKNrjSAR5wqd/4N22ig0rsl1N3aA2XW6nsfaIXr4cKiKVVLMERkIJ4F8T5HQUJ
	 +D9bBL1ScdLzlF59syUZOHdpX5o2eoWCw4Ax9PpHAZiXtgHevKYHOvcm9Gu6PLrZ2O
	 ggNHzIuIIdBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD41C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332759366.23312.6093358816144020736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f474fff79af637b3eac787a5100bffdec9f6682e3492b55f5f356a899a78cd2d
Date: Sun, 30 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743327593
