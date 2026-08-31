Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FA330D3E5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788147635; cv=none; b=EWZ5a48xFO3uNjGgweBr3pZGlsYF+7W2oeBjk5i4KrN6LXZAqnHwVUd8tFmYi6i4biiDPpX10mgz2LGoiJECx+ONZ+4/saRzHeB+OgaNndZ8PuH6+AYurrHjr2wh/MBuDq+Ll/xLcjLPHZFvcwcesadWu3KL/Na+ZFLuWlHfLYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788147635; c=relaxed/simple;
	bh=XQ/FnbIeBhfErseCh3AlCgD2xwVonl3zx2HqoCP7B0E=;
	h=To:Subject:From:Message-Id:Date; b=dkJH3B1VL4laOIz/Q/YWU7Bb8L7JI1A7qhILoXLLK0rjWnORjhBgQ7JCRfQ0b9F9ixtHPSM8vY+Ir08wKc7CEWLcPpgCS5Rrwek3z3vcUXm+RXbMzMbXVk5uv3FZQi3garJAmSk9RufqMeFim91HC09xmpzTCuhTKDEH2K3TolA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbE6o0si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbE6o0si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1CFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788147633;
	bh=XQ/FnbIeBhfErseCh3AlCgD2xwVonl3zx2HqoCP7B0E=;
	h=To:Subject:From:Date:From;
	b=pbE6o0sitObXf/FRRKOuQhOFHm76R6PmWyuUZV7h6mXFn1AlSOluC1737BA+jZmon
	 SOGeEtPqafX3dKSQSCpV2khyBcNzBqaUAdHJ3XPx2HlxQK3+zy4cRvP+7PDGu0File
	 DNFAQ60qkHX4gfxjtXu+zU9J7iz7LIWNo8luF/24SgIGbsxaUPAJ6dAH/8tCYWQXNg
	 fk/U+xkQMtZSZKWrZWc3eSaiM3TmKzJ2sROPlPkcJFm44n+Wz0kCuXtRdSeOI1/vzy
	 p0uTCYtJVHAMMdewdby00h3Nk8cA8EsXsCutvGadClERz7/1Vu6Y+fa25uQSP19r0K
	 ODWcgqHUxheJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF89C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814763369.23538.6504862438662705997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c503a281dbfdcf240e7afd4dc068ab3fb57a9c3174ca7d1a9a905a60269b3670
Date: Mon, 31 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788147633
