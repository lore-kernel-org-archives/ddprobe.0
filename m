Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF3644D014
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777397854; cv=none; b=KRkxgy61h7W6u+iajg2WJZoQ8tVZAZndeqHB6NEUk+wUmZkzGWIs0SP9LSNtZMJfDEYkFmzS1AQaw3VlmTmq5c1e0ulTYVIq+yweEQsOAZdXbNvNgT7w7kj7tN7UX+Y2bL2yDloALVcl394dQhzdub3MEjKTJqAHwTo21KkLB9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777397854; c=relaxed/simple;
	bh=8FB0Ll/13ZEWuwHIU4uLONVKOwQ+cGjhcWUyYfgc0tI=;
	h=To:Subject:From:Message-Id:Date; b=PxFWBShJjdJaR9+rwTUqTFGTtmMxafPFILdZdO5yzRw67Qr9Lx7duZaMoxpbomsoJ0cCLwglpNhlbQRiDTasvy7KTl7KlE8qEtBK0PX1mdasf89t1ANM+5vfLpkByl52PfOI02+P3lClKNIJZS/fk8OLDvBdjadEEv8PAeGcBT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw25omqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw25omqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30E0C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777397853;
	bh=8FB0Ll/13ZEWuwHIU4uLONVKOwQ+cGjhcWUyYfgc0tI=;
	h=To:Subject:From:Date:From;
	b=mw25omqd7HyaRJN+AK/DRCIPk4cJgjeC0yO6edKDkQdoISXuydt9WR67FBhbT1LY1
	 Fl5pxThHICd1jt2g2vKCn9tlZT6ye4PuJdQdGhOJ6YmrokqIreEsUeefqHrfOdyagj
	 xgc3bQ3wrlcpZwNZ3uAcmwIVB5vNOXkPF83WgthxeKXoxP2aS927y2rUTGOYfzIngI
	 wv+OyBWlvFj1OQV5l6gNflyqZvfmKYpVun3XbRRyWJiCHO1RDQqKd0rk9Ut7OHbQWC
	 mSxffYzOt2NcfxVbMFi9GycT3OcSYFHhr8KAsCKMSeDch6kEUeIBRWaPC+od10BxRz
	 qR2Imw013vw0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97DEFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739785368.7008.3920428191796859339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4086a3314268adceb4f19141034a06b7cb83fb7cc7c6d112c0886002b07eb3e
Date: Tue, 28 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777397853
