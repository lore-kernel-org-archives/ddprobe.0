Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A76913D532
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713901223; cv=none; b=Jwl3ta1a5Q2oCRrow/+a4DNV4OLLhjWKc1qExgNYKnDycfxsNgOYMLPPK31w72T5/uDuYezpq72hLT2jdlGIJiL8bkusyyXlLcPA8VV/qXGCTkraaVRZcYWyieL2QuBgzczRuBOnd3eco65xv8N4gFsTCIe681thSwbL7IgYR/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713901223; c=relaxed/simple;
	bh=E/Tjk/4Cd3nJsFgZ9389Clx8A6PEbRsZRVC9BtR0NQo=;
	h=To:Subject:From:Message-Id:Date; b=hkekcEZqfo5uDvWZC7SiJHt2Tkvj8GgGkIHaM0pPYnAU5ASvMzBYeLX6DZLxEFh/G/yMn0evsN6eBvo63+4xbPtFEvXnf3+OUp5AyrK5hj/qFm+oYNWNBzeQfyoXA5AniumGqWu6F2T2RqcnkhWygh7cRd9DwpL2DVURn3yYYa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ6/hvWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ6/hvWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D956EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713901222;
	bh=E/Tjk/4Cd3nJsFgZ9389Clx8A6PEbRsZRVC9BtR0NQo=;
	h=To:Subject:From:Date:From;
	b=EQ6/hvWzFQModpmLdAdCwpjIQ8sSs+280ORMXTfJUsieI8u2yfT70RCIv231cNXSS
	 Frxf8YQNlCaUUiewaSok66MYuj0FxqbuGRKDqNC6ZD50flEAJfrg0Izf5RfJL0aCs6
	 nU+jGj/uhKZ22nebqOKgT/nB7EcQBlkjrMDVff5acWzkIM0AbmI6YweORwkZiQK7cq
	 fcP6jXPqX6NUQxpWodIsYsYOl5SM8I7mWZti6qjjPvihUfoRo1PrpTM6eLfeWnpIG+
	 2KeyyYiZ35whaFMJoASfKMxV8YLr4cIQ7vv5sWORMTX+4XFlhnoUUBNUxOj3CJf5JO
	 F9AYyTKgINqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B98C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390122276.12298.6361173768988839230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9ffc5a2b0cd1746e11c314a86921947bc295d46fea53705993825c23d247a0
Date: Tue, 23 Apr 2024 19:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713901222
