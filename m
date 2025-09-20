Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361541FFC7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758392994; cv=none; b=hTpKoPFJcrEuuR7LR4Vl/OCUezA3+Exjoj03n3VJRGQH7/Sgbo9pdZN4yica9V9L1CSqIe7NyY2O/57/eYJjeVARl3gRRUk5vJQa14fJscC5FHR0+hOif0K7dzoOxpmHbg+JXu0uzYxSoyLD1mrXsGwgtdCf0z0yVugnU9FVsj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758392994; c=relaxed/simple;
	bh=ocW6FtBDFUReBLqPaB/fu0qx+KBeesiteeDBCht9YLc=;
	h=To:Subject:From:Message-Id:Date; b=qd8mPIpU0jGsZtuU2LrgQam+DJRTVbi3T4nOv03wxJGohShT/vdDnuw238Tn384xHfocJKj6YtdPByHeg/1xM7hG0+mzmeoduwzQ50MSAXA7ij1jvXDoRvcO9EcDB8rai85Z4awWl4xL3Ne/3x+2Hm51mMYUQUD8muFb5hKVz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+Svi4Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+Svi4Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758392993;
	bh=ocW6FtBDFUReBLqPaB/fu0qx+KBeesiteeDBCht9YLc=;
	h=To:Subject:From:Date:From;
	b=e+Svi4ZlinOZPtKQlbejaSoU1TFUbRAQnO6qsH1aSrAyk3R0ruDYhYYviWKEMlYX6
	 IjYP6B2ZjgLZ9/I8VEg93hkmeaT3vKhAzdZiBZfGuDG8ytjJ386qOADae4JmIWK30q
	 4JSgUtCBYzcuEVeXTQFlfTyWV5sI/z57suaTPiWwXKH4aVt8BLSh11RGa1UMBCZs8Q
	 rUwPub0xTRVXahoCl/YPB5OprV/0RcYqFatvx523QfImKYhhciXa5mBkjQFTUyrjAN
	 v0FtEUon4squZuCvO65Va9eulUhboYBPb0TUvRu47SB6c2yJ9ElWacDC6ZLssYa9R4
	 MIEX1j6Khxz7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CCAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839299357.6833.6041489338004689212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c10aafe3ee0658c8d2eb5490966a795eaa513e5c491ff9bbd28ac750a03e8c7
Date: Sat, 20 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758392993
