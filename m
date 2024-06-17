Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A4A18FC76
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609303; cv=none; b=hvXGQbDXhFChWIpuRUZmGVq/lYiOHOEIFP3ELVnnzq/a61oyDX2wsGI38SUpsvWmrfdFkjBeNXLghwfB1XHPKU62ITEiKz1UdrE9GpI8D7RLOwY4KM8Wik+6HO5ohXoGzigifKpyh5mBq8JQE1dVaRhAZvxYouzjdt5tQwAiNK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609303; c=relaxed/simple;
	bh=PSYPfpfN7xolhAcqhl4xLRhWtnhdqjGu0Fg0PhedE3s=;
	h=To:Subject:From:Message-Id:Date; b=MZU/AHSicdOVDmi0LGmisM/nMMFwYkUSZqrjG4OkeFSqn4duCDp338etrXRRUgzYSe+GfKlkP3vaAZrCDGmKLJmfiBIHXFzasM8Gu6X+T/AjNqiKWCVhamAG2ZcmNYNO8jaFs2HsrTgMf6b8ayzr5P+H75lBjWjDbShatsHuMtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGhRXxmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGhRXxmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55BEC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718609302;
	bh=PSYPfpfN7xolhAcqhl4xLRhWtnhdqjGu0Fg0PhedE3s=;
	h=To:Subject:From:Date:From;
	b=jGhRXxmmadYtLlcVGYEpSJ31XrUIyu3htxJntUf/KHX1piGMx9uMxQF6QlO2Pkwyg
	 2UGdohBt0wzZiKRfQ8HlSv8aI70QlizSxIIDx7JRWUzTP3+BwRN6iX5COXPOVbTMEv
	 7vpUmh2P/i9l7arnKFajesJI4shKqwujsx5tuVsjP/K/KdjkB4XCR9VNyln9UGT4gM
	 WZtT5ci7+0LuWU94QPAREqEPxWjiwXNx/5JR2fS87w1jF/UABrX2w+oBnLp0T8nffs
	 yGw8UqVSoYQjnKtEwM9hTlKRbUBaBv7iJbFF1d79kzE99e7xRubC46PnuoYSav738R
	 9cvxi9ZyljhwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EA1C27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860930279.23575.10686193820662726018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123e70b9782ca4e869aea27d3befeb946f730254c34851bb6f7ac4b3bd31677d
Date: Mon, 17 Jun 2024 07:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718609302
