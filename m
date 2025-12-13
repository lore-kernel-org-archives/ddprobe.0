Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCBC2C1598
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667574; cv=none; b=J6QGef7LqR/FlnKMCRXzWWzX6R5t1hh+kkmJf6VZtGefvUj87nWFdiw8boNKeiVC+VgStSEJFnuLcJrVaP4grzU7lalCS3cBdXYP0/hMrrt7oBdJLpw/t4ISR7z6IOiguENdmZZqwDiLoGrl25FNCtG0iv0j+oS4vYP3q8VyeWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667574; c=relaxed/simple;
	bh=W9o9CyzAixSfCCjEKe3dxN8x1nKmKww91YpV4sz7Qjo=;
	h=To:Subject:From:Message-Id:Date; b=BFtREQVAcOdsH4b9v6J7+I4Ny92BvDs+Ip0qaH/bqIoPe4RjgfSmPIh50aPsBo7rLtVNOAl+83d88ve/go7NaScXKnDWwuTUTJ2tF021E7BqkKKa6y2mQb/HRVXbIlbyvkZODAvHKZkUZnsLCRb0NC6XHTx/oMdtdeiaYCx2NE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMlOhh5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMlOhh5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F50C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765667573;
	bh=W9o9CyzAixSfCCjEKe3dxN8x1nKmKww91YpV4sz7Qjo=;
	h=To:Subject:From:Date:From;
	b=dMlOhh5ALV1pFYdHrY1GiqGYavh2MXkL1eA8qFgXF8NIZSGUuLNc3OIlL9uFtyeMW
	 JV1rM7FnuCdvi5ND9GVBhuaiGfHeOeOr/ZYsF3omas3R20e+oFbReOjL/MfXtuQkf5
	 IZ4t0kdHJf/9hAXjwoIQhf2ML8fHuRTvxDMcy9tJkQgehJnrh+ZIuiV00HiIwS4bi9
	 s/z+sehPBohm7vaTQFiFG+uIzQIKBsmfL224GuDW3u4qnL3Rm2pR6GbHQr0fB01ZZF
	 2WJ0oQxYV9f1TWlIi6LdToGHssKCUgGml4u27Y9wAHMHw53t6XsqBjJ4+BbR/gfH6x
	 gwA+k5T+Gf7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680AD5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566757358.24098.9980876423248483885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e05ae6b5464cc6df59493b0fc3f57854f730280d27d6334f9b44dac979fd819
Date: Sat, 13 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765667573
