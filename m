Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8112F363C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771371894; cv=none; b=uWCzEjV01AI3pipg5pSpiPhTBn8Yepw0yWEuDLxIS1gfgEH7GlUgLD/pvTdzytuTEjmzf/rMa2d+gFep7QmRzlKn0OzU7lrUnP5oewy80L2Pizlb9St81s9p/D2y/HOBsU6dASzmW2LH0pBZn3xYbLEwJL9wX6gEsrvBKHaKPLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771371894; c=relaxed/simple;
	bh=rcETpcSLA49zP2C3jP8pGLQzloL8zBuH5fpt88Jbhm4=;
	h=To:Subject:From:Message-Id:Date; b=MkIvG0sHV5j2du1sOUB3OOLwbhbNnbvOPGkObg5x6W5v9cODCaFA/Ygqf4Dt1roLE3qQ6LEf6HN4rscPl10od79d21YokIKlIw2eJFaX8YWYqN1upQUXnW+AR6faAYieOanaR3YVQris47Jx5qEgpaZzP41BZKcZox7m2DZ591U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyYpXOxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyYpXOxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FDBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771371893;
	bh=rcETpcSLA49zP2C3jP8pGLQzloL8zBuH5fpt88Jbhm4=;
	h=To:Subject:From:Date:From;
	b=UyYpXOxiqmEs5N+V2ZxI6VgY5kGu0wgFDqsvOpSb9zisBQoEb2Pt0BsDRY6xhmSis
	 AXF7fi38pWtxKKGxFF1iXfi753p5tUvCdchJJHvb9IdYDphaMi3uDxW3FjFxv6N96K
	 +Xagyw8tzzfbyftz3m8yCCvlJASeCtPjHlFWQAosLoTTPOqYsNQq20joi1gZp7kXN4
	 EJ+ChoGqGreQxuAARSt3q3hs4MjaR75QAHtw4pERRTQ6Jdzqhjg0Az0LlHTWGfH128
	 LSFamAqqT0X+z0XDmKcEMoiI8VPfOgIRkDbA6QQNU9XrOX32OVWpb0NkfenRt6lwmt
	 Zs5uDtAnjt0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E308E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137189360.7602.829551562995985773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa623839e37b145e24a0bdfdee682d850875e02df600079bcbdd2fb77f20861
Date: Tue, 17 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771371893
