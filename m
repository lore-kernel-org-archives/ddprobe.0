Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3AEED8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739994; cv=none; b=NwELu5mChKFWe3dXPf5KRRsZmQIBkSD2eA6wCJWNYQ4CqObxKJ7EbHRuao8+pUgWHU9ZdQ8SvVit4/vE4dFnYbUnwQWL5D2yDOpNF6JN7eCCtw1plJekbjrtJNPxideYAKY1wdgxvemkUVx51wyof1xIzlrtWer3D9lkzGL+T2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739994; c=relaxed/simple;
	bh=qUOOla6Kp2J2fJCGHEOC/UL55rT2rERF+LxhUv32htQ=;
	h=To:Subject:From:Message-Id:Date; b=kWHW+O+PVNk23zgvVuUlKAYcM69Y2pwFhw3W9ALjRxwHzi7SE5qWPTD//XaHeJtBqh8LiR+ML//mB/UAMjKpyMy8ZqmdH1XPnHjdu8QsvyyaennZQw0xB//6geBnXDJa4YkLmORbfMH7s8Q92EHkYeTWE4uIIgNCOL+agTxE+wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3Na8jya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3Na8jya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1789C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759739993;
	bh=qUOOla6Kp2J2fJCGHEOC/UL55rT2rERF+LxhUv32htQ=;
	h=To:Subject:From:Date:From;
	b=W3Na8jyafuTnEV7LC7TCPRX9po+QE/eCt8eMigtAgr1Oo3OhR+AeiaFrjQFoDjwD2
	 SvXUbAAbOMtSskSuqpvPqyihuUUGMC4e3UQP/C4oE1IctObS/NSeTolOwkatpMOSge
	 wTTDXOe4UtHfQJ9WOWFbnIKoZOhwX5sZ7mhGuWgfN/qny58CtZU+uWTROp7UfFpPzE
	 Djb6d5gqQm4r0UFFt4kpGN3BqP2CW0gnl2jzxr7Dpy3WdGCZ+6lBviuFxSvz2UXTyx
	 vU1cTFqzEQFU6Zi88Y8KwQAGGLOi3RIwWsnFRMuouZDBYxupaXO8Ur/wTvoSRScrxH
	 hd5hl3tvhUZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81DCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973999358.4439.1162468587495965660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109f12d655563cd6e09590f0f5f78fc3f2ce45dc47643ab1006b8db9de7c3d7f
Date: Mon, 06 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759739993
