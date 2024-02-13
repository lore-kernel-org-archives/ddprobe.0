Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E515FDBA
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707844697; cv=none; b=n2VJMMoX9ni5GUpgMZKSqi6m4wOkWo1J7q/Hw/MDfhBK6o+ml3YSljK8UMtLXUVZD9HNbywwiaN8SmsCZG26t/1sFtgS4Sp7YMrLJXcnx5aiTINX2bry90YcZs9XErVJY5B8CziJaZn5SKNOplCsQ2B3Yu94+T+/oVUZSlTvOsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707844697; c=relaxed/simple;
	bh=jBTXXuFZ+YPZO5w58FxCcrSqvAyc6VBtYljLLa91yAM=;
	h=To:Subject:From:Message-Id:Date; b=kMduwXiushYBuYKXfZJ7vlZBgzz0g0/3ZuKpjNG4XLwOyMrqL0ztl5fhYpbELk+rmOm/cHUl5ro6b476YQjW2G6K/F+fKyRYfukP9jCsVQmdaMYoeBR84OVNNxZZ9YdXPvXgFF3TEow+LAOruRjErQl2mYdQzjSRPKlb0/NdiLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJteHkK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJteHkK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA88C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707844696;
	bh=jBTXXuFZ+YPZO5w58FxCcrSqvAyc6VBtYljLLa91yAM=;
	h=To:Subject:From:Date:From;
	b=uJteHkK/6US9D2UMs3DEPSnGMWW0sd8y4W2OsNBVE00HPkqe6AGb2acZPyKjko02k
	 CWIKeVj4TWph+bN/IQGo+RHTCL0FqFe+WXMZcLcMihXwwSI1ZCUERIC3bGfbjt27tv
	 V0i+cZ26SHzJM+bSyqJxZCQJjZlxGj1LNlUc3Ikv6rss7rsr0aQ8ukaitnxmIF7kwM
	 Ex/pz4cha97MHyDtsd7CC+5EIdUSzK3L/8cuKQqRNJ40/EuUmYeNNXp5YfqpLZO+N8
	 pfuXxSsF68I/BjS/D/Jzac3AlLlThclRRMar9u9nZnUTkk1Fpj1P/nTD4f7UsHYoHN
	 +uwVTNKHH2Yxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E73C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784469638.11868.12949331321147593790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed485e407d1472c921027a798125c39b643a1790076080fb9966cc37d427ac3
Date: Tue, 13 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707844696
