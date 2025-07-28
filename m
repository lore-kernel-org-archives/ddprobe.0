Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1006B1F5842
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753673395; cv=none; b=ue7mDhN8xIEflgMtR7mB6ZC/FktnayRZVm+8CZWm1Wrly6r5A10I1g0EKxT6bCm8SiiiqN47inRMKhwJxEPAtL4XKMZ4h6nwv90oR5GPDbKp88/Kdij4J9znJlXpgYoErpxFvLOPBKBi6ph6Cw1YjeygNTYZyAE0gVqEpETS41o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753673395; c=relaxed/simple;
	bh=slPtHDi5NMBVm8ux+wPLxd0HCTpI2bQrhaqUO7u4nGU=;
	h=To:Subject:From:Message-Id:Date; b=BvXywTy4X6svfOVsTJoSYzkp2GMJqC5ybuEOlAq2wd0P/EU3oR9gUWmTgvi4BC8cuphva+p5o8KhTxIrFeG46IhNx1Q7SbuiWGAkgC0Ygx3NZJFsx7aFbeRgBQKoIkT7lBru0Zi/QgtFxsiRFIbQ2qkXVUdNUiokeZQHHCTsDgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goGrJTyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goGrJTyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F847C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753673393;
	bh=slPtHDi5NMBVm8ux+wPLxd0HCTpI2bQrhaqUO7u4nGU=;
	h=To:Subject:From:Date:From;
	b=goGrJTyoPMe7JMFCRSq+asq6VqxGtP09aep2kolxWXtvHFOmgAuTgQnGcHGytRtbr
	 Gh0cVsg1sKlery89Ha6cMUVZi5X3dGmST77v2WmN31J55tSqem3RsK6xNrwPwLJ2qD
	 yPU+J5PSvaGPgKaJaHDWaw2fxfhbxY6ZxfNE9/cCX7eiiA6DR+rb++X6OvbAN9/da3
	 1n8CnZXJYZ5BQ8kV6AQFfX0fWCV88y7cNxJtbEkisTkAp7LS7oAhirdCIEs395yT5y
	 LJS/gt4zpzM00m26i73faMocixqfmB1LPYPPUnion4j3ykxl24I3r7TeLjNBPUTsMp
	 +GM4sAYfsHfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92271C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367339358.7780.14121218701519725517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91142b31d11297ad767ce582dd7d91abe52544cce9f9c524aec90c57d711f012
Date: Mon, 28 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753673393
