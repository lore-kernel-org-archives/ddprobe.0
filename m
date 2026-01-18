Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CF7285CA8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768730034; cv=none; b=k/BjtrPQKwpvlgeR8nEp3MAu3U50YA9AXaySVI5cen8EGZOPAQlO7QL1XwRM6sXqeTLtVjp9bw1q/bCyKdFeKRIdtvQedZFzxl8h7ZJdPwciERBOdmc6jJdZ+splvhkpVMjI4cn15GO3CnL6sxaRkRbpNdj8jPMX1MWG3oMCFjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768730034; c=relaxed/simple;
	bh=wJ/ipyashXcLg92qq3odZaRe+hcW6M9hZEEsjdkQdRI=;
	h=To:Subject:From:Message-Id:Date; b=Uw33u/D+TXmgIxp85nOGw+2SMuVvA/8CXlDVe8JWBXFaA/7CaxAtLEt8rUaQEOJMC42FFWkRGPAWX8sXeeWKGxixgscjShHafE7mxw6U3/rgnoq0RySj0AKrPPwsOTw2p/lhRvzqZL+icpzm4LlLs1CJ23yqKkjY7o2H/w54Flc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/kDDzyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/kDDzyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0BFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768730033;
	bh=wJ/ipyashXcLg92qq3odZaRe+hcW6M9hZEEsjdkQdRI=;
	h=To:Subject:From:Date:From;
	b=g/kDDzyXo4Y4vAjudwpdS59VoM4bW5anRhrqnNLJUjxJsPFSS8WEUK/3K4jIDNaea
	 i2fwKMpjSuZpV1y/cHUOn1rSk1s6NAQ/N698d4inAp/Phr7Ax6Otc1ZAhV7hutSdlq
	 Jh35XhjV8RCzcOv/ETbD78GX7mgaBoqd7Eb+4rJrBkyoJG13HLUkiEGsF7ijoH2MzG
	 zREue/x//FlQbBqcKbzGTzvODk+RLxys8PYLwYFKKbydVuczOrG6koNSIFnN3LoWU2
	 yqA4JreD9w5lnod9LajWkb04HBK2i7bToUKQmNnGoJo3DLQXY7wUXz115Etptl0HST
	 dujHg0EC+Bj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A00C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873003358.32049.15739885909777636920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dc5680a7d62691448b7cf5a6eb622004c0745c912be9cebd1b2120edacfb9f
Date: Sun, 18 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768730033
