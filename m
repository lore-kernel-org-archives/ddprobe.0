Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D2933CEB2
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763718114; cv=none; b=in3aGB/lbwKRlz1Dj8h32F5LRyrx737YlBshZqzGCYMeyu9fdXYgIxW7xuvLUXhCol9Yl5l0PichHXYrLcZcvWgXI7ulr5DS1fP3z7o4x/gBS55/uZ9yDz9B0EBtmU1Z18I9Yka47jjSWBh91jav96vLDWQ25jnebLw+90uGUBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763718114; c=relaxed/simple;
	bh=2A3PW0YmzGTxpH1yyllxQ2ISwdvS1r+sL0hVtky8iIQ=;
	h=To:Subject:From:Message-Id:Date; b=lJAA3kj0cA+pwSDVhZ41g4arqaErZt9e4af1bfg0roiRZnArB7wkH7eKqjwMWKQ8Cliz9cx9SxxMBAVyi6mAmh2Xh8i4gZ/61KysjIEMJzPDInRBqM33/Mlm0JTbBLpOfL8kcbZoiGk56hv/94erze7t415slgIwhZf5R/0EuNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcWJA4AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcWJA4AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E552CC113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763718113;
	bh=2A3PW0YmzGTxpH1yyllxQ2ISwdvS1r+sL0hVtky8iIQ=;
	h=To:Subject:From:Date:From;
	b=TcWJA4AJxLiufG3lBeQgmkST4aejJZRRIvBfdlOuo+KWpMuuUuaZYDRb/gzIc6Rqw
	 2fXqRbpLJzDTQePOyNJizmULBe3c038PODNVcvUQmCGOkuyclbZeYvaFo+i1q9O3cd
	 zzhkEP7VfS21AkZ7N+Idbx0INfCmt60RKcqD3xzJVYmXxW2oOLG7hDjWp6H3SR0n8F
	 P4MNY99hRKnJjonc6r6AgQEWSJZV1mrK4BxzeXz6D6JTrxj3eduMc2hMzM8vGXpFso
	 L7TZh4qF9mupAZa18X7rnbW3mA8Fa6m39pZfq9aJVq/i/WI2rFB8FfdoGr4EEtcFa8
	 KJGcB6RZlTq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C57CFA761
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371811386.4554.11522444669313417810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532dc4f4dc10c44365473b3bda73d885f313ac4aee3a60cf2a4131d42ac320c7
Date: Fri, 21 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763718113
