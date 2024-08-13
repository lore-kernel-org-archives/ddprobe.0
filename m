Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAD917D8A6
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723552554; cv=none; b=A+NnCOHeT/fuQFGOOO7XR/mWJ5AexxYAz53HYQXOtymr6QHjAe1ulP5CwIHmZlrm01WWuFbKKha1JyFUM/94ltWeMmn/42LXPw9njEbVARnGDKRo+DJGTOGFkkbjVPlOUdY6JcquIKfgNZgp8LZbRJiRB2mlYo9JSv2uPK2YBAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723552554; c=relaxed/simple;
	bh=vnd2bMDDsDYIcJ4wL6ywuriAxsSYG6A5xeThg7enHQk=;
	h=To:Subject:From:Message-Id:Date; b=sA1OySBGonGYwlOpiQ7uFP0pLdU7U08y2csIHWSL8oZA+3mjRQXRk3QKO8z49CfTMIlDPA0O7d8GiXhLK1jg7T3M/yC13veW14GOgc8oaoDUilzfxtWPnXPjn/+FCCMDL5sAU3JRyFM5WcgUih/FSaUV9dZYOu+W4qc6uRzr7dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTPq4Rcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTPq4Rcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3075C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723552553;
	bh=vnd2bMDDsDYIcJ4wL6ywuriAxsSYG6A5xeThg7enHQk=;
	h=To:Subject:From:Date:From;
	b=sTPq4RcgQAxgeSAnYU04+dAgc/tT/Lp0r3ruheqKO8CgqHUtDGRteRjf8Y4VxI1Tu
	 98UyirtIcvV4x+o4kuVpS0KmLmThPw5IRsoAGucHUG1tmGkvJalAmmDci1SYdqy0Xi
	 gYtmisjY0URwQxQ2rVjONZRUBMfw8g/xNYmfMmrJWOynh8GQfQBWA+EYLRiQ6NH0VA
	 u5W1f+86f+t9sWzADHm53jiJRKCUu5sKkJOn6KckKaI40GZSLe/vhlEkLTZqdQZ0t1
	 iE0ybH/6dFzwZDXcxl4MdxxB0MsA8n4huDHxp6S2zVNWDQPDz/KjrHr3+Gxmt2azZ6
	 Frep0Bo6kjINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92511C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355255359.17120.6196630713706850899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7068dfbb0b5272720194bcba95684f3c29518930689d3ece1bf15620004d9d46
Date: Tue, 13 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723552553
