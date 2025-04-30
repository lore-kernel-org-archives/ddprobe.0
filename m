Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3855D2DC792
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745976594; cv=none; b=fysN9ccFuaymS7kN9leubviLqveaMF6oYDyZCCPYluwmuWRhDZkFSNeElKC0kbxLGZoevkhNXLvQEWc/W/GR82MbGp5UxbRzaDfQA/2VI4VXQDPR7mTJCB2S+9BMlpoUPfmBYQm5TX3Xgq+Tkb9mnphpaX+jtCshBHgDgVN/5ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745976594; c=relaxed/simple;
	bh=1cK+hCEHmypXTQfP+o9oCSJIUqpwf5EJOfX9kfqT7vE=;
	h=To:Subject:From:Message-Id:Date; b=tn2qE5FGnu31Sy3gUVA6CnDSmcbgW2vdt+nbQgSXvBZiDFf3tySzwP0dpO/I9JvZUrO5mfWuTpDA6mpI+/XukHOUp2dyOGGGMTMh4oRGewyCUagI7L2KW4pMcz0GRaEKIflivK9kQ7qAlAhRbPwQEZD7yOEgO24c3/PVqoY59nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+CIu7Ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+CIu7Ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E621C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745976593;
	bh=1cK+hCEHmypXTQfP+o9oCSJIUqpwf5EJOfX9kfqT7vE=;
	h=To:Subject:From:Date:From;
	b=t+CIu7IrDsYglB9nhCOYfjtFcVNE8MY41hC3rKb4wB5qoEMTQ/421zYLs7GI/4Jrh
	 F2pXhCPVwR/HHFiTsx7tFFsWv4zD9jufBo8qqc3hLnJDqccJ4NlxhcxPggylO3RL3J
	 Xp5yVgiRcrhsHPB1LLm63f6VZAy88YQ416I/VXKOBhXEC4EmsWDmoybwy3RrsiH5X1
	 d68nFffTlMaIay/nXXpLVn4+2PEklpLntULjDrseWJZsyZI1fU2uJxbcF0VxUnnpKi
	 cM3XIfRSLOEtsi0JMlml9dz+QvVsLILX1Y7MDHWou481zmIOa9JwCWYzzn/XADu7jA
	 uoQ3h8g9epknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB74C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597659357.14577.14528004325765961422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922070e86e3341475e1fea0ca994a224f03ad6e8b69d8144a91f276c5ce4c521
Date: Wed, 30 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745976593
