Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9981BD9E2
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730313354; cv=none; b=YRdOLalXQ8GoBj13n2fL6XsXkv0hgdklE6gxgswIwZjm6t1wXppplQQRaAvEjj5xBFHgiN+zQs9p5HSUkBIZJedZxILyaHkZTWTswppA1WofY3eI7d+A/j86hpMdUdehvCGbZn3mHKo+ZegO7iSZgmGvC6ODkXN9MGake0ECuWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730313354; c=relaxed/simple;
	bh=AK48km8dsrqcDqZyH4BjlRvz7n+YneH5Gt6XY/842Ig=;
	h=To:Subject:From:Message-Id:Date; b=lT8UfdM1LnbhA8Kt9wL58ar0r7PoRAPE2WIQRce/j6OmjclMslznofT3Jj7TRoXKRTeA8gSydAtbY87HceR8dcx0hBnM9baewzzvaMvEV6yu3UnGRlQ/kJIv5L9fRden0tqoX2OEd1+Agvhx1KMOgTbb8wLVyG6ttHmu4AfJrME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr1eR+LW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr1eR+LW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8365C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730313353;
	bh=AK48km8dsrqcDqZyH4BjlRvz7n+YneH5Gt6XY/842Ig=;
	h=To:Subject:From:Date:From;
	b=pr1eR+LWsPwCTjTKqPGnC+3ToV8XuFecEisAWwdlQnXjt29cyqiwREnd1In7rneOR
	 5PyvFDWTvU2DKBFnWMJcCve5OswscpQrCVr2iy5Xh8Q01RKBs14Ld8AEmvZEflmuze
	 B9LG59kL5y3o5k4Ibc8+hLBhNiY/y5+sv3zU4FxOzfTNDEg+fewZ6z/vRej06smmTZ
	 mKF84QcFUDZXLgmtrb7TFXyNcRngHf3vEf6Osc7ncZKngd7rmWPhDS4cov+se97e0e
	 xhqEkyWveeKBdvYZwkwfJrb82Hd+Mgg66PSXKnTy6toIwl2W0dS9YKLPF4Y3jv84Lx
	 nfmAs3zi1pZ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C93D6B6BC
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173031335361.4878.2295359691498342531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2dcd1e26a5a3b624bde1b7a21b330431885c42a779a253807ba51c2faf2458
Date: Wed, 30 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730313353
