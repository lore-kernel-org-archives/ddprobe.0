Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56689126C03
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782032194; cv=none; b=k8Xi/hwM1MhLGW0R4UrBkwUKVFlLcM62KgFXD2DknUibxYdU7CwFpUoE6nC1eavZmyvMbe8KNLvDl7WRtw8t5WQYTbbb4rQfmq+UH/rnXG9VJMaWjox/q1EaLMjU/KI6isjMmyuWBUl5sxdZRn/pr3hMKVJcpfKQ9RQ1T/LJ+RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782032194; c=relaxed/simple;
	bh=EkOTCdHjt68aS7fACxV5LG4qA4o6YWG0zm2Uk5B3FZY=;
	h=To:Subject:From:Message-Id:Date; b=mhn8Nkfe74pXkYefQ7JTS9CeLEUwkLu3Xr8qpGyf7zDRR7o2gVIdMADqqYpmqJRJhQr/E1iEdy2eytJi9HDr/d7nEConqiat6Buo83RzAPf15YpDRZHxW6v4NZAG4zD4qzWJrxp35EZHIhhy8MwRC0cK3G0ehdvYeoqJe98jZA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgASrIGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgASrIGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23A7C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782032193;
	bh=EkOTCdHjt68aS7fACxV5LG4qA4o6YWG0zm2Uk5B3FZY=;
	h=To:Subject:From:Date:From;
	b=QgASrIGo3IH3tQ8v7gNkPsXIU1KJktQPk5mSy0DaIVIB1yJDZk6TtdzI8MKty7xuD
	 b9KnsYyEGg0XF5bourcAj+0Iv49TZIa80p+ESZZd+JYVvUUpirrLnKMZlJnzoEqkCM
	 Vcx2rUZ/2msDkVX/dyIoolfpDiZKk/+pZBz/k8Ed49oL/TuQ05jdGbERguBbn5zYum
	 i64LKdF+eZSME68WNBdMRGsjX+oAbhd0cWSaNJtiS1WZtBXxtYgH57qfxRhEIJWC/6
	 giknz+euYZXr6CDQxHj90wuLMp8xYzSFoZypVGbbzX6TUyEyZ0JOr3lmWkyfgsC/cn
	 xJjobcawr4fkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D6CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203219370.30106.10236744371302799814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974e898c49e4ee3ba8e2fb5af7f2f36b831aed611949abedd660d1ead1708503
Date: Sun, 21 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782032193
