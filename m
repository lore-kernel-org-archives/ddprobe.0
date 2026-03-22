Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196EB40DFCE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774191294; cv=none; b=icfIL+Q0CkQiVvSBAZwgFqnimeIhl99hybXO83+uEPfYy9cda45wINFoWtXeBk8ObgjAhITJJDjUqeR6GxoLNXHDjMjjjK24LwCllbs2RtEk7V8MpHqVceNwdJBzQKGehUuxR5k+Yt5lgqfGLXW/haCBW+HzP7yYVR8kBJXB1ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774191294; c=relaxed/simple;
	bh=inshZToiMjG+Rzs9W5lwo7n6cuHfU1f6KDCM2ircV7o=;
	h=To:Subject:From:Message-Id:Date; b=IzbI4IPLXEqxvrPrQn64fooeNAvOpjiRT6Q9RQyT/Faxune4d0loLrqKyXk/UBxWeWZ30FjK+jaDwIkaOTz9aLc38VVuKjjGKT1Ds2Oz+D07+heSm/QI3Auc3XSmEH5HmT7ZyBZ43vdCfZikQmYzvK+HKRzrHCDBOfXbo9ovy24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vezcf3cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vezcf3cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A2FC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774191293;
	bh=inshZToiMjG+Rzs9W5lwo7n6cuHfU1f6KDCM2ircV7o=;
	h=To:Subject:From:Date:From;
	b=Vezcf3cJYByGKtXMZ4rHmsT0NIFH2z4a4795vDz+vwsGvXxrD4NmsPMxo9Q4RV/Ba
	 cCuszxWuEIuj/yyGI/NnqVwZ6gp54TAFPuXnTFadIOYTzNhQECYBw67IBNUJ62T5XG
	 HVacW82aop/ukR1J9SzbULD264j2mtvwtN4Q6D2X6dJurkfnlEZhLCeOXlPlzzxHPy
	 h0qWc2yOoK7V8XAF2bzwnh2Mhr60oMiKxzDCg1idPUa5/dOQ83Pn0sla1MD2y8MvX8
	 beedC8AY7mXkKDI56JzRLHgumi8dQv/GzFQHUVQhIYEncir3f7S0PCXnE93d3YV9Hl
	 EnUJ60Du64USw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01CAFC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419129363.12380.3934625672787615183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be40ab994604f6beb988c3740f6209422370dc84735290e3feac56c9e3fc93bf
Date: Sun, 22 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774191293
