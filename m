Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA311BD9E8
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730344554; cv=none; b=OyX1Jf8tpvvNGX+t9/A5T0hIW69JVcbrk6soyulouilMf+6tY51pzGGn5uUx62KkNu7Qk7KCerqPZuppiUpsDTZbrYJHTKRYyJjNzvQX3iQGDSOInLaTHH0G8apeP8PS8CMRrx5qREdFa2oBYhcf/QriPGcagvUaIz+DCMT7OcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730344554; c=relaxed/simple;
	bh=kI8Ql/SuYOOLaa+PoVWGlQWhI7U0dl52vresbZavSxU=;
	h=To:Subject:From:Message-Id:Date; b=SIFGMgAic8eS7TgnyHtc6sU4ypqs8mX1L0alM9BZyw1kuDlCRuqNDwED5t5F7wvEEq4aE5zzbAcAp9aujZahwRX5yeERB9XiP2Qf3Cnuo7YlDhMnwAhBRnGVt9spahzPaqgcAddPxOm27LpWgYMbw6JdkCBpZAnc6tYRxbHCR5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNQwN/h9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNQwN/h9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB290C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730344553;
	bh=kI8Ql/SuYOOLaa+PoVWGlQWhI7U0dl52vresbZavSxU=;
	h=To:Subject:From:Date:From;
	b=oNQwN/h92KPN7HgpBkf2y49RkwVqtjR2p4OA/qhKpDiQBcyE9UAUAcmksNZT+JaZy
	 IyWWhLn/1RcvgZZsm/TM5CarcXeQtVVcGsQUydZRsR/hn0ZOd3kLFd/4H6+hF74Fxk
	 NvltbGtJQxbLqsXEo2rp6fMw30t8u5hK4tIy5A6d6/H2E3S2Qi0KgJFsFwm0waIAdY
	 SUO7oySCsGuRM7L53jzDno8HinSTAklhdtrRWQCsyOlB9W++Uja9raLEq2ooWQwhHY
	 akpKUlVZYtx4hw+3Uz0Jhpez6LlsTzXxHEZKDZAEwIhMkx/XVbOs2KdaO55cJs/u/A
	 BhIA1jrKk1kuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFACE68949
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034455362.7149.2105619146210275994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb8a0df24ed5be238d1d550d4708b0972f333f2ce42ffb3b27753dd91164b06
Date: Thu, 31 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730344553
