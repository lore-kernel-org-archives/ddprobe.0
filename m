Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1630829A9C3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770650634; cv=none; b=BMaHacJvMPahaPv0NcznLpDi5sTe9UajgcZkKtKbV3atEKA4pNAzr+rZejHJzNIPQXQU2WrJAkKDHdBv78nV0KXpHf9+BPq85c8koQXmiPMu02YKvlXkIbp9YOkgLdrJ2Ql5w59aR+C19CM/hBTjvZneh+mDZISsCuF1ymb+GmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770650634; c=relaxed/simple;
	bh=inx1VMkPUPVk2H0NVSEV5BN2abw4aIlrzJZH0XMPlQE=;
	h=To:Subject:From:Message-Id:Date; b=Ajcn4eElrBhgacNl1ULASHvjegC3axhuQoCqY/AgAaWBPqVtQk70lgsimH5y1Fvm0wPrFPhau8Zle5X12EaVgK+N/1XYj+sRW4MG7b4BQUTiFEA3ibThTbiIEBmFlPs27ltd8xAOLDS7zCtSEZSKxke3+ZqCbLEKbe4wXv6+Wlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCzG3Hx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCzG3Hx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB33C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770650633;
	bh=inx1VMkPUPVk2H0NVSEV5BN2abw4aIlrzJZH0XMPlQE=;
	h=To:Subject:From:Date:From;
	b=dCzG3Hx6VdW8UoD3oRdVeRTmalbKCjuYsDccwwQBWSM1tYXSE1cTRYLvuph0jjl+f
	 r0R5OmH2jiU8/rCaYfMfytaRP6adBxzcpsS9FLe6CHMQW53eZhbCVOJvejyadro5zE
	 b+Oc/s5ooKeyd0EOV2PK7It6Z4A2in+0KDjX8s2ATob2qlgAy5UmT0OsN8DrlXm4Mu
	 xNNZzHqrZcbkdsz/gcMjvpGN5fW+Qj+baxMZg0sblyFYH0hTrZ3tGRSBdwYPBjYY8B
	 sLicWEpdAA7NUDU9oDJSgHBH6Ex6Ox0apFax40cn+yzaqvYdI6QDqArhY2ga6CMPjU
	 0LjcjpRwR78cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC7E81BD9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065063360.27815.13612870621644548229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08914415c012bc77b4e218e99e2747fd877f52d22a2ae49d9703a4a4ce3aeedd
Date: Mon, 09 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770650633
