Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F6F3FFD
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765579974; cv=none; b=C9f/Y8ccPOk/9ZBwwq5SaL6s/dZCOHOLUPlBzsv3DqGu1iLHjVVlKYa8IC8IO2imKfdzk66ariMI3h7tlGhveAZm3vNxEAo4xEZhnOiFnasZD+R8vX20+ZpJ8ROuLf8kjKe9CqrnsKuQcQjw/yORiXJkZ4j/nM3tZbvRfasnRr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765579974; c=relaxed/simple;
	bh=LnYbjw8BwgkrF5Ihh25D6+AfJRz0yLAq/uJLefEbaG0=;
	h=To:Subject:From:Message-Id:Date; b=fL3I9ARu49rl/F94BP91psS0eHPawPF6bza75RXF2qU+Fzye2IBCJn+3PxcBGWBnKcOPTRCZrd5w6pKnQgxS97kI7yJXXIXiDJBtLPz1b9h3JBwkuJjdwGxI2deG3yQ4yn7U55vJRMN8X7Ptl3WzPTm5O+IL+hXS9jkP9B3rDKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEEi6jh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEEi6jh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA36C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765579973;
	bh=LnYbjw8BwgkrF5Ihh25D6+AfJRz0yLAq/uJLefEbaG0=;
	h=To:Subject:From:Date:From;
	b=OEEi6jh1zIRHPqMx9c93b9bSjGeWEkQKLg2/FAqcG2H+hIA+da3RceQjQMRnuinbT
	 vgE8hiWMTyVIsEswXQ8Sl2cwZ1nKNihnTBHwOL3oyWTXV8fFgSL5WvceDTyQIAB4Yv
	 vX8mz40259bYV7QA9KTFmE+jt4yNj1I4O4os2Wr4dPvqkzLRJqmOQxYS1+xGCU/1jK
	 jP1coN4hZBMrggPzOhwVahqEN7ei5cgxwdxleiaUOaiuevgJpJ8smAu2g5Ehe9O9bB
	 ZuajKV0dQ/1fKeBkITdn3z42F8748WtYM6dEDnnZz0HqNu7xtYvPWCpIS1ZzIkLk/O
	 twfE0UQh7eWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980AED59F50
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557997359.9758.13900550900804737533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5832b7327ec8eb8d36d8da46ade2cfa4c98bd8d476a8be437d7dcade6e0934d4
Date: Fri, 12 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765579973
