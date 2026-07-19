Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD51ADFE4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784438914; cv=none; b=krGVbqUpedoVQaSV+DM6ufuJWetQdUSaUGS5M/sUBVKnf3yA9yYL7ul7vhlPrJW0YkttB8TA2Yr5tkzxaddmEzF7iIipQM9mFJDisseoDdi4b4HD8WbKYZElX5uzUlc1TL54ZLo6enmV9gNBGq8XPjAFFI/3CEX8WPMwOoegP3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784438914; c=relaxed/simple;
	bh=UnNL4TeLcdmLlLzdhPLIOml5GdvNFueVBu97t7YWdOg=;
	h=To:Subject:From:Message-Id:Date; b=N3mLkjHr8kkI7v0vEqEVui+8n153DulYMm5XuJGkgPkLly0W3O8VKNv+7P/3fQW27B4GbJvjmN17E+7nfej/Ve6cBhlZvor2QqDlQ5XJZyJlDkaL1SGjVWQyLD0J7ZAjmTvq7r79+qZabopADtbwLPduoc1Pcrfq7xSv0teq/Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3bzPKZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3bzPKZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE704C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784438913;
	bh=UnNL4TeLcdmLlLzdhPLIOml5GdvNFueVBu97t7YWdOg=;
	h=To:Subject:From:Date:From;
	b=X3bzPKZj/0Ef5xAxRn9jgUjKlyIL3Kx0CXJegZq9x8+Hm4WclgmTh3FWFM9zdIOTc
	 fwkRKl0VfKSFKnpGIlhidZW3HYXVuNaF5Yf1LCyXjhcIkFZ13MChmWDc3nMUP2qQbK
	 IZsegVB3zsnAYUeNDwh/XuSPEm4ixSROPoqU6h60VejpWY19D2qkm3oCNs1++R1N5a
	 gvFlCqTlTARfCAsYnrkUdl0Xg+NpBDsOcOGN3p/jDQZjeiggeFZYpKU7MvN7INWPZV
	 Ns5+HJeFBJ7PAE0IndproPHqZd+a+Fx8yqyRyGc1CsgN67FYmSdACrhIdvp3pFOYsZ
	 SixKa6A6CtIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBFC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443891368.32424.78700113822698786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db6f9b41ea6975ab0bfca05cfe234d1aaae76b5fbd62bcf7e4c351d8517f93d
Date: Sun, 19 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784438913
