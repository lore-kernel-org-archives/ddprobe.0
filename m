Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C73ACA4C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784213914; cv=none; b=PZiQup4KYZ4yzdyIIFg2bcxgrIb8a7972fyPcBAaO87ww537H6Ba1Lr3hwY7xtGc3hf+OBuVWJ6WDAdgV4omh1Pcykd+I6SQxK6wtfsuhPkYCAsSZosgKwAvjwMGxwcWropAD+4lpUeXGBHs2ykmeZCPzTBEnwwN+Gco0XaE8TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784213914; c=relaxed/simple;
	bh=tlRySx0pfU/p/PAXDdS+45wWopBI4V1wI2QA+XRaVOA=;
	h=To:Subject:From:Message-Id:Date; b=KQGS7/jxuwEjhNjEPK6vUEn6UCjnyeMh9KIKqNNd+Q68MHlR9Ycc58XzRJjyTywd9xZDFVvd6DM0RJMgaWA2f5wMeDaPOtLkdV13fxP65yWyguImANVG7nPumDupqgwm3mGeqnuzpgb6lf7D91Xfr7z7a+tYRLbmevvLtwtHIf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+W/3TaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+W/3TaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C29C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784213913;
	bh=tlRySx0pfU/p/PAXDdS+45wWopBI4V1wI2QA+XRaVOA=;
	h=To:Subject:From:Date:From;
	b=V+W/3TaX5M9h/xF9hS84wz2lQO+yjAI57XzFSeyDKQh/XS172lu+VGPpVrK0PAt0Q
	 Yc0S0Rks1pQ2XIm4oVII7VRLV0DfS98FpzS9uj3kstTBp6QDe2d/TPU4/lClqsyX5Z
	 vqjFTMNEEarWCE8HSDx2yjsd3MYHtAZg/xHJ6DnBc55C5IeMY6gFR/2P6sp8VWBrsp
	 UKltZyl+b6WTg8ql9BenbhCoOtL7kEZQ3iGIwBjZNBII3gcl9L2cPn7mxau2FPzoNR
	 lqKZHkvk9/Ye9DXuc8kfU0qO6WtT9kSZCv1gky15vs1FgYD7MBDF9My58rGyd6t+rP
	 vQt527ksfTiVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF736C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421391371.20868.3390125924833056543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20ab4064598934f717ee82128ef03bd5b1d7aa6fed565ecd32b575059778c5d
Date: Thu, 16 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784213913
