Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6A4208A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758178794; cv=none; b=S4vmVoMV/BfRGDq3bubbJ+I3jUoME3DLv+GXNXFr+96ojhANwW7Lt11TdKP+Pb1z0YQr5FaElqmVl4pbp6xrvl1pczG3qWWnll6g8uXpFr2yyNesi5JCMpBonihT3qXdi2QKUW05KmqvqgvYo0eWK+TelD58PKR3sUhPvcg4XRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758178794; c=relaxed/simple;
	bh=61lfdhCEl1+rSMuclxzK0jHtK8Y6kpfuhXbtLiM4nxU=;
	h=To:Subject:From:Message-Id:Date; b=PbWirS2p2KCT+LiP9aInYukGEx+tYOaRiOaUmlLohabgeR4BWeZKSxE1EsXlFksEvJphldcn4UrqYGH3OQTL4vBejf56K88rVkMNWLmeNNtRee2ilagLqB6OmTbfYzPn3Lqall/tbKlQmVjSZcqMzOGLhLW3wSXpLD762va9EQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBFMoK4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBFMoK4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758178793;
	bh=61lfdhCEl1+rSMuclxzK0jHtK8Y6kpfuhXbtLiM4nxU=;
	h=To:Subject:From:Date:From;
	b=rBFMoK4SW1y2DIv6AwM3MoPVmpQ6TBTpinJJQjxoErhNuaplNRTBYwRqFVtqZ8Kn1
	 JckiLCnNpsaL7k3iZdDulyYJzHO/NrCGJAe8t9//kPhJF4ELwjGhHYzyN9hmG2/FSJ
	 TKoXXT+ZI7at1/woMOoDnByqbs6e1PBBJNhBlQd+0w0mdPzvzLq7b1vfugsnXNYXKj
	 Va8IHqIPhu446ewy/lztKkhnV5yRdQohXZPMxUcbd3N5jh480hR7a297OO7B9wO5/W
	 jY0aBpNkr1ESeVtWlNgtteow5vWU24ueiH/BecMaAuVYNcUAZ5VPfc2M5RKFwq65Cu
	 GfHDU2e1xGplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93315CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817879359.1124.12396154625606760147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942dcde5e0d1872adfb84b340814fe796bd38767c8787a6c3909880ca7b760a9
Date: Thu, 18 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758178793
