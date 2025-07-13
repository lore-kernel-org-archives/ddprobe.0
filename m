Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252341F2382
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752448794; cv=none; b=urmNxFnUGgr2rB3McqFgEyX2UeJI03mW5SCEUOh0pq/L9v1Ge21DNnt2qKaJ8DIoI2P2RmltIRSf4S8eDrKe4zDSlgNuCByUqb3U2OisoNYpIiheSra/gzQAAZXCqacaI6dlt9GzQ6SXKOLot9nbA1SNupDvkQDXvQJVQAIyThU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752448794; c=relaxed/simple;
	bh=h1svJX7hbBoWi5xS02zJawiyf8H9fDUG42upNT4SRMk=;
	h=To:Subject:From:Message-Id:Date; b=uMtx8I6JfZr1J5LJP+7pLV1rRSidQZMlvnKP9ASH+sy5SqCNFDRugQf4abpIfwwON8o87XWmPiHYwSyHxlyrKdKYk2C//v7uwyBoWHUjK4pnU3hc21G2yA5lft0WLPkWosIMbvGOntMkENJ+JKkg95HibaPuIe8JpSLc5nQMNGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4dYMde2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4dYMde2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96195C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752448793;
	bh=h1svJX7hbBoWi5xS02zJawiyf8H9fDUG42upNT4SRMk=;
	h=To:Subject:From:Date:From;
	b=b4dYMde2Pg+fzt39nhORDA5dcCC25p1E9oojYVJjXE9PGL01BUpEPJ/oMIXVfl+Mv
	 PSgYoILkV4vysM2A280MGIMIeLWS8hu25uvwXuGa3ONXfBdcxmWWP7DpBuhB1DL/2A
	 Ll2t8HJfZLoSAZ/xFfMApDmidwAYhaWmBfZub4CZocVNwljuSR3ZXnQ9y7FeGt0R+O
	 nVk/jNHFAuova4OQf6dIcRSONooKCpegWWraWDEwF1JJlZ/2J5EFN7b/C3WafPqd1h
	 +kCkCFjTg3JDsvOqDg4YWkUXrpNtzUr+ba3wCVI8tUH+kArprNKLrLiwtPc1eMRGEH
	 8x6FsyhhoaxNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E3C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244879357.21496.10235419011222588979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8738cddd25d52359b5e5898d8f3a45017c4f96768be07161453c7ef706f91bf8
Date: Sun, 13 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752448793
