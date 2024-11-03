Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E5A4C6D
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730592354; cv=none; b=U26eB1MmNMKB3Fs4sJ8PWNUQZK0bDnM89afqBNUNEhW4ouGVIN6/QY8UVgJs20q9Bwe1GcU98tTRsX6Gm9WdlTKifweMhgAgrFRVfLNc7GFX0QdKQmoO0QPF9vJFb3pVUfrDu9vmat3kZ40iLJK8GjsVJo5Rt/pfwhk+7ehczfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730592354; c=relaxed/simple;
	bh=GvgJnHL0BKfzuDBrxLiqaV0erGpqPLFtllHGCf0sODs=;
	h=To:Subject:From:Message-Id:Date; b=q9DVypUBPBR1GooW9HMu8jPTB4EJPW9K3+Qrq6P1kWBU0r53ozi0oeae3udGMA+X0Qimqilb8u+rB0LZ0uWYoa+6+AWn6qsXEJi0xPAqJrYdKlybbvmZ4a8W8vz89fO0ow7mTtfOWQaB+dycF3GnUybOZkS8+f31MrJh51auIZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZbImQ3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZbImQ3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B63C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730592353;
	bh=GvgJnHL0BKfzuDBrxLiqaV0erGpqPLFtllHGCf0sODs=;
	h=To:Subject:From:Date:From;
	b=lZbImQ3n0ArYHfghMPgYnhs/cJapXNeWT0ZQE492/5cEaKOx6OW6/wyO1wGZT7bHM
	 31FMJueHnUl5L/aS33Yiu6gEN8Amu+peidJysEWD3NsGwO6dMoioDyLLO20IdAFEAx
	 urFHENTkDFj8+fWYjOSD4b9Ao5OshMcS6dhXeAGizgv3Qv1FVtD7C+hqissPh7B1Ox
	 Ux286OgdH9wdLAVjUAVZodDaPXZC7ZJBFHHaGgTljsOoh9Y7FkqZodEwvLZjyoggV/
	 fiJLMtlLNEZoFG0iQjpdToDi9BLPHre/vKd6VJ8h4yZa9BsSCQy3vVpOCubgNEMRGY
	 pgrfU1df3yF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FAE67819
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173059235360.26300.5582238164238320470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b84459b2d75a22391137cb60603c44c10e19074fae484b0198a279f096a096f
Date: Sun, 03 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730592353
