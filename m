Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6FF47D930
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782988114; cv=none; b=i4VJd5tb0pMV2XrBY2W4wK+d3lzHx87wOeArTfiCn4EEbcPIsNCF/81t1rR5AqbYbvaxo+hdt2jGAYpayjrtLomgkT8C9TSpItlVNmZXS3Zjdz7Gqd6vsIFqUl4AeKZpT2NFdqBW2ARtoJ/pnkKDro11XxNiL58pArsLD9lHh14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782988114; c=relaxed/simple;
	bh=YBGytEuQA6jZnGlFGUB9g3ajhi8vjvBFW38fDfpbnbg=;
	h=To:Subject:From:Message-Id:Date; b=RTQ6tbhWPJ00+S8etwJ8BkymXjaV6VF8Myf1XYnKf7cceca+m20mNSa6j8GLGNfcIjEQ8h6slHi28mbKramRYD0seBR4pTYCYmGXzwgEWqoMEiFhdFI7zAE3iRpJqV1Uv7TlY7N5FSGR3GJa6eu9FBxr61vCBHEGLH53WVeLr3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxgF8Ads; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxgF8Ads"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BD0C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782988113;
	bh=YBGytEuQA6jZnGlFGUB9g3ajhi8vjvBFW38fDfpbnbg=;
	h=To:Subject:From:Date:From;
	b=cxgF8AdsP15fhORfPq45Bzg0yqHCeGAZooTa+OruzSnqpsGhfc3jUb+fLkeoHRTDX
	 vv1F/eRna8GZoha2y60rzjOo9iON9E4/KJoRh1nn/C8BR/Z4VP7iwiBv6sFGoil9Z/
	 wWgPcJUhHqqD9Ie9/iT0OFREPtYjNbTLanZw8nIjFyjG3IlIUBQF1wpRh4YRvAN2DY
	 6gs0fHeAg5LBPDDtx7wbKiy1gTSeBYWGgHR6D86GrvgsswrGvV5sEzE7YYWeAQPpYi
	 Wac6KsRQY8WLXdJTj9Pt68QHR3RzkV2DWKLI44C7C34w0U9+wM5uDuju03L64V0QKL
	 Hwg3w6LUNQgOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D61C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298811368.19802.625330167387079342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369be66c638a8b0abb68b8f76fc69ed9871dfcf55236c1fa521b711090be1d8f
Date: Thu, 02 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782988113
