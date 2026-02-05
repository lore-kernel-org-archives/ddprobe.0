Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15067263F4A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770316434; cv=none; b=qV0rPnXmmMrLtKyj1Wtg3ely7Cs5BAUpU/c5eBHpI/oSOKns13eoyISIuyuHU9RD8gacZjX3+Ape9zfzyACCf0ZRMD5bNeRnCTWQu1wnNWsklmJ7n5Nj/qfkKVmzRyALLKku7jgRbo0ApjxwST/EFYNBcfrppzBlbcxb9eLx8Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770316434; c=relaxed/simple;
	bh=0j6XR1pHua8gMwKhV5vJZd5vFwaidTfiOwjd5yPdXXI=;
	h=To:Subject:From:Message-Id:Date; b=XvZ66ZX07u/BCJk5lZ+qFuhdG9jjAi67IEJBUMBkJ0c/yPhwueENcSct9wv10uwe9LAhPq7hI8QnfA/vWicKgGhypdvjlipGOt1e1yHjXfc6B+qMS9n/F4Ta82Lbah63PmUHvExACll04tZTHV+bP2j1TC/EECNy0bn4NnntEDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn445RMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn445RMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC232C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770316433;
	bh=0j6XR1pHua8gMwKhV5vJZd5vFwaidTfiOwjd5yPdXXI=;
	h=To:Subject:From:Date:From;
	b=gn445RMPasTwRiHDoUemnqLdY8NENeKpG85uvrT37nCIHtI8Bf5H5n8NoD6MJmAf6
	 e6w4etYuLmenX+vzD03zZigHQF/YakoVV8MKhXVlplrTPmA5LGTD70BC07nj1zg19b
	 Z0H3yZLemZm1hG5Cwk5XmoZRSn78AyK6vdo+ZRoyCYJe80S1BjWtpPyFpH3sYaSlX/
	 SOBi+ZQJObzyAqCbY2tszgmzWVYpjQBk4P+EbLXFFwu4wazSf1enFHSuHlfEO+RQII
	 lqF8tFTcYHMcv3CJ8OaQeSl0/+ngPb7DpwSsjR1Yx3cm1cna+JI1hl5zOdkdidJ4vq
	 TrYuXY8l5gnZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C204ECD992
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031643360.4753.6923348372555443980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef02c0f0ad468de261e0d45d6686da206ccfe717ad115c571294f91579a08b7
Date: Thu, 05 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770316433
