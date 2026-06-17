Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4757C134CCF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781667994; cv=none; b=bewr9Aw36B6hfJ9WpzIAVa9sZlKHkhBg/3WCNAzZ6JeWZ45RzYUr0eZt1c5P1vwEFOjloflJXrngKANKteDf3YA4Y0LddUATLr972Bd/xKXyaGq7xzdDD/FxYq/VNGsw7TGJ1HUf17bjH8jPUbvOUzK96e2yMMHl+zaSzwfcVrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781667994; c=relaxed/simple;
	bh=NSeyEJzfORoz1rX201z/3Zvm8ne6RBl+X3HZ+9ksoOs=;
	h=To:Subject:From:Message-Id:Date; b=CWV4WlE84crihqrjJ9+5CLCeNmrMg0OA9bVKVdG1bw/AFCBJe67vRVV38cyr1X/BmbCmmrSXpaKl1w1dEvCe84VcrbVatI4OpsB7zo0EB6uAbo1InOdoq8zGPu6wlA8prpae4dSekeiC5puOAmFeS6YJwH3pSU2BG/8kNu6n3d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBJiyoGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBJiyoGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA783C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781667993;
	bh=NSeyEJzfORoz1rX201z/3Zvm8ne6RBl+X3HZ+9ksoOs=;
	h=To:Subject:From:Date:From;
	b=HBJiyoGHY6B7Alejxtt+owxO0l7FGoYVa0C0V+mVmhAS8aLfKyMq949zWLZmit9h8
	 FmvU9d23VaEgJy/2vT5OneiuXiwaABniJptSJjHLB4t12pYMT9KrOVq9WhgGltk6cL
	 OZbHjze0Q3TNW8yk0cjxW9XPUnGv8Zh82v/BW0xbhfwYNsnbVtFYnpSXmV1Z/2+lQt
	 rqTYMbmw7S68oM6ggLI9Gz09Y8ZsYvMkcfI2lDmnylVEVpb2dhihO9N3q77wxwbj5N
	 r4SRKrCI32Toz54ma01xdv2UfSrC8g+qsWs+k163+Jfv4T5XdhC2zB0JcdDCOGrtGy
	 UGIqh4N8m+spw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC77CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166799373.1187.1416883217987783665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6834ef861e439b036046bc340d61b298a94cc51ca97cc8327ed7ae5b9478a305
Date: Wed, 17 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781667993
