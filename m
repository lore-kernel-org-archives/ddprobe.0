Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B016386C1B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230694; cv=none; b=JbstqJBvV5So6JOO9n9sqynKthuiOCRoUgZ5Sl3nLPe20uEh1NhRSBnpK97HQlQ9N5OKihdaGP9DnbB7WuLd3BR8w3BK6H2LoGzXiwxO76VaP799D+FTU/Rn5FjzCQST7PC29rlzQbINnslV5AkG3O9y74J2ut284099hcxB3Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230694; c=relaxed/simple;
	bh=5ngRM2RWqnaLrFOI8jLsw+OQiwUJFIs322/NGeEkH14=;
	h=To:Subject:From:Message-Id:Date; b=IUB47GUNCoIPwId6+KWfFKFaKa+GG7c++WteLC9XAFwoN660zvwa/ZMLrrUMeN4AAlCu+mYwSIFC1/oK3SlwZ05CG91UGC0zhiojmhgf/O6h9E4rBrK2C1nAkA92EQt1/bzS4y3JvqiDGuKDxC5y9myA1trZ8CMSIrWi92Qi4DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYPe0s+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYPe0s+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14CEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773230693;
	bh=5ngRM2RWqnaLrFOI8jLsw+OQiwUJFIs322/NGeEkH14=;
	h=To:Subject:From:Date:From;
	b=rYPe0s+pwRLkI4hDqaiwFHZUi4ZcSSC2jQ4d75fuUN27jUzhELTr9O7AHdwQT4Ltp
	 Qcl9iJervxsf/Yi9IB98iSO/7dbIBe97Thavrhkc7RfujyJRDD/bnnxHOXuMTJ37HB
	 ys9s3cNKlhuPMeYWort0p1/SPCy8pGyfvB08g+gGj/m9r8Zwa3S5gvbJj/SOgtKrdA
	 7iOeoN1IaBMCBgEduZP+Mg35wc1QqChWsM9F5Gi8b2FHIvI/M7tMFjRr9Ld7fXqPAq
	 xrNvPQFUHK4tRqaIX7J3Db7sY5C/vpqf4o/fndpti2xQn5qlStM2NlN4IPTSm+/EM5
	 cy+vZ5wEwzqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B87E106286D
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323069361.16656.1489730524894349091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ee37cd4fe327660f3c56db65471018b8a0bad98bebb19d6f3d58e09d4ff844
Date: Wed, 11 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773230693
