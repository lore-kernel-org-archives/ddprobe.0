Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2BE259C80
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807894; cv=none; b=ZAce6C8ERDxKaaJjyD3JSQWWS6IXV9dDfUYNEJQMkdXmDQ1hRjF+JZ5qaZDxSxGccykFxecPEXZs4z66bpo8t9ygNTuY3K6t8Qr5Kc7pTuyxu7ce2MNI7AqhH/Nt7w5+QG0iA9aR1F2edcLl2Nf1CTtSQ+AZ0BA6BHTyJoGLuyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807894; c=relaxed/simple;
	bh=8w3T93U0/xqHDYr+V1bAl50Qpog3oGOajghPNCyUW2U=;
	h=To:Subject:From:Message-Id:Date; b=KBSMgx32cko0y0TgynkdSphT5Q5FPnXK74WYDZGMpuBsj01FFwG5IMJX9ITngWr8xINcuQMi9tozVNmplHN5yCtt4++YZfBwMGONiGEvVz8XaoDyzQBTym7xSuJcQRKhS0WChrGG3b5aplhpagPyHyGLd8YParP+elUSekvVmG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5hD4ngY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5hD4ngY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD449C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770807893;
	bh=8w3T93U0/xqHDYr+V1bAl50Qpog3oGOajghPNCyUW2U=;
	h=To:Subject:From:Date:From;
	b=A5hD4ngYW1tog1KzUoNxrIHRjHHPCf9WXC+F/LSRJZYf8cwVh+9/dAjmdo2tnALS5
	 hMiFQ/myG3aZ7fyXdXO3mKqyynpYBYeA2YTfreHc0CsTy5WvnlfOuL4pFl0MYbhOOa
	 zFzsCdB427akw2PL+jT2RX52tZtO0JOpxnD4iM76pAGo65IPc/5FSEI5MosYc3/DJh
	 DbgOVquJABZ81Dy/GGSGcEPHih/bej5WRSlo+nMVf7OKvhDarYIG+Oro52npDPmhDO
	 tZQlusCQSHMxWW5HQVl+EDeFsw6Oe987o9JgNWLjvsNzUiyffsqOPJPpBXsS2JBUSv
	 2M3gGEiIf9NYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2160E9E2E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080789364.11029.13263763433612745922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ec94ca760a00c49e403abef48066d001ec55e438b15d305025fbb919bf0769
Date: Wed, 11 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770807893
