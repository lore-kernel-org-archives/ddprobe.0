Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E63216F286
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719070943; cv=none; b=PiEtlI5SqVy6JK6tIKY10u5l5NCw8sR+kBBxnwJ6gfz9X+YWOLVjG4e4RqxONQftKAOdeKgQtDQSYea1s0QV54abznSA+LtHMdnYf/DTAL7IEJtIsLSMGO+m6mvEhHVA9/wOuMgPY3NdeUsMbrdEyCtbzB7ieyYReDFoUmnVso0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719070943; c=relaxed/simple;
	bh=+pWooGClrdPAUB4mreWwAhFZNkwze2WLThE4qvqFiXE=;
	h=To:Subject:From:Message-Id:Date; b=Q64nT3WsIP9s1JqN13m83FGgVZa5aIrBVEGhlCoulWFFJBkvDKuwe0oBFPYfb/H/3PFGvvfsIc/UrP2K/82CF4Fh2RzEJ0NnCwLWFnykqpckZBzuMLbWmv68hz0auapgun30vrYZfyMDRpNstjQ+8hoal6nhMTcaNFA1c55i8is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3hoABqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3hoABqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE92EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719070942;
	bh=+pWooGClrdPAUB4mreWwAhFZNkwze2WLThE4qvqFiXE=;
	h=To:Subject:From:Date:From;
	b=F3hoABqFTVL+iSI4SPGvs5LX44F04pJ2n/0aA0y+A9jLiryFQOMMXZHLnMc6wYpw4
	 5qg49SNUJ/JvlQ5xGqXv0ttY3mlgQzsWV+wbJy02XacuOBIRQE0xDBq2gFpdl0McIN
	 rbI/8T5l6s4uuOkmdDYH6MYadmOYfaDWe2fGSh2fOZxKMLISpNBhL6SwxK3AxI9PoR
	 se5f75gKFYKGA//j19jT8S7Ak6Hn17HXTkecvCmMI+16iRbh37qRfebD4/nOVCjd4U
	 4XKr6gqFu55IMkJYx0HKoxILJ/LfisydQ5S1BTcRT2PirvxXmJExzw1zNXsL4Cwkco
	 1Jc/WyXW0z1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA533C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907094276.23592.14420863025879738371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e692eb5542a990d140ecbf161482102da67d73a8723022bbda9c7d1a30aa181a
Date: Sat, 22 Jun 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719070942
