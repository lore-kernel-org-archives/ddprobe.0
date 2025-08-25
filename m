Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE5A92E
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756163994; cv=none; b=C3jk07/zW8qb2YwOGw7WXUKZ1Rp6s4UlgSR03hsREnUzbd6GI2yuOjfjLh6UYdfJHqp7QGUnqhBNWvTGfPiB+pGdsEftDNC9RwrK6vboxt0Q63yA6rI0THGjtb0ixcTBwlDnByG9VCvECm3gFZzzxtAJhFdTWlda6+JZUXtUWtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756163994; c=relaxed/simple;
	bh=FmSpgocjfD83Q6hEKEYz/euOuPkau65A1+qjBbjs/G8=;
	h=To:Subject:From:Message-Id:Date; b=p4leo9D78lIHOamo5upDGuwxv2L4v9uRkf09xalSnH+qNwimIVaSw51u13sxBdP/CmAn1SfXIZuftqAFxbWtlzQN+7SgQyoRI414dXpNpWCfqkrznw3DHShzwiy5YPAPSKUJ+vXuYpC+fWw6HR3JmFiV6Ksd6mOoR7P66Qv88Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPTpXV9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPTpXV9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0527C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756163993;
	bh=FmSpgocjfD83Q6hEKEYz/euOuPkau65A1+qjBbjs/G8=;
	h=To:Subject:From:Date:From;
	b=DPTpXV9cj5eH5ecDhd8o33ZsSUk5po6AblssToLPvHqV4ZUxfXvzA2RxgXFScMhw0
	 rpdXLVYlr7LHmirdRreVeN1JldZUzspIdN+1JSDRZ3hoerBtTSH1vOZRNAFabWhm09
	 R9NoO6r98WQz8hPpGNhlF1OWLhSs7Cmw3R4w/4hXwxKbxURUICBD170CMPvaPiUxhq
	 vUORSM9Fy0VHfsWaaS/3wpDjBDZzdJkCVLnUHROJ5IAxs2Pz+w8jpj1eyy8fvDvm2U
	 5o7PIxK3sGQ4DEK0gaUpnLvR/z6DLVMyWn20C0eoCHI21eqfZsMb2PXFGUC/1/0KDh
	 N5fkYKF5Y6dcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E685C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616399357.8577.8044167244813253205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ca15136705257eaa449d8c290f69d39df28a82bbc2d919f797902d7e8cbe08
Date: Mon, 25 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756163993
