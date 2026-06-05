Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EEC30BBB6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780680274; cv=none; b=ZytGr1NAiMbgdCQhoEidXThqIR3nGBnQF8ufsj/yNrES59jHHnV0AqxOWXdNhHxLxNPvLMQmURdFncfH2aqCJnYvv9cBm4LDgVWMLygD4u9MspO8oP24Vs1g1xSPiEzFagUjLfeMWUO09tATbLMgGPwjjP9TG2ZCs451y6mbm+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780680274; c=relaxed/simple;
	bh=vu5pdS5CqLVUfmbt1tFwwEOCidcYqk3sOWzvoaQHkio=;
	h=To:Subject:From:Message-Id:Date; b=B08Bgm+X9OFPyimQK/Th2foZFTocnxgbipJhuyg2dX1hZQYdDUF+clveRo8YKj+wGJMVA7VB1EjPJoRXjkIN90WIC1WddNOsZovOq/8f9D+AQ+aFiQ1SqRv6qWx5eeRW21qeeRDtmvT6idFus9e3IH9gvYIfMugebcw5z+PB6LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grsCdsvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grsCdsvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE034C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780680273;
	bh=vu5pdS5CqLVUfmbt1tFwwEOCidcYqk3sOWzvoaQHkio=;
	h=To:Subject:From:Date:From;
	b=grsCdsvwKC1YadyOx/CKPX1/YmoV+3cUoXvmJZOLkezc2G9c37U7eqNDTbt4EG7cx
	 so4zOw34kDKFZySYIzyGJy/tpSHFzFUz9yZvBGQntZifXECXglWpqVyKcPMp1YWQpM
	 GSybvGAJrRdW5X5Wjt+GsI4xzFtQ40RtIBH2gMwnOkN0eyAcKch8coHrOJW7mofokW
	 GKgBtV+WiQ1ZNabMrnnQKezij9fMS31jJdxmXHCVDQwTIqCbgyWTkj6f2KmiJ5iHae
	 sNvMVP/g8U87jTrWXdbUJe9bQlqnpm2PetmwwZ6dt+J2eNRlQlISyj2GF0HacYxEvH
	 K+XAfE9H11+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C47CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068027370.23816.9597333818370194727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b16ac724d2fadccdee0c970fe0c1ee956fca7f3065d7974202c37923ac8225f
Date: Fri, 05 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780680273
