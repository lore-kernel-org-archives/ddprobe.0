Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618FF4C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763491914; cv=none; b=a9trnaqyQfmwJ2wwFrO3epmN4x3DmjwysRr9qXngnCTPy32zk5luYs71MTwDj/aJf0vDJcjjrcdw2AyprB/64cPH25Aa5cS99m4kIEj6/Dfc343Jkz98GYKpKNXbmgLkZ6ill+VuNEWcwcUx8hFWoc5R/fKQsKs3euzljOL3zss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763491914; c=relaxed/simple;
	bh=H81hXAVQiHqTqMG8fuXNJ59a/E6NNysNDs+lKoyA63o=;
	h=To:Subject:From:Message-Id:Date; b=sdwyT7lo3htuqnTjffrtRY91C9Mjmy7frMvhcYvCEe99ZDosC049Ng7DDqLJbf8qsvcGZYiY15Z1H+9xh1Rr0Cw7vQkAscEBhbCgxs4TQVGu+kmNBkGo2fRzw7f44fTVYe03rqembCw9wd4vJzg64Z/eNgGKVa5mXiUcpzQmzJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4jAnEzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4jAnEzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6CEC19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763491913;
	bh=H81hXAVQiHqTqMG8fuXNJ59a/E6NNysNDs+lKoyA63o=;
	h=To:Subject:From:Date:From;
	b=h4jAnEzS88nb+A1YYKq184eh3AIdmhTzdEZzSPIfkhiG0wS+7fhvbbYQMW9Lfb8Wj
	 ONDuFXS+wocMg+gVVynrFOQ5GZXIYkBpvKNUMHC4tDSMXnz4K+2Yq5KKrQJ8BW9csX
	 pfVoo1ocC1Ubk4kgy1r8NXLTvVPl8NFEmh5i2FwM2u4MgafC6ZksmCInKJqX015Bv7
	 q23LHRf0wSRy76JLaEc0L5NWZzGk/OmcUrN71FdKkhueszijJ27OdTgjRb5fXmSAx3
	 iyeOOS9I3aFrA8i4NX9KDL2Jx+E9BbudjpNlxMw/7FLJPLeYRZjo7Y4rvv0VLzqaxV
	 TRRLIBRnA9vHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93496CED63D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349191359.5921.4041685819655322700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093d7fe7ea8680c481e1b85e15432d95ee9e57e2745fbc43b1870864385a4ebe
Date: Tue, 18 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763491913
