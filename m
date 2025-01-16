Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F4D17578
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737039953; cv=none; b=ZTDVb0KVomU8Y+7i+RCQdn4dh5hH5vjyal8W3kHITf6IcofmADReHoHkeO5iUZEYil3bAoq4MZHaGeEdPbe15nUkTImmXaXvPK3glkueWYSQZjzmna11vJuUbw5ptI9SbLAj7V3B1GzRqcGqYVpIxKyziQXOKvH/jsEYE00rSv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737039953; c=relaxed/simple;
	bh=gPC8eCpYByMDhyPfO2OSATHFlqdx43AxC7qjGwyq7qw=;
	h=To:Subject:From:Message-Id:Date; b=IOIP0/mnpY3+XzEk8+fACpO056QTLUBdPVdPZMBSvSwBH3jWvJ0PjoJ2Q4a8HlaSPLsMVib61iafW9SsVNi9Uysvgg8+1UH0nuwQKi58nFxGw4MC36kAThE96fIeolGW5yr/3qqwP007T+gg8dXbiQ0PhrIe2F7AXWvSqm1y248=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUHuifeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUHuifeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C2EC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737039953;
	bh=gPC8eCpYByMDhyPfO2OSATHFlqdx43AxC7qjGwyq7qw=;
	h=To:Subject:From:Date:From;
	b=iUHuifeSteLuETobjDGhc/7+mUmNpbuvnARHpgcRk5jOVHgpA7uXtw/G9kchCTt52
	 obLPG99uBzqkr9E7TE1aiFCdV1pEzU5mKPfvUD5H315E5L+3k9ORnN4eM6FXdrFLTz
	 YFliW62D4y8FIEcCFiosQp1KG7ZT6gxwU8j2gqTYM4LAq/8qppOkgr1aVrff8KnNoJ
	 I/8qRsMkrn/mP6xHkMvmHbihMYXlx6Z9rOzLqgMKc2ZxI/qw3FhlHm+wYY3o5/Bzy+
	 FRUxwHAPYrGzUdlk3bBlXHEAv2yOtFQOKZ/gT2DkiVLrie97C6yxQKfRByzKABTP2D
	 gCdPKgPSbsaxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98124C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703995361.24476.8201164789024288122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d51df2cc1aa75804db5b4f782a670367ee3cce8ebc0f21945708509c29fcd26
Date: Thu, 16 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737039953
