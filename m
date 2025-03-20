Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6B61C5F14
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742446194; cv=none; b=FeyDioNHysNKDGJc+AazRJL0pPj+qZjV7P3J2KF5Clu9Bu6X4b4Wl3kr0nr6rsiH6RzHwse+BUvDhT59F+6bcPnIcaUNjoDg6yfM0IXhK9gjV3YQLT8KrY8rhvdqn01JiOECa+wqoJlwdlXA5zkafHNI3ixiYKe1G21fhoSde4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742446194; c=relaxed/simple;
	bh=KYhMP5Qiim85q/k7ZGMNbvOnDkZH7vdzqzqmA8PNIKI=;
	h=To:Subject:From:Message-Id:Date; b=XF48+onqGmvEURvhjH34NDZAwgkERcIKu6+RdE8jJfbfgZYkU2NDCHp/NjM67eILVNwoSuS5pAlCIN5uX7v1KKVCIc5pn6sLn5FzfChOT6nYhox5q875E2bonN5jUOTaHKWwgMHqWeY2O420MHZas87e4hWu6/9yhQsLlnYaTc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cV0b+dPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cV0b+dPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B827CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742446193;
	bh=KYhMP5Qiim85q/k7ZGMNbvOnDkZH7vdzqzqmA8PNIKI=;
	h=To:Subject:From:Date:From;
	b=cV0b+dPg9JWexfWYQfeXMYaNgy0YTjlAQ57M1gHIL3CEZmziEPaQBYTK9zaerVXhj
	 KPcg8ahvox+cLvjlYB0N7GFUP8jZxgwslmcC4pOg3MEZV/32p2/asZV/tsXVurYSPS
	 GtmYAYXfjt6465RYzhx2TfqXJ9Zwjtg81nzjhcZZOoMJvh3RsZGTjRxjv/Lx8y6HPE
	 QFav9ljgkOc07fQum/E7I8J+wgJ4CuUspOrUdFDYWAIPEOoWbny+b+dQTV6jzj3BfL
	 U5m2mD6NsoLnbuxO3XpP9nMfziFkYdr4vBxhtvdS/Af/O+KPFcauC+cJLxt36k76UB
	 raRpAHI8dp3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EF1C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244619363.21774.13466026668631055170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a507381cba471b05225a7a7156c857498780165dc0a3da0132fdd1bbc88fb50a
Date: Thu, 20 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742446193
