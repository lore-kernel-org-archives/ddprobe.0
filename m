Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398261DA53
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716277943; cv=none; b=VtxYOsNw58aEWcnehoYbnyP7aodwmjD2vEWQJenHWkUUj8QwOoZsScYwtZDmneftDpWYPZ7NtIHhe5H7i+qzKH0lj4VMcPxlb4+etlsbCY9arxhjqv1gRdWvhuZ99C8dEODL+OcuIq5G4hmLOI1L0kEsoBeD3gtpXkblGS1LmUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716277943; c=relaxed/simple;
	bh=knVq+NrCpV2B5ttteDfv136JiQJlOc7cuuu2KGKonFU=;
	h=To:Subject:From:Message-Id:Date; b=F3LlUezG7e1VYdtqZsHTjCGjLpiBJEo5rG1cihynzu3tBHqWSclmr0NKdAApHOaJIn3iIlO76EdC87pf7GayYlQ5ONw7NychGRlDYhy9Ta55nTE4AgY+73T+xVS4e+2jE2FcAMxMIFakdUya0DRYvNLok7xfQktvq+v1BNKNvvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8mJKF61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8mJKF61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60FBC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716277942;
	bh=knVq+NrCpV2B5ttteDfv136JiQJlOc7cuuu2KGKonFU=;
	h=To:Subject:From:Date:From;
	b=D8mJKF61nvlisY+b2uoncj2iLn8ffRu+beOh6tG9MGQXiGyJDSs9Lxc2hgocVo7O8
	 UPtNdKcn/Gyq7Ys6OVDi8OKqDVc966U9AEsG4Fhkl0Rgg6oq+uFjTQOq+kzY48bW+/
	 7lzMuiUQ2CCpLE35W/g5oHasrEeQjC1XMeue6wwJeLXya0wdx/qU2kXBAQg8SzvDRq
	 yQ3dsBaic4oj8CumaM8ywHVp3AknXg1ZypB9LAw3l7624HXO1YWBX7mPkuY13nD5XQ
	 L59z/HKspp+6ogDZCQO7er+rNFKRRVOUuAGB/stS/+g3T2VIH9PUaXcdByJdrvs6hJ
	 sMi5J6lKvTYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24D1C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627794278.30176.16035719194725338183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750ca3c5d91fe592f04b5f86543b486fd6b215a800e7d6f56be77af292deb99e
Date: Tue, 21 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716277942
