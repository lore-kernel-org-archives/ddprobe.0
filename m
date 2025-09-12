Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D521E7C18
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757690994; cv=none; b=OCYSLfnR50nEMO9F05eN56fzuAy8yv7OK98jYn26i3Fy+3hrycK9zGEQPzk7RRKAnTFcCpESLZJFQUZC22GpYFhTVhKSb60yJrtDJK9Fr6+Bg0liG1u1o+/Q2t88kq7AOWz+CUEt3s1FoURhEncjutWYuIYbPbwSMt862AfsLSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757690994; c=relaxed/simple;
	bh=ccn43h9xgBdLES1OUNt5R/nVZsAZRQXsKASgJRDPPRE=;
	h=To:Subject:From:Message-Id:Date; b=BGF7y16j2nLartUnhDUcGrBrVOBMGXAsrctsS6/yJPmVjJaw0UdK3hnAmc1JHFr+w6CPsJEJ6WYFMxeUv1rcNomG7dcFCxieceWNcxk987zWzrPX0jqoGQRx3EdcTb8I9K9jt8GEFqm7Rtv6vS2YIso19QCwItBMYAT/jkutNT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8v8Gbt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8v8Gbt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1DCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757690993;
	bh=ccn43h9xgBdLES1OUNt5R/nVZsAZRQXsKASgJRDPPRE=;
	h=To:Subject:From:Date:From;
	b=I8v8Gbt8ZpNp15jYpjDFYr8jpBrX/+X+Q/Rif0EpEIZYVsnj6vuDGuqH0ybU+MhMm
	 ZC5FWEqUz7IpgANhKyrkLRrvNF2iy6fkkTRIxtlc0Ndo/ldagKRTAL2WH/6+sCNFep
	 VI6FidYYNE3rPkCJy/GN8w0+J24c+GJ0nj+bIKPr79M4MgS3anQbXT7FD6Dnv6AYg7
	 xf5liNJStLZxAd4YFkjiu7KCoLlMC4IviGvCEBNJNUf1tyLEZm/aIQpL3nZSUOBGln
	 eZ6eAtBQgCrURk2bwXS7O5AO954kydjtgHdp0mHPq6pE3bmM2YZEobkHOJIJYKkVRN
	 eaSCqgpTUezyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA61CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769099358.19698.7992976228290855143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f676fbbe7feece8731538d7705547965a819b2d0ccbaa65fe84dc8b3c14d05
Date: Fri, 12 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757690993
