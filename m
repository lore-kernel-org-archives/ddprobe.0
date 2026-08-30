Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582CE318ED6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788122434; cv=none; b=keOyXCm0df5BvJWfb5qSCd878PH9a79Un27/RC+jLcXXHWdNCa4zzI/HEIVVIBf4+7UqShIwfioWrB9mXPeWwpCGARVOaMgK3iE8ZHQbVmJwQuDC0+8RC+0VWeyvwt9nqpMTqIV5T+fmC7DTsc+++QjxgkAr1naj4jYbuSRyNfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788122434; c=relaxed/simple;
	bh=3BDhWMgQ8ss9GGAJhtdzXqb+xpOIHWt+mFdgYom+gkg=;
	h=To:Subject:From:Message-Id:Date; b=EWFgGPc8CHo1q1swDGxaP1azPL9b3bLM+sBTeoR9uraJtMBRvdxYvJoDD2j17P0beoVVBbdaKfRkCVO9Dfb+oLGNUE6Fdp1M+1YbWRcmOeXNyMvLFvjIvknwmWZV6z+08FFJl0wVb6vqDgx6ZeLgCjGyQXllBSdpj0SpW7ElTf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTMZVZM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTMZVZM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D502BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788122433;
	bh=3BDhWMgQ8ss9GGAJhtdzXqb+xpOIHWt+mFdgYom+gkg=;
	h=To:Subject:From:Date:From;
	b=WTMZVZM0wMd8zQv911tikeDkSAt0CL76P/zpTgM4JMMMN+Z0fDm0kR/+DBeCtxIJl
	 z3pI2+qyBz3tmXcM7pulQHnGfZpz4zAoKfkB5SsZqhx3PtiOSaZd8e9TPq5ueAwqeV
	 jceFPcwox2UHh4R3PX1Io7CsdlnrirPaGrhL0BFTlIWbAO5CUp5BLbOMA21kdxw7eI
	 AyGTsPEnhzzTFLcTWBFGsizN6YF6/xFuE7rGM6mwR6VW/ogLbl1Y+ChfthW18rSUZT
	 5gQQgkIGYhq3bt9rvN1iVlXpzm5mtKYpms8zJ1J8UK2T8f87EbK4kAQEm5O431Mflp
	 J3nGps+98AGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E81C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812243368.22393.5817157804601780392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2039e7d069b0bdad403c2fc9c8c19df8bf73d79c3536124ad5b98e75406a4e
Date: Sun, 30 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788122433
