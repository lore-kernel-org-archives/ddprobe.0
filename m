Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD4284665
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754664594; cv=none; b=DvECRXfCME9hA/qymoeDqhuzbXYgkF2LoGwH2xbkHz51uwuGuADkMFgSnsLzT2w6c/Q3kRxulqPrnafEP/r4+pUhZDJkD8uKuEwqPUNH6FVU/2pqhI1oFXXTYSml1CQ3I7qcN3mlHOF62ZFyyWXgxaXGU5rxNmK/6BbXLgmWhRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754664594; c=relaxed/simple;
	bh=MBDfZjrgen/aJTxRt9+LyzNozTFd95RTt1i4gIyJVxc=;
	h=To:Subject:From:Message-Id:Date; b=JCAJeEY0n+X2fbAvWMdPT4/xFO9p6pDus8KWljnxKaozgM0xS0d/I+yolDtnXw8D9T6fECfzmFsBi5V6gJBQGohfWO5i8g4z9todGCnelB1uQko27ju78cQk+otvnypQR22Y0tWd9DEYZ1OLUjbipz/QvoTsLGmM8UVOkqQGE90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvqlhytq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvqlhytq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE54C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754664593;
	bh=MBDfZjrgen/aJTxRt9+LyzNozTFd95RTt1i4gIyJVxc=;
	h=To:Subject:From:Date:From;
	b=cvqlhytqUJ/AbsxTXJMf0JKFG5T92uEvyFteh9L9nDH/+jkubIUmn/dSIx5kUDPuV
	 T4yA+k36HONMtKi6F93tmWKUkaYlk2dOi/C5eLVzjXhCS3m0MHxULTNBYap9EvVCqj
	 S7ZZyn4A/yjijLSVNauMtFbABEmJm9J0gpsb9wqSt+7oU6RQNczUqNofwH/9xGB6u3
	 2IP50Ktj9D1O2dbgaVcdsgBKBtPZkhuppXC1oJjRjbcXt+E4RPvK76P35Ssvq23iOX
	 BbQHZyaZcU3GIBx2zAbrRTs7MRCgtzYaQrpqon8HgL1gEjW85OKJ0BLm4rcsrnSIXN
	 Kp5aM5wGlCxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CDC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466459358.29434.15848840167874275063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897e61b76ec5de1c4f3af3e2ecbdd1bcb93ea490bbecc5aed9b411d6599fa640
Date: Fri, 08 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754664593
