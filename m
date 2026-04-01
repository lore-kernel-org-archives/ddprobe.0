Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22697383C74
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775051734; cv=none; b=Dx50D0RKesIGC3YX0LXdZWHz6se8beVwi+hKVV1JpPW29389kBK5Xn++mCh9tU4raYjf7ktmEV1XlAl5iGRO6Lnu/sYSYN2uCsWoCfOAsB4UOGcms43kcZeIWWmLA525h62JEyZGPY9ozfU5ytBaHgqKGOUMfmGuHQ7e6BiAHS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775051734; c=relaxed/simple;
	bh=mRoV6adbWwMT8SE9KdoH/clF23L7369k19vi2iOwczA=;
	h=To:Subject:From:Message-Id:Date; b=TrXGzCEwwPaulZZbc644NSiJN+pevdTUIjyczJL8o5KnvFjK15JlapcGii0eSckTXzINTK/wOBFjvQuKOu/eQ9ih6OVhESVPW9cj3H4hXOe2Qr/29mVHdbHgbkiIvxoGVVjWVkLwBCBLIvpb/rCJegiZDIukMWHcrHAbx1qzAJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfjvIUVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfjvIUVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDF8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775051733;
	bh=mRoV6adbWwMT8SE9KdoH/clF23L7369k19vi2iOwczA=;
	h=To:Subject:From:Date:From;
	b=BfjvIUVDzwfFrjWT4vq5oz77Z8eSARZiFVAYRp2h9oVSw/Iwo37kAqN/iGivaQSAR
	 ocv5ZRSCErlmJdrX6+LNTEgwv92QT2WGBePdMlV8vMZs23gIXnCLuescMTK4eK1MSN
	 ZD/aAWPnwAcR9/yOJxRQIfj2GBaqCPr0nCSrTjUNcDl0h3VWOtNetreSWu6jtwczAs
	 qev5MSb8IyHxEccJiksMxbjw1ZShK5op6vqBIw8u3eyY2ZzHbPhNvk47EbZTYgffga
	 lIxlBWdWiVuz5Ct1Hxs2BRXfsySjyNhG9XsBGlNFnPRippLgnNRw5+7Ye/0gqTK1cm
	 taOScA0pLbc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF08107637D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505173369.3254.14430003826268681619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9712425c003d646c6ee0df9ad0336354a47bfd752841b56412537cdd3a51d188
Date: Wed, 01 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775051733
