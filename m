Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2289B2D9EDC
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753373994; cv=none; b=hkamOWDEzRRZEeYFbNvOgYWSOKfOI0Yyn2DRL3yS522qwjB1kK9vqAPbJJq5yKeD3airLb44jnksSZuLJlT7n6X8kpWWsQB5l1fNu4M8g+9cSSUYtp3NFx1+R6aoCjkoTZLZhKVzp4e2AE61G1QxJQ9nbk8cfXQxQDUvE4aSdEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753373994; c=relaxed/simple;
	bh=5yr1+Q7p5YtFT2AoBb3/7SwIVHiXPeRqj+DapVfk6kI=;
	h=To:Subject:From:Message-Id:Date; b=GIzYETTln0ncq+2GEskicUe1Gpm90BTCBgFlPZSz4u7dokf6aFhtABtT+zktAEVTKwACKRrl+bh9UCTZqP5GetSP9musq4dFnw3c48YyOjUw0P2C47MFyQueXv0nwOP1Nkg5XYg5kIQ0LxgNBv4dGUgXZsC3bNGn9MuDWfdmiAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn6nQjbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn6nQjbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD6CC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753373993;
	bh=5yr1+Q7p5YtFT2AoBb3/7SwIVHiXPeRqj+DapVfk6kI=;
	h=To:Subject:From:Date:From;
	b=Jn6nQjbYjZYLsgO+3F9ozWeZDAkWxWZl25calhcO3alnrRV8w3N8KPtxRCDJHoGz4
	 28R2PU8Sh55yRD2gjzHYNlpowLFD0I9kpTmxjeZULg1jLIpSOEqCwwgu29oYcn+sxG
	 sy+PAhqQ0hICabKvhgFppTOZFBFMa5ncs7en2U8fZdb9O6p87Q1UFB0wGypSGehJvS
	 jh69uG0ZDWiMlt/tEEBm3y7SshTJMPhqbN04KY0Zx/DqRDHhLzUZvSgC8OpojQaZgc
	 Wwg9c4X4wwHTpjY90I5ag074FQxxbbCv5pOt1uNU2NhJxlqIWbARI/RI+NyjKc0jlV
	 dXuNT1nFZSBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F009C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337399357.21741.5060154457714271333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09c3def5de39b04f5a435a2de60d6362faa7dff090093048154220a5c6a323e
Date: Thu, 24 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753373993
