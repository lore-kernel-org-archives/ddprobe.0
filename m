Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D253016E3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778772034; cv=none; b=YY6Bw7XT6j1eP/TwvXYpNDKFbjD9phbDyVnjHLfgkH/dpMOspm2T4FqwyiQpr5aCmESVDxH4zRitnI4iNOL8BtUddONp/4OsvAA7ysvVxJKcMuhDj3iVERgxOWDMzipJ0qRwH+mBfFim2vbmOBoKfDnMcZdR6mIqDXM6W+jvMZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778772034; c=relaxed/simple;
	bh=bybg2TYEtFhFKWWYpVYmRSCezY9ewtzJ3cUyMWY7SAw=;
	h=To:Subject:From:Message-Id:Date; b=FenT1x4u29Sf+4PZjCayx2bxQ2bpGbBru/GJx2TkLTJTY/XyCl0/3ibLu4DuHk5petZy+Tp/N9Y1ddIbMJexwuBAFdp1Ag4wvjZtUKEVFocQwNTCV9f09fXMA/O4NteHJQ71l0gqGbyi7ZnOqJTLK3Keq+LNS+j0IIH9pFF4wPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARjohtNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARjohtNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA2BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778772033;
	bh=bybg2TYEtFhFKWWYpVYmRSCezY9ewtzJ3cUyMWY7SAw=;
	h=To:Subject:From:Date:From;
	b=ARjohtNksZibIzUwo/vXYElPvD1tD7y7yIdP0Fprr06yDxwJpuY4HBdGD3EDq25om
	 MjYQl6Xdu6wFik6DpXWaOFVCzOXUn1pwLFWKLJtN/f64ZZMh/AbpE0Dy3Bwqw2KVzE
	 j8zAYlNYRe3x6trvWu6QUgSPY355z0aELkb54A6shsW/YGrupkjNP4fyjHv2kousJi
	 uIvCENiLKQvrcXQj/UZ6GXo+/8iJLtAFMafM0ruV/182teT3lnOvc0FpMxInctSmGy
	 AJxSZpcLV+/Ve6he9j4DVjqWHFvmeEUpRVvVuYB8pEcLhQWGLFik4gw0U3U+Hl38sb
	 bdTZYXrPOsBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B6CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877203370.2809.15835650486123018154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff2c2fdce5b29601d04a935a1b29fa856505be85f834d6b8283535bcf26527c
Date: Thu, 14 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778772033
