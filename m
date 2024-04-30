Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB6412D1E9
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 11:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714476743; cv=none; b=c/omEOLPUol7/lxP8oGf3OeBABT0KjpXiXQ7B2QmlfaJeCYfALGjqEoQ5bV18zInxX4c7OpdrDFc8kQIMh+NOy3Z2dQBOlJV9p0BFM4akNyvRjOAf2Um8mwrBgjclQLn3mccuZVsSyth9/LdZnDEa5XIULT/6xbA7++N7E8gLs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714476743; c=relaxed/simple;
	bh=Pignl20zEM5w0taifMLX+PNfTJ3bs9Qvbaly/DLNkJI=;
	h=To:Subject:From:Message-Id:Date; b=Tb9S43viLmXqctw9DeBbB6fz/ERJkM23XhXwBnzxjL7Tw50JYHP8Vh1+rLPXVKChlTalgYUVT4RCQ5zi8xbbj8ne/oyCSFzCjQKiipYU4LLn9i2nVbXoPPngcfgBMJMZ7BtOCH3kY/aM+3HLTQcN5lyXzdkcVnHXpGL3ykzBVwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVchfGPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVchfGPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFBBC4AF19
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714476742;
	bh=Pignl20zEM5w0taifMLX+PNfTJ3bs9Qvbaly/DLNkJI=;
	h=To:Subject:From:Date:From;
	b=qVchfGPZ93II9Xt27WKmYoRPxee81qLCx7MDyATXyOGOu8Z54Ay1omupiqEikhP8C
	 o07JdL3Z1BWXIDz26ItrIO1j1t0OGsr4cvbrWJYWWjrqIGs8fvOJUO3C9qsFN70OZi
	 l8GhiyrF8J1tZmlV6CrcYSq1uLPFhMbzjDCO1IzlQ6kR7sn9JgpLGyGYSS+e4xtyRL
	 Rud9yivzriJ3OIoEUn2k5nk84hm8SiEKWXDA1vM3CO4BSLKj8RcPbCv08Va+IT+TR6
	 egBXH6uRmWYnoE/IRCfZ3fPrQGSuhYHwDqmGP13P7BOCzOlrznGeqBOO2P/DiE8ZXR
	 N75qYs1lh9PWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C223CC10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447674278.27188.1270697935026198011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f999f676416d3c14a41c2de63f40b56b827ebbfe3bdbd9dc809e2335c62a5e43
Date: Tue, 30 Apr 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714476742
