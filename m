Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AB33C872A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785904234; cv=none; b=Hk3aMNowpEUAYF0MU33PFIgOqpCu/865qzsa6sWvH6EjSb3p3ATMp2DcONH4ICN+DGIYMvQIInbhtGkwqzt1eRPBGssxF/NorHY8HsnMG5HBVwtoFfWb3SvKXY+Ff3xGIamY8k2ali+5ke4H9RF4kYkcwWotsHYT2GMEtB0T1mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785904234; c=relaxed/simple;
	bh=q393yUe+fu8SP9pGJvG+o8exv5RDzeZadOavSWc3A74=;
	h=To:Subject:From:Message-Id:Date; b=qdIkeBu2TAO4gn3ER+AgmNPjnUfwxxlAJpNfZQkKJVlJJWJzpbCUTMHaDd1G1JhGetGHDShoAcdp2jCvr54jeQvTYpklKC+ysGjJsewzzY4RcwHz5Er6WRbR16i3Zqo+ASJt+MPNlshVIvqNm2YpXFI2LZAEsOnheIvt2O9yxWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIeQpUgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIeQpUgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9375C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785904233;
	bh=q393yUe+fu8SP9pGJvG+o8exv5RDzeZadOavSWc3A74=;
	h=To:Subject:From:Date:From;
	b=EIeQpUgpM60mS/UkA48V6tP656NyXRSYKS3f5ckEJTNm5rOaDfHsNCKdD7tP4Acfe
	 jn++E8hq1Mrkd8U6J0RsiFTU0smWMhYdUdKBKU9m1E3NYwoVpSa4vfgzSutdzx04XV
	 EuMQZEPQsE9w/bEs69te3KRZaXQqFQ2NvngW4Y/2Yy1QdBFXA8pxa6ZxuSIAaUE9Nk
	 CRkZjpYdU3dFY7j8tN9F83VmMobQDC7BTBhiQPXb7kK0EG9qQ5lAHZpIzFCVePPpe+
	 2WRHV4zwikzh0MRfqZ4SzmPyy5hHy11lzxLDJy6dd2b9a2GDsqxbMpeBNasQMICN3u
	 ExAkDlWkjzWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38D3C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590423371.2848.7595561272699786801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9e5c118eb3ee5da13c9c340d294b60e0a94853f8059f2992f61fa3576c4002
Date: Wed, 05 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785904233
