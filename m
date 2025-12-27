Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3238834
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766841234; cv=none; b=cT3UtKl6avvSnqzsicNaXFSbEc0EyBGqZOPVZmB0iWir5+4vDL3ohPFuHNj1JYpHtdUhT/yyQhgPEFv5BuSTjTQdivQQGpHKxzJdvifWpiQumVlGGx8idnYm8pcSvrUTqcvb5hp5daelkL+xG9/hJILPJZqICuk7RzyTQRD4I8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766841234; c=relaxed/simple;
	bh=88vzKjMm3Y0b8zEKBjRXjmqiC+m3y8jZVujsjnJtc40=;
	h=To:Subject:From:Message-Id:Date; b=njh7DuNCEPcleG7FRXmSyuqGhNTlzH7J2u3lLa9wfrT89VO3UWjgDb8X9nP0dbYpDdtrHDNZhq6lIZE9V70FHsUuNRUBRbcykA9t/FaxNOHHVyMyFN/qzSAUUyjjonpAxdt2BkurUqxX7PGq1BF3mBKw1E/s6TWqAk4zi00cT8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz4b9sc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz4b9sc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ACBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766841233;
	bh=88vzKjMm3Y0b8zEKBjRXjmqiC+m3y8jZVujsjnJtc40=;
	h=To:Subject:From:Date:From;
	b=Cz4b9sc5Wa85dfcPUuPQ0FJ+PFizDd+OXPyuDoEuR/UYoDE1ynA6hgsHzQ/eA/OHa
	 RN57wlTJpZ6biNojv3dxhqzWk6DAkNM95Dl+m1z5iOqKDBDLsIg8Rucpd+/JJmwfZh
	 hGKFKRmotmCouaA+v9ertdYDVsvQ7KsgPEmgF3NvNSlL4HJ1dQOKf5WvfixceMDada
	 3pIAAGYq20YS3S4s5zAu8h83bv5h03BWvzfAd+/d10DiKo6AxBetJnIjAVVNsziSOI
	 eZywoWOXBzmZOc04Xhp3ZzHkoDQ0q6TfDOZ6dUqJ9rnYsVPMb3plf4oBm7RWJ4aLn4
	 8DoZvuuIosrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ABDE8FDCC
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684123359.22949.6433449612548779183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca2132bc13880eb8182ccf1d00c520fcf7b5f75cbe193f1bea80c88d96856da
Date: Sat, 27 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766841233
