Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0692A1CF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759619395; cv=none; b=glXE7a4rkGn0yXMv7fxE2Y2EUSVB5wAKA8PCPeUpSWSU6nC/hzXpn/kN0382lisyXJqEno9wtaQQR8EJOBJYYf4UOOf+gyUkWOSnfUGlAxSbPPnaX0AvSlWzP7vejkurCr6PyEjVQoVuqKbpgSZLZ0U8xRxWI6giYyZJtv95GMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759619395; c=relaxed/simple;
	bh=uKhBjUO29KQMGzd1JYXDBoPEYblEAiYx3N+l//5ZkA4=;
	h=To:Subject:From:Message-Id:Date; b=Uh6SDHY79ofeZBltgzRFcU07iIDln6MYcGFMaKQTmlYVdGDjtxkvaTVRmBrl4Zq9aBkrdEA0yYCYtwPxGhRmPzJmbNmfTI1jYPnB3M1E1+rnLqxQCWEfhArVFWB2ADAWSMpqRyZN1Wk7W77awrIjRdWZu/fGlOKLctilkmrLkyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JF/3fONU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JF/3fONU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C35C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759619393;
	bh=uKhBjUO29KQMGzd1JYXDBoPEYblEAiYx3N+l//5ZkA4=;
	h=To:Subject:From:Date:From;
	b=JF/3fONUNdooctkEfKABY6J8XWP8wyHs7QuaLMXh+eIy5wUTiChmU9GEiBC5PJ4hR
	 E+Q612y2mDqVbnx/3G5NrB1FIgsvItuYDWcdjM1loKefZBeFcJTcodwn2/yIiP9Ulh
	 4rKFXVyMPkpu0ABp9vwTqdtCBH5JCSZMwP/kVOMPtxzagdvWdQrFJllchgRUWGxser
	 NfGFtU0n2r34brUuUwQjlFiqLf07yuu/M6nYLcGsCl3a2y6SD6cdMH4WaTggXdrULT
	 +8UvFfMX3DHtNFPFQpp+KjSIAeA4Vm7uu9ZsqXah4Pk0xvKoAHLLOqd758r0h5g7Kw
	 OCqS1JPyGc80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922ECCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961939357.27008.5635042701180897121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106e952b07adb5cd418343d9803057ad2f0ebbf1ba1f4686d7539a6185d09303
Date: Sat, 04 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759619393
