Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532383AEF49
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786703434; cv=none; b=pMzdeEoqxvTC/n37FSP3E9kXQCfrvMD3DxZGosJH86kUk6WlTSaZpmToJ6tl5Fmaz4cnxwZKj6WCWukCnronM2xD5HhlHG5KR1bACZD4p0MAY+DeI1d36mWapycU/qVaZ2AihwQstxLy0EchDHW2/EgJteKU1CcFYirdauBK0LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786703434; c=relaxed/simple;
	bh=5fSjJV1Rm0CWendg6NN+CUgrK3R+pNeVrJGZAf+IpP8=;
	h=To:Subject:From:Message-Id:Date; b=W2dZH4mIrMDhztJG8F6XALjYhEGxwF70PJJD299pAYB4o2dBJ6Bd7sDfSfr/C7/IyXtanv4/v6fQamU1SyIOi5ybZXYqRXzkPUmWr/ltMxZLegBYwYmgkSUnSnnDgoXm2epFS93+KQgQ/2xFsohYVgkKpB7yor14499GvqBWa0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBviIPUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBviIPUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AE3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786703433;
	bh=5fSjJV1Rm0CWendg6NN+CUgrK3R+pNeVrJGZAf+IpP8=;
	h=To:Subject:From:Date:From;
	b=BBviIPUzuwDB8yc4m0z4OLsgR9BQdL2sfBcqp1GhE4bq27j6YP0WvxvnjPO3sq3aY
	 HMilG0saMV+415EcctVjlBmWj4g5HYhm9QgMeru0YboG7TNKMvJDwo+DeRbFJdWL4Y
	 NsEJYkwv7ViC9qshtiyX0NMhYC2/T+/N7tu0zszy+8eIkrQPUMklJSgHUR7IZkqhrL
	 pLd4L07ZThl6huOHH/zFWMdQsyRwIhh5t3hOHxJfwoKWsID8bwtydD2K9302MrtESl
	 g+zHdot6Ul2YVa0mVErX4MXnHewxW2ZAlae+Vt8qatPlKq0898GG8gdMo1UotRnONn
	 jQ6gCnPMyHB9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F5DC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670343368.955.4428364260665613282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2ab97854abb62f0f11e2f0933c10a0679626fb11834cd19bff02967a91ea07
Date: Fri, 14 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786703433
