Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2831F8BC5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742055594; cv=none; b=L1AJ4bxs5E91ZZQMVse+4LwnV10HBYP2xt6G87c1dzDn09pjsuA/kTBaFtQGLzeyNw/bEQE5MmYLtE3j931oHxd70vpr5KUpokDnulTVfpYTZjXSsMCX3c71svO0U0uQ2U/9r9E5t/vsBQTv9vLizzMc81eB+hjawEvlSPqKCq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742055594; c=relaxed/simple;
	bh=zrN2G7yAPwWUgW8vX1rUb0KqYFchWKAznZ0/PqNaIIg=;
	h=To:Subject:From:Message-Id:Date; b=SbZkM5yZD8kqklZfjBfaHq8H3zi6413gYQvs0+w8ID2U+YXHmQzo+UHau8InMv/MY/7fNp1Ib2dfrWzwT1ojywIte65ASMDtI742p1sm9H6I5X4oz0gVhc3Y+vLpNco15Ft8n5c1vaMmoi6bkf/5n/ym50f+MZPlRvek7tCA06E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPw9ygqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPw9ygqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8DDC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742055593;
	bh=zrN2G7yAPwWUgW8vX1rUb0KqYFchWKAznZ0/PqNaIIg=;
	h=To:Subject:From:Date:From;
	b=IPw9ygqiVo2bmgTdrWVaBu4g5cJ5uQcmzS3hTwh8aVsRJ875Roa3Gk1ruOxXDPoWe
	 6WSYKQB4XhPHUyLXsNyHQDSjMO9mPgvXLaZm5//8zobUAJ8GADPB5sCtKNYkZHMIa6
	 7YQQaZTr3vgItoSDC97aDMEAYUwURjzaxVttwBZ1bMCl9HJU29c3qSNSGTkNkzIzYH
	 4Ykac16XKndC7zb0xZN7S5HDYqV98unZCYNOc+gQFfV1Xlg5ZSLYuzgJoSk7ZQ5Obt
	 L5QYCanMATq/25fkna2dHD1I5soxefPYy7yNJKhjvRTXixOu1Btr4cyVZ8JXbE6cWg
	 LWi46xRR8GbpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939ACC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205559359.29964.1771057146532501716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb35e8e0a79e90e725da2c08e55427237ccf1c4986ea9192820a30fdaf414fe
Date: Sat, 15 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742055593
