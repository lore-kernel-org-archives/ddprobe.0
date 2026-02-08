Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAC12494F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770585234; cv=none; b=ftuEI5LW5uRerdzHWPBcJCDjxyeRiC//xBpgpiJTwxANYCF0kSw/vb4/l5kung0ifeiK+2dwT8jCRnuD8BwViIPWixk6JX/CHWi6yWeTdD8rr9I/WS0JwpsKU8bI77wC9BjLCbm/dvxjrTQi0c+8qCGiAhpSomCXyvd9Rgxy+Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770585234; c=relaxed/simple;
	bh=eRgmI6vmukp+KBCrast5h/ahIrULKL2cTzUyjp7eyC4=;
	h=To:Subject:From:Message-Id:Date; b=tdPeSAbjMWq37EuUOoIubbNlN2PsTpvq1SwSAzLNi1fy/lTZc3HD1KFPKqbJSYiNxWa1b/XzRgijbPgZkpKfu9bNx4ss+TFWMXqrO/LIboPV2TRsQIfS6729xKDapIIqDqaCnagS4xjWjJPImaK0mG9s7PL7NYpQYAEgd8q03C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CznQc6eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CznQc6eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79BBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770585233;
	bh=eRgmI6vmukp+KBCrast5h/ahIrULKL2cTzUyjp7eyC4=;
	h=To:Subject:From:Date:From;
	b=CznQc6ePBCAcgn6OXvEujrntxi4iaSMhofITWYiB1uyafGJHJ7FApl9VQ89U4B5tg
	 FZCMODgxmTbWdVloX8uCmeXe8wAEgIUO998xprvM76qu/ouzgxCL6sIkvLCuIc5Ztz
	 ovkKuUoBFeJBhXWVD6vQvDbQuqY5D0D64cl0MPr+eaMvoTiqGIsItXk9IN6pHRLGsW
	 Nw7pt6NOWqCt/ffFa/TYzP5036lBLpfkiZqV9mzMwqX8UyklRba3ohnTBRDYcNREl/
	 ia36VTyHzU9vkCEua4tBMfTUAC9G206ohdbEo++yYvpLOLeY81SJbDL8NcN0Ek3J08
	 o5zflBzBwYeNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93368EF06EC
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058523357.8166.5692289305542502658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c3b27239793528b78ad3beafb906b6a473d91241d05dcb5f6b73e3209c7c25
Date: Sun, 08 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770585233
