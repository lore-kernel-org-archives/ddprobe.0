Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5102040A8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744274994; cv=none; b=ZLkB5XvJoqpFZYV07UomsxDmicKriZRG+vxpuKWyH8BbUc4ltZM3xagCFxjqwAfEvx7hpB844t6y48EKLFZAA0WZPvRi5G6IuGuAKgF1SiqcccPIhYvxTaaeE/FT1A2sGUR23ug0wocTy3M/imf5i8It7fBB0WrZFuox3YrKTHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744274994; c=relaxed/simple;
	bh=59ufQraBS2a8cENXC5VBuo31Z7Ze5lfalyvsxPQOb0w=;
	h=To:Subject:From:Message-Id:Date; b=rwggIxbqG4LdDofINQeO43tCgsLrIaaShtdmTA6TQXswL4t9N+ksrqSzGjdrWj2cc1f8XB8YpvtQVV3TzI2qWmNu5gRrZNmSbaEOc4W88SwCDvnsS/M9xYf0tE57YJU2buCERk2u7utiL+HsHwRq0Bv4F0fm+J7lygmoaDvHbFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQqAG0Fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQqAG0Fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD45EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744274993;
	bh=59ufQraBS2a8cENXC5VBuo31Z7Ze5lfalyvsxPQOb0w=;
	h=To:Subject:From:Date:From;
	b=vQqAG0Fw9EwKMimenJ/Sdwbi1MF6QL9DvqaIcqZMV4c/g1FOjgS9ggFlC0dikH0SK
	 4Yh+FHDP74BAkBJCiLkpZPRK3HvhZ1vwuA05hhcEzETrhDUpdPiYjVa5bElOhYndcc
	 DM5/2lPholjIF+vUF89r5XmGS4Yrh4GWCvHYdadqbhCXJLHp/l4mQlofH818R5jGK8
	 lJJiKzsSGTw10inNQzcg9ffCOpahuxzZ1WoXv7vhcanAxvPsiCvOGKeflg6n0UaKmF
	 UPD3iQYB0M7uawYW7Qh3nPKxBoinBdX4LvfbzqsIzIV/1j6JWMpFzRr0b2Qb7up2QE
	 3a2cHrRICqtEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9872BC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427499359.27134.14993835380027267988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c090c454effd3a6845b592d2079700973d4cc119b1bbbf6e63352b4fe9cfefa
Date: Thu, 10 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744274993
