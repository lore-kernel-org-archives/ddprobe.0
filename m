Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141F342DFE5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772280294; cv=none; b=Ci2/gfmer0GYBow2JnfH/b9oXIE42OLQJuq0a1bpWVbPLWh6ZTt6QBlRWwLBSPtr8mmQwYnwqLU56Hjf1UGj6kiRKqzIZ3OcU6fhPNF6wha6rzfeNRfGlPy6X0yqdyO+l/2r+yeEVq9cGAuwZtrySXVQaD+WF8bWjJ2k2oHne3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772280294; c=relaxed/simple;
	bh=uNxFdkD87pIUpSMWdS6ZKX9QKY210nkb3qoxOXdbwCg=;
	h=To:Subject:From:Message-Id:Date; b=Y3XMGuFTrFTGlnJUfvBlaWm+775UeSkZu68BBESemqw/MRaIaVv4JFoRbH/yH805L186qVjnwctZ560udj54JY23B6sYrQBA2r7/W3cHkBhN7UY012sYj5QgATgkwmB4p2qVE4EoKUGuHGPaQZPcDwAU/Ti8r/ys1nHiyg746tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNK/bP+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNK/bP+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6875C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772280293;
	bh=uNxFdkD87pIUpSMWdS6ZKX9QKY210nkb3qoxOXdbwCg=;
	h=To:Subject:From:Date:From;
	b=VNK/bP+9G/kKuEILoj6KA/wxj0NjFm2acPgacMXlqg4rBhWCaRv+Uqt1WMupKiurG
	 6dDhNlbQ3fludEzf2q3jn3GYd/RpOUZDvloaimRE11+XPfZiYqTloIYW5L5/1sQ9dQ
	 cmE0LXAFF/2TPMP1NS8Sl79/NRnK5LO06+WKMorw+cly68ZqsszouaJDajokC450Ym
	 BBsSu5CHX/WzYUe/DsuKZMYR/B+PhYMfyPQxQE9Uf/KK3Mnwyfk2gAhr9gmXYRA5nw
	 3DlPkkKaXYBwhmszwg5xIjdoO4IFwh9ArTsH7XZU3Q+mgBKawIm1kqf9ayahKrJT5s
	 L26MJPtQL5hnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E3FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228029359.5826.5061775572529691416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed8602b25e9cd3f7209326dd9be9441655669d70da68d4a52c5cd9f819e815d
Date: Sat, 28 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772280293
