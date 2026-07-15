Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFAD3C09FF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784099915; cv=none; b=mk+qBxmk0W49L8wSS4RLpPHsCTBJpPW7+WjSAZ4YrJvag27nlDJaUNBsMMjqFqJZ7cReFWP0v9U3quspteI+LaVX/zI6CtDoYAtTwaij7W3BYiPn1C9yWrFScaO7zYKqtPMpO7WqO0oFUTKCRPAhg63UWDuio2m2naz7GrfHcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784099915; c=relaxed/simple;
	bh=MoB3G6pAuUoCiQzlYcRu8WOFk4hqoxgjIHRu/6S5GGw=;
	h=To:Subject:From:Message-Id:Date; b=HQXuFNJcmZ+glnZWcIorllYow271W4SQ3V7YIzeUpr4i5Ujg2TMwuALDX0mUxsbwDwuuNj6wWGp10nrRWXiafnYSFnqsNfeHsA6Os3Of9j7WclW5kkrr85UzYs8vCulvWSA0bp/OsYOIDW4SchyMKeHyqPjI3XiNieOTnyXm9iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozO0KEHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozO0KEHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DCFC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784099913;
	bh=MoB3G6pAuUoCiQzlYcRu8WOFk4hqoxgjIHRu/6S5GGw=;
	h=To:Subject:From:Date:From;
	b=ozO0KEHAS4i2Vhv7ZlgWcJvzfJ5rhbDncBWSErIuL829j3f1DM96LWITOee2AHnyA
	 HlnfCNSqKOsRhE1DCSvqrAyypQCEuBbMM6yxI8EYBcOJiMi8nf3h2Y7PKi7WEPr+gw
	 lfI6fKuhnVRn7cxOH4vcDGiwc+d0yE4jGYOs52w0oxGsI3h+/FquV3TfrnS7+NqvKV
	 j+Y2KbsmH5Ht2/7SOoqUPpt9nLB9vRxs/EbzBAJT411Mf5xG665j7Aq8RsuVqCdzJh
	 oQDjLzizkfBTAVWBr1Cq9XGZVG0regix/xEOXwM/h1MHEjZ4xlrloC9qtYnT8NYuoW
	 BOqMJuHeaS4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE9FC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409991371.31107.6196599707214557497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5c4a9f33595b36e6f4947ef8c40bc06444f1e9ac278f22145b8fe936812e55
Date: Wed, 15 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784099913
