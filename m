Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DCA72629
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752808794; cv=none; b=eE7hcKNj/Xw7j0t0wI72cAub2c56qK5hJAjpK21CgY5ukFTDdXRudwLvFUsM7AKc4fi+EzUqqTk89tizhEIm+gcTOrqeFd67FXN+gsuigYEPOlgxylXyt+hqe5DUsGxQofZ73lcfDFBzeQdSdvyd/KMKFieou8aPle+pp/Y6XrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752808794; c=relaxed/simple;
	bh=JESS/js4c8uWo5YtLo28fCTgGMx481ZKqkouqNOJFjs=;
	h=To:Subject:From:Message-Id:Date; b=PFuyqOL0abn0F/F2wsm9Hr68hRIj1oWVZEOuoSfZuWKFMQ1hfbq+FgYCeaUbNUX4irZJKVc40qLxHyQ+MNziEMdThAe8lbzrPcJMg2cocwON6xXuWpfejM0y3XciN7LbplvCjuXyNiyg+8pNMScOsScHwboLCPSJ9Hfg8GNTLqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG/pwZX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG/pwZX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752808793;
	bh=JESS/js4c8uWo5YtLo28fCTgGMx481ZKqkouqNOJFjs=;
	h=To:Subject:From:Date:From;
	b=eG/pwZX8EV30oaOH83MpijwPnCidKyvKD6e46atNNm7785g5/msq7I/ZJVQnLh8Gr
	 dksxfocf0e2c9NgVJBuPIe3yF9r6N6yMVOcIUojg7nNWg/PWZodW6dpeukzgU7Q36R
	 rHU6K2Zt+c5I5Mlg4axcWSsFdFXFpMml0spEZVvoqF6/6jh+0Za5TVXZgs0kyiK6mN
	 OMDCdrmmlyXg831rWpdrR2vnBbpoNkRuuURg7NV7dRnt6cxABH5VBCjEDcNiJWb8IG
	 oily+Z0ywSlrq9JNiv1E/0E/wZY3XK5VRiT3zEK5gRvdcXxs5/zLNeBdnWGXiY9rfl
	 zTLMXouC97+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961F3C83F22
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280879358.32567.495412811650910546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c41d1254c522d2c204fb38fab6d8bfabaf109ba1660d2e5247dfc31fc50840
Date: Fri, 18 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752808793
