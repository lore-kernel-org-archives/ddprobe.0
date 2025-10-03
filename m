Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213152E8E11
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759487395; cv=none; b=haIIqJnwrGJADCuWkzWJu9gzzBFUJaW944SqcY/e3mCQpwTdcoG+vzp18J0e3p2yX1xf0ks/Cx1aqw+7i6QouQixXCRo9w+o0zdT885LwV0QFAh8PeABfZdOz4momyPgTsLesjrHGZmSLyMZ0rEpidHOeU542xX62/UkF9UpcKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759487395; c=relaxed/simple;
	bh=pt0OnfVNG25tpxKKAylReENIjJAx2XDUGJN53dalMxI=;
	h=To:Subject:From:Message-Id:Date; b=cMn/QAwGIL7dN9TwE+Bv2GnkUbv7aSNzPSAiCMFkz5/nl/gE8UUiUD5jNy9kAS1YNlNtyED8cpjxP5uapYR7NPguj1B59J11yub7sIxgh4rDqaM2Lhfm/NtOt7oRZyXgArGS+/Qt8p+Qr1jbKuY1opk4w+YK952RfpyrPq9SbXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/MLpdVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/MLpdVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1028C4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759487393;
	bh=pt0OnfVNG25tpxKKAylReENIjJAx2XDUGJN53dalMxI=;
	h=To:Subject:From:Date:From;
	b=f/MLpdVvMxvhByEQvE4EKGaFfm97mC4DkbI4p+TW8NIBdIA0EFkpGK2BH8+qZYPLc
	 k68OemJbUlOOSjyXZxZkpbt6Tlhpkd6GKEYeIIfR4ulir8X7dOV8q5T/hh0kYDmnWV
	 lFfiHPpaniTehgDCJzrSDkIWJfCwCFj9ZbeZtiWO6ndnWrDAwrxM1m5auWJcSDlWSA
	 w4VAdsum1664+ICHo6OAhCfngHrETH87MXc9vqkOR6RieT/twM4Th0FxjFWhuB76f4
	 vBg8zcJWYJVgOWD1XiPK1HGxvlYUi710gMn4UaEUgmFNT4FQkDB3nfCQvmPZoUMLhU
	 orZVB1VRmf4LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DFCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948739357.17171.17784261873891917601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454b9f07b310f9de8f2a0b48169130a89ef02d2df88004b9267277781ed7e84f
Date: Fri, 03 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759487393
