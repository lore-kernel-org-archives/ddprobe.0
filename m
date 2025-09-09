Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2F729408
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757423994; cv=none; b=S4UyZ9dHxeg+bXRwGYj8HbDBIzskp1BVz2rggA35bzRIsH9jLW8gk8zuAp/SZGtSvTs/27eJOpfQZi7+p91PYkYEoLIRsDTociixfp+uXG1iotfYbUvmnLt4BqYdBjXQ46e/J59ijnpf0TAesJaUsVnzaIPz7uGztC+pqN/rIFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757423994; c=relaxed/simple;
	bh=merhrqMaRVUs0lY03hbpaLEZm2fXpz1gun0Vac2qoFU=;
	h=To:Subject:From:Message-Id:Date; b=k7zuzh+1cF45SE7tRvK+7WqGWRhEafJusYMhbxAgSz1qAR3Lj4N5BHp5MH7+0RtfTWrBCnITXAefE0kOKWMOAD0AUHLDAfNqQSKmlaUqWGKxJldaYaaOgU91VYxSsT1jhOJU4/mz0Vx8pEktmiySLWg3o92rPW8Cz6fG+ZRGAnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9rVJwTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9rVJwTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4444C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757423993;
	bh=merhrqMaRVUs0lY03hbpaLEZm2fXpz1gun0Vac2qoFU=;
	h=To:Subject:From:Date:From;
	b=F9rVJwTbmRLMz5fROQNq4WM22b3W/YW2jZIGxVy8hRxnKOHfmefwejix9SS1Y2A5K
	 7oOraJz0AtRulh1wRck2oeClbi7sYJ4I5AvyfYE5WPKHxzyfQFVSXWHa4WH0eq/0Xi
	 vtj4F3Avd0b20LfWVnAGpiUmNAwBmf4KDBoNivCEibddlCKhgpXOAKv49JIrqBRsau
	 phWfnJtX6llJKvuG8zh16M/XQCvN6mveZpQ2nDAIaaNnuhz3lmDRb3TBz4GTxSSRV/
	 fuKT/Pto9JTp7LoYKUciCQGLeec2t/cqKBxfOFMuN0Mf1ma+6p+ZHT4oDM/P7ddjSV
	 lVi9+GjsMUQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250ECAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742399358.31002.12202860513986880314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665a7a4b3ca99919988a835c1feef82639225706ecf0e2bc7e1c47a5fb174686
Date: Tue, 09 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757423993
