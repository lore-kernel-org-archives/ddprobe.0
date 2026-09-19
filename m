Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CDA3164B7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789849234; cv=none; b=NzSZqvewFRW69NZUbo2YIOmXdDmkxF0Iph9QlC0g2OqQgCCAAs2ZVMjo9HsbhkDGR7Fdxbu1xLD2g5Uo1fZo46zhhPHpOpU05YIQBZSKE8HMUaYikjpHnqafvUTHR6juzaoAOzJ+PFMgJjzwVAp72WQh+r2sFWvkKC+RoybGtZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789849234; c=relaxed/simple;
	bh=8SFvGlpZsBFSSm4/WvZ7D/vQfXbPoESPAFpcU2lDsmw=;
	h=To:Subject:From:Message-Id:Date; b=fspSCPoNWLP4MsyfVWe4ZOdPw0BTm21GRTl5Hg+rRczHW/Q9kntEP6pLM+4vMMnv3AXzpIXNvoJY8IBmZmULObRo9VXoqAMEhe1kqa+Brhd8ZlWDdCd7QNtLlvKUZvU2CEsRKqmxhArrcWoKK67U3QNBNmSmWuvtB7ASUXWPTLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXEHXBTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXEHXBTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5941C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789849233;
	bh=8SFvGlpZsBFSSm4/WvZ7D/vQfXbPoESPAFpcU2lDsmw=;
	h=To:Subject:From:Date:From;
	b=MXEHXBTysz6ZRNgIwuGq36zHlroiG/bCD24ZGDWA+GkSaV1uvGMxHEAu3cEZteq/7
	 z968j+myaDgpc7B0JoRRFx0M8LCVVno9zl1uGw1a/2KWHSnkokQxZOxUE4ujp0yAOM
	 XBfyzBCwebJZu2A7RwVY6n+h5JAA4hWy+OtSoJHH7KTeovffOlnlz7QsXrCGH+RqQI
	 WI2025DXNW+pRCNQ2jmGD1wZfR7QEKYbUG5jiVHnwvsq/S3+qGO+1yLYQ7T6TtgbPj
	 /qCvEciyrqL22dOf2DYz1UqkhMTG35yjFKiYwQNtQZAP8zLabU062xOtxokuLQABB1
	 nVhUjLavcrfjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC44C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984923368.24479.8995512470372669577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e49c3ef6a3cbdf1de02c738216a3827cb077808531053ad8fc32f35aadbd702
Date: Sat, 19 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789849233
