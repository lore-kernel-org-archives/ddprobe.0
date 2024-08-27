Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6B92114
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724748354; cv=none; b=aNyb7HgtZ3Prr11iKfQHBjkGnNqBbSDSwOvp3Ru0tZk4XGJjbdfdF+HgAMTwXXW4djd/4Vdu+mkeHvT8SPuTK30NOvLhIVI2WVBwtRb3Aqv5P26q0RRWz+izWu7qH2mLDUKfuLruSjLPwf4bBdToXM0E8+yqRMetjcnQeuAN/9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724748354; c=relaxed/simple;
	bh=6RJ3fCpGRLsGZwgcZVDVlUwNWcQXwUvrNHndj9rQPIo=;
	h=To:Subject:From:Message-Id:Date; b=gw5sVnRC/js5ZEWTAU5zVECznyEOnXus+EHX+wn2T9jYpygS4fqQbnJ5xaaOZnKQLx4GHSqVnBdVaDhRilLBsLN82axbIc+ogCCxcSJ5j/m7LQE5r+XhsL30Sni8G7qGeKXV5LqtkwqI68oBIafMSLYpJN9wvhv43rShHGRKSVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTdeFaP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTdeFaP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E56C8B7B0
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724748353;
	bh=6RJ3fCpGRLsGZwgcZVDVlUwNWcQXwUvrNHndj9rQPIo=;
	h=To:Subject:From:Date:From;
	b=mTdeFaP0X9huc965tv+yHHLJgUJOQ1cdUGqugtvX1T5vn4A+++zdqDHy+t/Uduh76
	 f+RnX6fX0r6jjUnQ3HQo6YzNZy10MpFtfX+OzlYDLBg4eL5KCxEl3x+ObFka29EUjX
	 zYc4NSpFOJPqqE9+y6ccLZ2vI7sOLPbzmF/qvQ0aCYkHkjoGP4tpFMStFao4+rcwVP
	 mHfteVmocQEPaarlMvYBSMFKud6+QejN1u9ydExzFFdQrWVVFCQ09yMYXAs2cVocnx
	 31EJIWIGcKlq7YZj1MZ96X9tXTrmcngHiZkzQxW3QXrkOKPNMxM12v5vnFdoy5oesW
	 nNmt2FOjxfmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9633CC5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474835360.6793.4448323083925967284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b2db2bdeab12e07f64b02c9b38f30806f7c67c23a7e019f9cce3a1ae8349e5
Date: Tue, 27 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724748353
