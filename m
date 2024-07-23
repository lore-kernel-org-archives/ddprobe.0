Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF61F208A0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721741754; cv=none; b=eL+cgSa4UwMIHj+OCXWZraAbIgus5PLwtkCCqPJW3a2eSae+XNSoOrpXxWP8+dOkz8wdeZYhCEygAtWP06WXoHugOevBlucpfBQ2uxJi5mQ19gguTf80Y4hkfavU/AYEyPQtPRZqYSTcMqb1x5APbywjXgzY8SK04hRpPPqGreY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721741754; c=relaxed/simple;
	bh=AImj42UOo0ndsGgJhj40S1DD7gjnGbhjzPIvWAar+JI=;
	h=To:Subject:From:Message-Id:Date; b=L90ryz+FmLX3fWceqvasshKqePsFIjVOQTevovVrkFRbYLkPe8rcr5cMSyQue9QE2APxtSvp20AJ4AGpVJbcARvtvG5mXMbCG/MV/4KIPjj7yaYrFmHDPN797qaF01TeGqCgO5PxdkU+oQeVRSJynuK6Hua3VTLIZTtQdyY0DIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXS5iqmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXS5iqmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9066C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721741753;
	bh=AImj42UOo0ndsGgJhj40S1DD7gjnGbhjzPIvWAar+JI=;
	h=To:Subject:From:Date:From;
	b=aXS5iqmLNZWy2f1URXqmbh/vu//cxVzY29UaDoTj/uncQ6oaeg3Q7KY70ODa+D/D/
	 u//v7jf/nXj/nc/qxc9pMKOy53n4weYIdZVYMy16AHNUBPe2NFxVkctRU3XMcaiH/p
	 8NcDdljzVDD0qmWEs9UExRwQEACbGp8ffl/9d7a628achT7zMygjDoPXEOdDeGgIdU
	 Fjd5Z5RfTugygxGQE0rtvHLrVFv+nOZ1I5wBdOhA64lckvKCtfhKex8yfKew+/0grW
	 H1iLl9/HyaMHBOfZkeyDiidfbJSr2RXv3SKNRF6cgdJpwSrchlMpNW0q0D+09DzMxW
	 yNQUSkSCqMwGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992C6C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174175361.19359.11663134153536798689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b598d4974dfaf05db2738286a70f28a8fecb6b9a46d0e2d9f805453c01225fd1
Date: Tue, 23 Jul 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721741753
