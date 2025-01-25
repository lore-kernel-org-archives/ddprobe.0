Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF2733DB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737785754; cv=none; b=uHj/xHtP9Tdv1T45WeVI3YB982I9zDIYQFQKGh8Kyg6UABtT34ueawynahRVo2rMCNy63kThZAcuBCH52YhzXP6Fr489k++0oclakDeSsrFNItrxbfjGUD4wSgNc3R0AF4R2WdcVxXCo3QwvvhTD+uBehFgwrV4TOkDwwTkAJRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737785754; c=relaxed/simple;
	bh=fJYScMiiVFGFm2Hmt35e7y9hIHwRrfIYBHrreH3bujw=;
	h=To:Subject:From:Message-Id:Date; b=ggCW00RIzVcYzqhSA1xGVd77462Qk+whUA285wB4pDiAd8LRnhbInzvGZe3SPdyI11aNOtpZTMaMXNymVuUR7/wmG94slwXNOx5ucQMH72EtCG3CNjlCrFpm/FhfBAsCJRb2bcyZVFv6/lT7OTM4eDtc6fAc5iIiQpWYN/BDVgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3EJNo8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3EJNo8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A496BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737785753;
	bh=fJYScMiiVFGFm2Hmt35e7y9hIHwRrfIYBHrreH3bujw=;
	h=To:Subject:From:Date:From;
	b=t3EJNo8zg1t8k4wAh1NBHwUpbRGLW4/x98ShtU1zvXWW3rU3wt3G6ImhPoWfrwBEZ
	 dbMDzPwyuR53N3MytO7xxeVNZvNRgEhUuigcNZO9NU5BYT/mziC8d3Hy5yQryHEwiu
	 e52okpBFAorY0Eulv25rvNuu5iF3IPgrc5WNFa5zei97ns5qla8lxMazHZnbPYi8vv
	 YF2d4Ab3/5jFdEenhrgif4GQl4VtdndNCy1YymM5My/7IE2RgurnVHeEnkmaMPiHNR
	 IbSth1l2KTq1f5/aDRh6wDSo4LOVQ0ORale8sMt8avnyNETiE5F0BSs/jiggFS0tki
	 Nxj4nxXbU+Kew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB6C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778575357.4541.12338565525117597961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c879a627ba4c8e5bf3dc1203467928e6d78cbcdbfc9fa0b5f8c7d75d37f4332
Date: Sat, 25 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737785753
