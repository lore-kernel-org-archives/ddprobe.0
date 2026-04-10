Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620033DEFF3
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775839654; cv=none; b=JQ3B6FiLPtDUn1odt+CN0KhJ9LSwgOzM4hg8U06VX38ImL+26Wys4ycV7Nj8goUFcgAVR7G7ARkghVVp5LfCuByea9pjnTQ5dTwwZBjRNwSFrkkEm5wjDx2OhzGT9nbYecA5vqT/9Ve7sYfwezpXTvbH09kRYLHLUBVfCH6cocA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775839654; c=relaxed/simple;
	bh=mKwcLtdaQKlFKrDjdHoiaE+4FNcvlirUyrTnZYRJNuw=;
	h=To:Subject:From:Message-Id:Date; b=NwpWib2Bxn5GjgEn3ZLkVKNMsQo7LKfMskKNWSEuOI5RAS+qJPw2E0XT86cCyKSdlge4cCCPcSZD4sGIzBnvIomWyuYdnOaEyoH1KiCcvZ7Nl8GTi77ifdS3/ehptgJEyXfc1EgBzBYV2TPjkLmzexwVdSTXX9xp3X1F8rWcCyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRyJKsyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRyJKsyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBED8C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775839653;
	bh=mKwcLtdaQKlFKrDjdHoiaE+4FNcvlirUyrTnZYRJNuw=;
	h=To:Subject:From:Date:From;
	b=mRyJKsyOLgf8NSEz5jwyx2gZApZArOWBQ4uQRQrvT7oCjaMs4ufZ4BjQ5sOXYSPWq
	 cqfoKqDH/Y9JElGHfjlMZcGG5M8r5KEji0ZOiJJiL8/+CiWQiAnL6O2WzQGkpxnHMG
	 d0WkDyTjhPxypX+Qc2ss4CvUJMzxr5YH+gHOe+t+azNS5O4fKf7kOsiT6SR41YmNZi
	 r0GMcTo/gYzp60lSaQt/eYoZaifeC3u46P4N2n+qKkGfnXpbwFdp/qp39i1OVKlsyY
	 TXTrrd0I/2ZitfeggmDnTSFoaXsIXc2LETRu59VoZt9jFFx1OVnC01StfP0yYhxDcB
	 a4xlDh1TSZU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF92F459F7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583965370.11754.11086904438340382986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9dee5432b9b8ad7052123f228fbe4364c3fcd06d29cae2670fbcac4d5b0555
Date: Fri, 10 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775839653
