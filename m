Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BA72153C1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759589394; cv=none; b=mEXh35upxQEUCSaYf9hzyriyFSR2gtUHQhoAQ1dE+QOaEhOg61K/nXgXnRAJOlHa5iZsVgLW8e8WQzz2qHqfNvQBpjQqR5rmeVTraTP3SK6F6FpIHdxRR7Stnw/GVptA541jndPqHW6fSU3USu90uVLHejDaul7Jufy9rFIb1Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759589394; c=relaxed/simple;
	bh=AxuZw1HgTYpI6f9LMf0zetTxWlDMBfCpGZuaox88/J4=;
	h=To:Subject:From:Message-Id:Date; b=KUND7Bg8WrS7G65kxeSnOseFQ1fjBvu6NyldI+jN8OXK6pL+NGEIVkOoOK7yfWlOFE1+ULlawVWBjkArBZ0eegr2ovC/8uKbwoXB5nvgw9HkTYWFW2u+h3jBaxpmxLx3Ji9pJ+rvCblbAn5nSazfLGZloAWAJGblGrruYZOhIsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXnLX2p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXnLX2p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759589393;
	bh=AxuZw1HgTYpI6f9LMf0zetTxWlDMBfCpGZuaox88/J4=;
	h=To:Subject:From:Date:From;
	b=IXnLX2p8gHdej/sYRMKMiG7e+kSsK8S0hUQq9NI4qYhFYTomyohVjJB0vsikgK3p8
	 lc5N61C9eKnUIq2ZG3Rl+d+naAHcfA/9s7kA5mK9sPZxyg1idHKj5J9x2dqWxyX+We
	 t7b5HzaXajeMIctbV3Fu/Z+PmQDTbbwlGFKzuk6kqz9Pz3dd0zPYFn8BzhnGFjt02H
	 NO6YJkg889WecyRurB3Ng94FgC8c7Mroko4bm1v5TYz32w7rfaJZifgM+ykfDNI8Pv
	 bhFOxjwp3JlvVec/Hc+YKVNRewuH2a9kV0XrJGEwC7E0AycUDygsQmTEhqt0zQye58
	 oi7B/+JfFJrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C6CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958939357.10785.10282569758983361958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88810e55bc09964a37963b8ab5dd81fdbd22290f23ad51f787dbc958f2f7c38
Date: Sat, 04 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759589393
