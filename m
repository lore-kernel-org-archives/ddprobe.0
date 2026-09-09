Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E562550DD2
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788972634; cv=none; b=RDQ+O3FPfGIIoMhykb8kayhgbluEV2brTn1SABFOFZ15hbcCVSkst9lo0ZN8mvZ0wIQjfUqfEWmzrB0AY1m/QlYYGI2DwSMr2fAOjWwdLL3nEHbubzE3/B4SIlxeBHbB4lvofZ62AuInfB6LUkG4WIZz3eCZdh4DOP/eE0GNqfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788972634; c=relaxed/simple;
	bh=ck0i5ahI6pFuFUkoAipGpmnpYgfOT0WKC2R7ybJoL6o=;
	h=To:Subject:From:Message-Id:Date; b=K3lwJB1uOeBt0qc4iYx6IP6E9KzmDF0VhaN2XvWNUwzgghew+QrvnocpJi7tiymyh1N3DEHx+a7DFrgTP/Axw14Z0aBqkibUZ47D0hnjayiaHuuDA9tfK7RU2cmzQ46rF7tBY/swP47dWR/zVvuX91FBqoXfcCLCijKAYmS3u/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjdGRO4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjdGRO4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78A2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788972633;
	bh=ck0i5ahI6pFuFUkoAipGpmnpYgfOT0WKC2R7ybJoL6o=;
	h=To:Subject:From:Date:From;
	b=tjdGRO4Kl0lE5iGtAPc+zl+gns8JoC5v1y2hoZr/uQ4RhYc4gL2mMj2bpi+ZDr9pa
	 nPRfG7GLm6/K/tExgFru4AfPxaMhDWN6Puzuq/Q8kFed2aKNaYsZW0Xijeq53SsJoz
	 2vL2HU3zJ3FHIj+ptq4oULPTVCjpS53qZG9n93e7qx04D5B9yWJE41cXIJRfMQo0PC
	 Bfe+O/VP13ub+eHdUpaQeLaH8hLmdBpgj2aHyjr2gug/gsdsp/6N159XNAvibZi5q4
	 e0Emv8KPALh7Q20Rg0P5cPffDphfIrWkVcIZeA/5AE18ALLXPxeqsaxSnYYCmdt+R+
	 LhLnSqjXM2MPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21CEC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897263371.10175.3212071223226964816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f47cbf7843ba11463ceb8bae0a21184e41b9971f0d4c4cfdb41068491c2550
Date: Wed, 09 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788972633
