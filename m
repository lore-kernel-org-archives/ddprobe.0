Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5C5800
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756671596; cv=none; b=BST7zSM/k7fETkxQG75TLxQ3M5uPvIwKMuLsUkdDdTEEiE0IclsMQy8cOn5N8RVx5KZfMWSvjzWt9WEik/uIAKT2HYaeJsLpWGAwPbQeG7kQwBccfunipVyPLetQK+R3bs4L998itbzG3LSQL89KcBRbIjM4yngQr4rYmB/bDe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756671596; c=relaxed/simple;
	bh=VrbsMOKyMpbZHsYa9BrCjBG/1AN2Qucf1HhARsvyjA4=;
	h=To:Subject:From:Message-Id:Date; b=KoMdRTu04xtwwW4CvvoorBkhtV33rUD+0uB5SmO9zR9Ahnxn5NbxzbbiCWOQP1wwZ2Gu21PNvimUvTDzHuFQ8N1eboV2KCeP+ZYzBT1DqMyL1pIZHHrpdADgFJfE+AYlP3TnEaGtoA177gK94PBP5M+yumy9/z8jZs49xyeXB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSFwneDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSFwneDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A786EC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756671593;
	bh=VrbsMOKyMpbZHsYa9BrCjBG/1AN2Qucf1HhARsvyjA4=;
	h=To:Subject:From:Date:From;
	b=WSFwneDvzKM7/UIv8d35AkfWDlmxvfhmXP7KuFopljVuGidZNLuN782fiwmEw2Zab
	 oCZniEpMRSYY3MNRnAnnsRGMIHO6hmAMarRS62N7tGMdnQ0qr00w8FuMZZKPrlnHrf
	 VC2DTZ/pKTMoGutpA1t/WuB7PXyOcrNKESzjLKmUMU0qmAD+7v64y63gae0WWpTdaZ
	 l/asOwg18I+P/dPMYjEUhwthd+8COOP/Ogmk6zP2I+87NKdHnMSDdZSaw8C3NP0qK+
	 OW2WKJ1yp2WcBkyR5IAt1JnEqq5ZSpu+3YRuGVsRwwu5Y6s0Vj9l7HINkRP4GjXvF2
	 1GVIj0Zg5OIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0ACA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667159357.10256.8030364685017916201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2bab6f4f3b51c2113179133c4b33cbba447cd8323c21c46b2c0aecff53089f
Date: Sun, 31 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756671593
