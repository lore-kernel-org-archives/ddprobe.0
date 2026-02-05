Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D4635CB76
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770279834; cv=none; b=X2OVjbuEpETnlGN9h26gU/2LGhvjEYobh98rx6vSL+hmnK+tBAi4bZkv4ixhjCpKphwXv/DC4Z2Ax45z1qkZbM3uMvQryLgcUIAGFXHQRUs4xYta4EZ1CmV6Ihi6EK/YqlssxhYCNeFT1f3/naZbgeDgV8ussOL4he+b7oQqMLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770279834; c=relaxed/simple;
	bh=ax3FSpKgf26f7uBwoIEw2wmck915wtzUBDRzIwsIoJ4=;
	h=To:Subject:From:Message-Id:Date; b=liwwcS/x2Oqr94f4Kgvd0jFfTI3rR3GmwS7WCe6dOwsaSTN+7SEd0mvndudNAtkHpoJ7zAYcpuXrf0Uyo4c5B946Z4yHQsMq6kC3KbK1VFjx/WAoKynNtzZK2v8x/nQNwX0nMKDAwc+E7QfO+pOTJaA5fmKeevYrl9/7QsatVUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsmPmD/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsmPmD/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B003CC19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770279833;
	bh=ax3FSpKgf26f7uBwoIEw2wmck915wtzUBDRzIwsIoJ4=;
	h=To:Subject:From:Date:From;
	b=gsmPmD/8NE9ul58G476enRbkTlW4M0lwoPGlDUWEHyBUYdVwOhWxMsQQVKJOlZOQF
	 g5qdSHexaUmEUI/c4RrteaescQ93IFssJkSPH9Sx2VVvf2X5GYVY64YCe5gfRcpeVf
	 NYI2pgOnmzjTwSvHoR+01szyxOmbVLro8TJvE28Cd6YZPTDmCqk6SECpLxtStx/9sk
	 PRdUO1aIfhhBkU1K4ZJ1wCdHWSVYimPUuyjH6rNGz4yDQRhYlEJ00Qvc+DT7cVJV3S
	 0vC9zWYn2YZ3/g7OxQbJjAN2kpCGSvO9zH3kHH+cdgAr+sVme9zXjJEvIcat2c667c
	 aAtJqy9gsCTGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D20EE91290
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027983363.24029.10044150502317666694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752400196df381ec694a67d7107825b7a47c6b048948f7b482eb2aa999f938ac
Date: Thu, 05 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770279833
