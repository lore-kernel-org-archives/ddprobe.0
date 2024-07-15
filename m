Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5124623A9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 07:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721030003; cv=none; b=LBXjFjR8o2IVaBz+OGtzOmlcTK9PMh19IjMgtjcrsF4KmBaeeRiZ1fwolSKzKnBw9mMiaUYxYFdgX1wnwY+FK56s8z5DoqX6snPAiA/ID1i+IAOKqzfoERbORipxsgVRRAs7Lx71VgkIOSIRPeUJfKhf/YxE1S6USXuPjTZcjw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721030003; c=relaxed/simple;
	bh=Dz5EmOq4PivzzOLRHbNsvsItJAl5Be9fRSfUEWhZS3I=;
	h=To:Subject:From:Message-Id:Date; b=Wp5hmpTdk8ike0is2vhQiZZBQGf5QIKo1E3avqjTTEq6mtlR38JZmNL1CLZOOO1BkWCTW9/I67SKSgRGDKF3ePv2YT+43+NGYf5Fbob9mIINkVCi2+henbbx9Tz5ffM5S0vh8fUnvsjZG7R5V5ig5bt9ch1OAHLWP/GBUnDcB+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk0Ku2d/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk0Ku2d/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D7C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721030002;
	bh=Dz5EmOq4PivzzOLRHbNsvsItJAl5Be9fRSfUEWhZS3I=;
	h=To:Subject:From:Date:From;
	b=hk0Ku2d/zMTNBHMEd9ynHhdTZ5upz8CSFHe0Cm7Wdstd6JLOmKD0UOPJLHMIEcF9A
	 jHpWAPt+P69J8qIl1rdgfWT2Q77aGwCQhCA996OeWiy/8but9HmmrKlunFgu6jhORt
	 krOKFwEWxXqrCq9y/ipP3GvbyoeeMmW4PqaCPT8j7HB4yt0np3ySicXgKWrbsdjKHo
	 mpz9YtpD1jZesP/+e+SVq3y+c5NQNgAVCddJJRJXOwQ3ff9MsA+X2JV97tP4V0fEFP
	 v/jeKQT5U7JdhA7c4pROiXxXWxQ8UuzpNrJyYvYFGpBsif7JqT+KJC057JSRsaxmqA
	 hFpQnbI7o3L0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE23AC3DA45
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 07:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103000276.25198.10966284215500730521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb35fbb333fb8c14ca51fbcc9994c5d502defe08a36d31392aed3d1d87991dd
Date: Mon, 15 Jul 2024 07:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721030002
