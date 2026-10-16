Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429324CF468
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792179634; cv=none; b=rWkeW95GCfRfwqPZWRoS5R3RuL1hMJru5/iliY+JmpNgIgOGrvZIXVdm74n0xSsalzzK2FOQWPx+YPY9A52sFdj5PpLMX/iDG+Th5GXiDMAkt7qeyID9E4KiQifJCZoH9gE7Ir2sMd5EE7z/pRN9FfKGry+0JNnMeKcoMEZja8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792179634; c=relaxed/simple;
	bh=3R03uiG69C9YF86gCldQf6n7kNGh9tZwF71GD9Twi4w=;
	h=To:Subject:From:Message-Id:Date; b=Sz5ZTG6wkmxUexN45GJ0nTA65i0+FJ75CfRyQR1aRxyu73VrrELYtIln21ZnLIjGXuX3D6+f44A+6NG5g9ApHcd1eW3FxBiljhJmbnVcST0XXopWRZm38tXyTIaIpImTJo+xpRO0qcSs7KSKgvhHrqU6W0TNqZ+rJudZki03zro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwf2g5zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwf2g5zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF85FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792179633;
	bh=3R03uiG69C9YF86gCldQf6n7kNGh9tZwF71GD9Twi4w=;
	h=To:Subject:From:Date:From;
	b=mwf2g5zVf5XSDaiLM48IzH2Kdytq4HSKim/O5A/6R99q5c9nPUVxe9I+fJVg8A2wK
	 fyipA8914Fle+qfZQs/T/bPpvtkJHXghzzo2AXgOvn+0kQkHOvs6MRXmAitcNtZyxT
	 m3sUdVO9zmf5ZAzdmSeaioQ1/OJFoX8F2v3X/QOOEhZV+3lmt34ka1vsTJZFxAWnxs
	 1SwUTRePprxz1NFPNzAOIEoVe8aBrx0xkJP4KUYQ3dJs0gcYg79giwmP2T4I8t28j7
	 A7vRnVHQqStF55Tfj+lRAZiQx7D8dwOdkw4M2PyBw6rWbVBlQwxwWh1I7leHd9eGsk
	 e4euLLszypafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA5CCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217963369.26934.16190812662012179912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97745e337fd340b3e624db055ff1ce089b61bc650bc380eff964205656b2417d
Date: Fri, 16 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792179633
