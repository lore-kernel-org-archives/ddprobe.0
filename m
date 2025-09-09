Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2582F90DB
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757396994; cv=none; b=KIz5iE3aDv5/V0W2bl7JxiZjh9NrnKwqPsYYaDLaUiNb+o239SYya93WzKoJ4AkMqTNRyOcAmdicY31vNVlRqYzwV1NlYDBEm5iTRHqZF0dNv0KK4DjUyh/fKOF+am1ii28xJUwM0a/3QQE+Gfq0BGWtmtS1jviDfpyTwNOCsd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757396994; c=relaxed/simple;
	bh=bVIBDoJgX/4Y1wLUXm4o6WrhvM3KYXfu66L8Hd5MN+M=;
	h=To:Subject:From:Message-Id:Date; b=SqGiYb+l+N6ZBecu72Sf/xYQQJPe40/lEl1EFGHWtOr7qHNDXg/VjqsROWAgEfoIRuFtR/OxDoml2Bhvg2MNvNnxeSFDQB9CP2TEtkLeN4KcdfkOH+7CcN9WRf5B9wEHunUrWwLxjBuO5Ndp/n3MC67VFIrW7s3arwTGYHSq3+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN0D22YZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN0D22YZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3532C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757396993;
	bh=bVIBDoJgX/4Y1wLUXm4o6WrhvM3KYXfu66L8Hd5MN+M=;
	h=To:Subject:From:Date:From;
	b=PN0D22YZt8F5rU99OSU4fll3J24bNs2iHx8UHOdVQMNGJ2CZGabGXGZBrIXCPHya7
	 aXZ3MJUkuLW+RrR9Jlf4r5pHeCx38xVOFWXMT+neuEWehkbQYjRVw2nY2wZl9VYDzw
	 pHLpjPmWSPuJZJPzWBzzCVWlrR3x2mpzWaLedOJCBd9cWmC4HkBF1tvbqQQ/8vfGoc
	 IVcdWEbsA+QGIh6c/VcDRxPuvDuD272zlc72MTMLFrqh4lAVQLTsIqAw/b2GMJYYg6
	 6CFf5PrloZPFjvqVi+Iv9gTk4X2PLlY+Lsa1X8uPz+B8ZbJz7LyM0HE3YDufHlCuuI
	 5woLTMB117QkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A0CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739699357.16976.13775566817825487466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6a53f296f9888acdf84552d8034f719aa7bc5a1c5760481dbfc28d788ac930
Date: Tue, 09 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757396993
