Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448153FC2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751083194; cv=none; b=azQsnwUxsOfWSBcc0RFaG4O9D4lv8n923tR6SPktL8IQVItI3fHWA2r7g12fkzn9fZJEmoBbxyLdXEawNWE9xCt01YYDwatREIMyAQnZNngGef9TCyiHKYQ5eJtYjuzZVvmXeRWMyplALsnQKXPPV1iEX7Xr8c0FmagdBZ0axLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751083194; c=relaxed/simple;
	bh=y0GHsIILOmjd3SVHxrtRqpeyC2VcMz5TL1m7bMdqeK8=;
	h=To:Subject:From:Message-Id:Date; b=SMNGj+X9vbsPSzdm19S++XnyJNDKn199DhfEo+pDRb62vhqgalSI3mDU8wFKx4Jp3sosP2umOXIW5/qhrzTMYQdUGSC08qFNfv74X+qV4gEFVJdTvcnL4pJufzgItwEZ7cRHvBfBVNdp4t52JigQb0VxwHZfsctwnvBULH1xZL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4xPJpdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4xPJpdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7039C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751083193;
	bh=y0GHsIILOmjd3SVHxrtRqpeyC2VcMz5TL1m7bMdqeK8=;
	h=To:Subject:From:Date:From;
	b=l4xPJpdoBlJVOPQEl1P7B4gBV/3XG/81z3Heeibg8K7usLTR1c1e2WEdkcmmrpHA9
	 5gNYvhyG17624sxmRMm6cLQi49PbQrGgwDG7N3T+D/OZI7zJS5BMliCNsmg9pJ8ZKO
	 1QdGte0YSI48Z196Xj0o9W6cmtyLcAkIEUjzI3pib/UxQrBc5iB5NKCETWV93WAXSo
	 ps2PsOP2D7tmWLheNDJ530Q5FOnU1WB4SeeUVExd1Cm08mJln9owH68RXaR5apFPkH
	 hNQVaDi/pHgncvHmrQcxt3ob02e4PUHiIRBmpcamZaJ0zZoktCp6ZBWPjUmaOjq6CJ
	 TiNVc1ifiuOvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E5C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108319361.7444.9245437392717077800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a220a2db8dd67bf12cd1c3f869a4bbbbbf5eb3a29af7ea13269976be3eca20d0
Date: Sat, 28 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751083193
