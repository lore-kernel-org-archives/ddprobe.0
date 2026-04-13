Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E293909A2
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776119254; cv=none; b=WVmBIExL4MvytVQ+PxHifoufU4f7YarZz7KaHg08aKKUfnlhJQqzjfmAbyIMv3MKLRfdWmGNcUHt0YeD83T8nOplWUd96JqOv8hXp9um2TgCOGYIrawmfN3Hrob7UVU6bHUSUncPVZ5z4D+vvTk/uWXDhgfBG0il+GTDGY55BB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776119254; c=relaxed/simple;
	bh=QUFjMjgO8xN7NlFj7EcUoHtp4DuqTrJizwQaqNb4v0Q=;
	h=To:Subject:From:Message-Id:Date; b=ZMsBkYNKzydl6cLMRWFkeDeIkGEW9xK6eqPXCl6OpzkmeZSNHeLp18IdKsMRQXPG/cFJEc64ygG9Lbx6yc4Bevg30mprTJXB7ZdFmsocY/lZkOAilPRMSDm/Qh3SgTFKdt5GPHRp3q0I9MJBAHGfM8onZoljX4C6uPx3fkoEu4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+fQ1dpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+fQ1dpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB21C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776119253;
	bh=QUFjMjgO8xN7NlFj7EcUoHtp4DuqTrJizwQaqNb4v0Q=;
	h=To:Subject:From:Date:From;
	b=a+fQ1dpd9g96P0snQLjzCWK5ZxQuWiX+E8o7PKOZp7tmer0FCLoTLxbaCzRamqo32
	 YmFSRHyLIeEQF+23KJqyO/C4o6TytosKxwW22DFMeLqkSkSqMBgrRNapV14xV/+NE5
	 m3g6ki00TczwG+RDAwPU5PvtFoVcXwrWbkgkrKPZfNmS9Bp4NUEjlF/uCUozdFnayg
	 UoVIaVkkIgSQ+lJdrvVGD7ht9ror3yfdMPgYXzujumA7hi7uBlyWwhtDOQcf5NYisd
	 j/nnGzAxZ6OdBh31wP2LtYiAg5UzIaFprh4MKv4Yjs2yriR0w5pG//4rAI19ogUm4t
	 Q8zfKMU9X9f9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0EBF531DB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611925368.27299.15981090355018544837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3de9f823a8459dfcc82aea4c199b37d148ed1096bdd619cd4f98f357846501e
Date: Mon, 13 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776119253
