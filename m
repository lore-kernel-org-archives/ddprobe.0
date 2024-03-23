Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6221362
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711160896; cv=none; b=lVIakmmXCPGEt06A6A5RKgbhItt/HxsyGvVUycOQHTHhUXSTY/0kHkVXcBdeoZ0EyzBX57SBb9XhlbTdlIxSRzNK0HqkZZgo9PhmmL6hFoqZte75tLyQKIS8RbOGpqGE7WcXxoT+6on2Z0zA3MDa6RIj9dauFA9pqrfkvCzJMkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711160896; c=relaxed/simple;
	bh=G2V5chrtuMXxWDEVKeQ5vfQkqtGixjZzIu/vT/0tgks=;
	h=To:Subject:From:Message-Id:Date; b=NwkGp7uuJfccevJ52xpDCQ+Il54S+luMTywmvVDr0khSeCLLPJEkew8kFCUytRvfHD1Yp40OpMN/G5gPqZofbvho0HlreRBJM1FS6//+fKPMKw1TOqSwkPjFztghbEwGXO0bmS51iRm5MEzpei+tr0AXtmkLdKSZzH3Uz7n79uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVdh8jRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVdh8jRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FE1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711160896;
	bh=G2V5chrtuMXxWDEVKeQ5vfQkqtGixjZzIu/vT/0tgks=;
	h=To:Subject:From:Date:From;
	b=hVdh8jRTdCJQ++XHwJINd0yPYS08Pfc4IhU7Pf7WqL6ZXnkNYknOJGLMZTBP22vaw
	 1nGBaBG2HVdEqho9pTvjfkHf68Ejyr54jePyPjPbEb3HSq+jdk/YbOGvAdrBtAEzUm
	 f4PLKAQvMsgRuuC7J7y/XHEH1YIjiWL25I5aq3IVPeKKWqeRR84276G/2ECE/bwA/E
	 8v6DIi/9moYKIRTE81N78zvCBk9AOIqRpOnK2DOqw+tjmPcgPr9MIDV4yLUuEiWXao
	 bNfdPLpwx/7Ud/puPSt9yb/uYtosyqw6w8V3cx8upvSpAVZPD0o6lrK/akAIYAcDGH
	 OS3oTUhtOE4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF8FC47DD9
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171116089637.27328.14652120376361814156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940ad880f97d3b09e0c336a9bab658a264c7e6e9d27ca3fa00f88ed232274cf9
Date: Sat, 23 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711160896
