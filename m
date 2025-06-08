Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389CBA45
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749415794; cv=none; b=GhJer3YNn2P6BhSXnjn/16VjyS/BkR17G/iR8NAedY87/OdzKBFehFgVdG5KkgLb8++H8WYbypG64fxPcY97dTwkFipvZUCX7UpQ8jbX9xr6YHFCn3vUxGVB8Xc1nBVVPIvwhFPfUAqgDaXkoMvb2VSCtcGjuSxh+hqzU7RE1rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749415794; c=relaxed/simple;
	bh=YhdS32gqpsChnN5UT9/A1GP6Gbr6iTrqec824vuwcUU=;
	h=To:Subject:From:Message-Id:Date; b=iChAKYB/Fri+1mCyt4qZ9dF9zVQaoN5RwBC8mse/uTE7AtqCkuv9RgovDN6hhndfwG+IdsIlfEAHe+KiveipQSaSJYRc+RGajDvXSwmuGbOIF/WPRP3uz7cB/cRjfNXs7DecXygNFpI3g166CvO4kvJQJqYIWjbtYMZSw8GZp7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEz8ESoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEz8ESoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF282C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749415793;
	bh=YhdS32gqpsChnN5UT9/A1GP6Gbr6iTrqec824vuwcUU=;
	h=To:Subject:From:Date:From;
	b=bEz8ESoQ5jD+paVWP090KqA1/q6avWpydWypVLHBmh1cSM50v7BMRC/2cg+ZIanWw
	 4/pBvWLCEgSgDZy2+JpBBbvAOInRY0S7giX64teQ2VdZYX7CxzHhLYDa5lEEgn/o5h
	 ty2+FpaN78J70FVyq56cCOJgkBznzpV8yoh0Rwpz7koYAlAOl3uRu+R0Jn+ojeloSh
	 kKwN2p3fJC+32u/JNM1UU+z8ocrPKxt4+vsVzNcc7FDlo7k7mkmGWz3QfMw/ndP0HQ
	 weZLpsnQXsSjjrqU5tRAIypOoUM5lCf4HhVHgs+g+drqcKBd4YaMM3ZZcQduKM1sU4
	 FHL243YVmUHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D357C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941579361.26502.13735393226231155930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec223472fdebe6f720a496a690c4ed3433b03930db187a891ade8e2cfdc7e29a
Date: Sun, 08 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749415793
