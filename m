Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3550337EFF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781288194; cv=none; b=DZ+DVh3mgQ/wdZ7Ie786dFlhVAeDTglpYlguQ66EMqU6lo+jg1L2/XN/dbAY5Cn4CCMydwooqWm4Q/lhIFsQzEu4cMd0vxlZ0+FQfIDZoG67lM5TSsZxLjrIBxUFW72FqN5ra0kSDn6dSGYoj/jAtQCAdO0rd0yYLjolLZNv1kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781288194; c=relaxed/simple;
	bh=7lWKaBglKwHsQDGpiRcbDyiSXYmhQPh4OQhhdnYuIg4=;
	h=To:Subject:From:Message-Id:Date; b=HDyjPNC368j7vKyIAmmVcJSeQsSmWLH+CtlmWBPv/U6LXvwJlza+Cwx9T4s/FOe7J5RSALOLHWoOHckVZcYOyJS7HHPgAAqzptcOmcty3rveEkMHBro1M7GB6KBctMoHvqQDK/i6iau1z7NTsOMozMupk94JC+Y3FKCzTQp8gqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5ljeD+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5ljeD+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B0DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781288193;
	bh=7lWKaBglKwHsQDGpiRcbDyiSXYmhQPh4OQhhdnYuIg4=;
	h=To:Subject:From:Date:From;
	b=S5ljeD+dU/JZvAqnnK3oWTdXPDAxQiCDft8WPgSGnCpAZ5xDScldcBVESEN2KPsN0
	 j9pDUpCsSyaMwYGJlbAN+cuE8VPBa/7WhuYDv86YaEHeuyUdAygzEjyCNJRl4E1hIu
	 x/fRcKsFhROKDnH2ZHaf7zj7m25yjjvQd3LSOvPKSRBAbj43iR/8ZR8KC6hNA0xGDw
	 ek2B5U+Mdjma2pHKaI6lQQ6a3l+dXn8qok4Y+S1lyK5fMrPQ4wYPUhKtv+2+YMh+Q3
	 dUFVz+/kZxpOt+7jjOwqNlAHaUViJzjIMItGXDRCmDrQIOFR6cbCSdCTm0bg7jtVyP
	 8gBIZRpRNyTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC933CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128819370.8998.16386093003928252454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb06066866d1c43b1135b1e01f9559b0738c76b8b9f065191ec8c113a053c58
Date: Fri, 12 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781288193
