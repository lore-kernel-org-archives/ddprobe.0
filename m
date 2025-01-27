Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF918D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737963354; cv=none; b=GkYVMF8etMkcRq47oTBV/oF2pq8OWVbCLwG5sJSjJId/8njXKDv7CdC383gUNJLEKuV2GgRfX2n7WTPMLWPZvxZ04kT25PuITvDqvKjgGeIgRJLr6eKDeNwH3TvtnZDcgFfiynIKiCJ3cxGFDSABntILUM/42YxCfw7XLRkluDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737963354; c=relaxed/simple;
	bh=KC8vgYO6pBtQD63Nzbjw6tDw0Tyej9CynkFGawVnFeU=;
	h=To:Subject:From:Message-Id:Date; b=EqGKXLRjgHOjZolEJZLJGGszVSBZJt+qgkc41sRRrqpz8QA3TLd3HZxN3T7vWCgB3GoFbSga/X5wyz6CQhWw6cWdHLYHJod476M22rOcxsI4K+2GFhWuYkx2XF8N19OfwdHIDDAdoQZrlOjX1L8GlfWw8E/SEtOktUlDjei44Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjSiTVB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjSiTVB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB5C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737963353;
	bh=KC8vgYO6pBtQD63Nzbjw6tDw0Tyej9CynkFGawVnFeU=;
	h=To:Subject:From:Date:From;
	b=IjSiTVB2hR4TniSK7gGglSqb2qmh8+MYOCVZ1E15/DTdt0EX38oB0EY9X6LjHvP8r
	 XcwG/Yp9BOnPA6qaMR2DIb+5KbLpd6EscPDS/56G6tgMYg5V2zpOdAX42nTX4itlGZ
	 zQIyvp6cHTcBQfH6Ayxdzv+M4umTIGcLEOtrwqcndoVrE/NCi/LogLZTITVPvwbjwB
	 krrG+Av2gtjR7JDkJ7mhQfKQqkzhw04REnfgzK2p93J2S4pWleLrGrizPVxTA6HxHd
	 XU0Y6koENDdQJq1wd5ZCSZe7iP9l6N9adrbYHVwu2AYPZun4Zq5mR8QLdLY2JLutbY
	 ZlwifsyNwDURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367CC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796335358.15001.2908552706438821761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f54a06c2e131719ede2ea545dbc5ecc9448e5fa395b5805acbd9a0bcc1f1fd
Date: Mon, 27 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737963353
