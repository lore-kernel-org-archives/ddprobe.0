Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2244400
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716079943; cv=none; b=c5VezfKq+spEPMMRNORg1PA/kDlMUaDNvikRvnYpOomd6hDcmtJdPUqyyDBEU6TrIH5UvV5mKj5qCI68sBy53eFMRujI5kPr94sAAVllkmWlAwxJ8FfrQOrvP4ApykvfryBaOSTX5bSszY0/Fol8NFlEjRX1IkNhRgcKmorTggQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716079943; c=relaxed/simple;
	bh=7sulrQ0DlrZbZsSC3OVaxlSCpZrOpPJ/UGMoyq7vGEw=;
	h=To:Subject:From:Message-Id:Date; b=munpFmzgAV0dXPdmLS98hw3CkWktM62H0U7O3jdFUx6p2HLJU++v1yBEslaL+0pmyLpUUQ/D3F+D3XzHKH+ebh5Q9ftQbEuyNqjrFnp2j33LNANUX88cJwu3GLGfqbaJjCrSV2zhxjGBeu2/x6s+MTPaGR7MMoUpP2MOMOWQPf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOsvGCnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOsvGCnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5193C113CC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716079942;
	bh=7sulrQ0DlrZbZsSC3OVaxlSCpZrOpPJ/UGMoyq7vGEw=;
	h=To:Subject:From:Date:From;
	b=lOsvGCnDtYzAj+d943hBKReCpV0GT6NLYBRIRIX8Qbk1D2tfBGGGWEQIy8mxj8Hia
	 ZhJ2RwUKCH+2yFAAaqVHLmTgVBuYn3XeFAdn5TMp6k0wUt+I26PoFXt0VA6WNqAXkp
	 ENL16nfdCbdbvuDkhpWXpyorNfXUjjwLINlFO5BbeMgsnSPUOkHSYAkcc6YXxen2tz
	 hc0ixdxDtesQO8T9RmsIznRz5+noJZMsMPEnzuKLvC1KUK08Q6ycXnu/Ma50RmsAYQ
	 Rr5gC/z2W7c+zX7UKa/Oot6qxe+VwZW7Iu2pXIYFh0fGyYN4U6zK0AXcInp08SqpYT
	 T+onOd5sOcSDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A2BC25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607994276.17391.15453905846248452520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8310d76c8ce525af2b6f9928e10465a274cfe40d3d222a35b81edb69c75c85
Date: Sun, 19 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716079942
