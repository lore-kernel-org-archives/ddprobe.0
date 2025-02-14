Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8C18E362
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739517534; cv=none; b=RfMBrm3Jv5KXWXK8uklOYcZeFWlNlrBbh8Buh+cOUauJyU+El8vs1xf5VxO+1pBJJZ0h0lmHznKn6bzlIXasoedIYyVH86k8cuowdhbCd4FcCv+7SBtfMRPeYUxCQbCxpNtBjqIf+r7o9bGhfkifZQri6Ox7QTLcfxM2g7qvedc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739517534; c=relaxed/simple;
	bh=pqYlq1X1OA5E6bPzdtzMaFJb8vKRfTzUoIaz00L4yT8=;
	h=To:Subject:From:Message-Id:Date; b=knIiQkEoMMxbMw+IJ6zVvt9vKqR6Nwzc7PXXTMr9V0OFB1U+aTnJDjUc+RO5Oz/UBLiXNOiCrvRVNY/PMkwpJkrvNTEKRC/mebtYK4q+vOoPn2+Y6KsaADDMaA7f05et3qOUm5oKooZvHFaykJndWMe2j4R2UuL8zK7/+xOissQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHoQUX69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHoQUX69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475FC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739517533;
	bh=pqYlq1X1OA5E6bPzdtzMaFJb8vKRfTzUoIaz00L4yT8=;
	h=To:Subject:From:Date:From;
	b=eHoQUX69xLjygkLDL26LE0T9j27tDz5CZ9EgsC52xhd2zgjXvHJLbtN9jMV3ONj1H
	 2LZHQV9muK8g2fLqrYot6Czw9NNxBcSiPVqj1yrHUqSx5p47gXpdC/4paz/0vqgP5k
	 UyipPE2msjs2Up4FXZGxpAd5MFOIPmeALIpT1C7czvQ10R28D2D/6pmctN3JklwZiS
	 xg6j8ITNmSZDfLNHeHkyXvcIRtztd1C+snesC9QoHGtTW6TAAT/LfWDFnJ+W3xC/+S
	 uxgrYKH0i/iJGqUzSdw15KgSVZDxLXR5edoh3s2DOk7VJdJFo3u2aBda+QKC3KBzdy
	 Y7WdHa5VbtXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90474C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951753358.6334.4298257886627117728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa4993bd70527bea8f4cd82b725643f0f3ef747974202c0b7836984e599c9e0
Date: Fri, 14 Feb 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739517533
