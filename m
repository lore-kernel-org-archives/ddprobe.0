Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD1E1DA62E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765596174; cv=none; b=Td5IXeekVJYxzrdhVVdP2euQFkmvMKfEl+xfjWU75w97LvnvUUEP5H410a6xi5rlVV3hGsTfycoiLg55j2Ffni5c0+99dnb8s1GredXs2xOlnFrtiR/WLUvwwuAy4XCmsNfjhizAMhF5MAwLtrrhJnkt5F0YC3CCMOH3uzwRiis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765596174; c=relaxed/simple;
	bh=KuVfi4Hx0SrrNrobx3JbfDr5f3qtbPkgkFMz88w3wAA=;
	h=To:Subject:From:Message-Id:Date; b=Nup3i+eWAEh9oEltc32UCPc8DqA8c4V/QEDx+RYpxh12vC2FPILLR8iZxQ4N9Dn3/ikGXz6LQA5Y8EHRwWuUL9GlDyM+gnKiRNFDKdpoBO7tU/9QeNOjcDCTadSezad9sXhJIvgnM6qb6rgAvH7nP3ANFM2Q/id0KyiYw5xPANQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwQnEDG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwQnEDG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98E9CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765596173;
	bh=KuVfi4Hx0SrrNrobx3JbfDr5f3qtbPkgkFMz88w3wAA=;
	h=To:Subject:From:Date:From;
	b=RwQnEDG0OPMQkhihRQKO695upI6LllOKaPWXOaHzHn5Ymn7WlSFHeGxBdziExcdgI
	 UGmU2EXJ5RM1I7FzSh7Zgns4OoBi3lCsF3o0pUk6EEbWvT1Yot8nUfnfLyZmrEiXgk
	 dY5Bc7tZXgtu9VczvCPrBjw6sNbBbkwxHq75y/ZNAaZpWbsucL2rop3tewNgauPOfP
	 HXf38n38EiewuLWEwxYZMQCao/unlTuewRJzwNJ/E6qp57+I78x/m0XxerwmYcjkCw
	 Jf735PmGuiDPxyZQ5qhV+m4W6PZcLo+u1h7/71IJEEnqEVMMlpry0Px9aDdxQf+LRO
	 0fc9PgdmUhilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2AD59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559617358.7462.5542869596465755652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d790a7fd674a196c4dd1495309d125f03b6e65c9a3be79bffbf51ef9cf7fda14
Date: Sat, 13 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765596173
