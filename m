Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1B9156E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721201723; cv=none; b=bdlVI9VkgumXRAMgCt17+vZnL9+LfvGTqT9GeNYmqMdpTocFSrzsy9Eu2jmLolJNy/jVu2aO4csbL9X87fgrxp9ob704d34hTAfdmL6mdVHuLYv+5o2gyK2b0MILiuDx9eBbN8RZcXCGKrgSgQG4EnatcMwAa/hTAOflEs7PSr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721201723; c=relaxed/simple;
	bh=h4EYqiMt07C7IUmNE4uYvByMJkOYEIwwrslhaRJ7Rc4=;
	h=To:Subject:From:Message-Id:Date; b=lPpgiElJ83IcvhVHBZn8UhdA64Nj2hIRd3tLyf1oaXUOmltoDTOuaijYZ1L817TTmjELbUj0w7p6NL++zqtI8406nlTZFb4XY1BU8C/KPqLeVD0H8kmEqmgM38NU9x9e2QCAwJsxj82826me+TPmBP+BsKd3r5Rt8Ne/ItoU5so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UV/M48Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UV/M48Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A83C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721201723;
	bh=h4EYqiMt07C7IUmNE4uYvByMJkOYEIwwrslhaRJ7Rc4=;
	h=To:Subject:From:Date:From;
	b=UV/M48SuQkxRAypnPhMNjpDo5ww7xIYa9acwZLxpl/TK9rJCdYvXqiFk/twZn1HJF
	 oR+wOUUBu0Xg/eiy7CEqpINUru2+F2jm8agtbEjicz18h+GtTtpA2cVpcdyCE41M1p
	 TD9wkOKw4hZf+1KSNBZy+gpv6a0LVuvewNmiUxo0/G67dzO8teNFWLTULA+6XwnSRB
	 s9sFnvNbVTMYwXPkmL+kjSTKF5GpNJypyIR9qn32uxNZVxgt1YNvt9QvVBBV0m3Z3k
	 LfGUUHqpU58ZZcHb8tQytlpvOPfIREw+OScmHgzjA3kIXCxIa8w5x1EuXoTXQGMkv/
	 JrgoUUlww2y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E19C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 07:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172120172287.28948.731096284786791647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8226362899537dad860a2c5125238c39b65ffe512249b0189ba0334d982a2b7f
Date: Wed, 17 Jul 2024 07:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721201722
