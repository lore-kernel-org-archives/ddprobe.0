Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649CC8D7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721595354; cv=none; b=tPkatlF7J+pSUnn/GEerQ4XWcNqHYpsNg2CAf6IlIM3A5EdU4DtelkC4lqSdw/PLwPYCOQnGug5aJ9o5Yf8Ymd9C7kV0FC1ruv9oY4e+4nAVZ0j04uBrbaDjEY8vSwuQdwVGrQTYP1CCfuT21kb2qM4XdeE7aLYglm24PB8b3DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721595354; c=relaxed/simple;
	bh=jS5PUoSoYmxPQcjAIcZxkyx4gJTKt0l8NyNoUnE8j3Y=;
	h=To:Subject:From:Message-Id:Date; b=H4l38+2dOrtwOp/3P6BUxoqsjpsbXTg0JfeT/GxE/wCpR3p+trbKfvBTxjofyLZXHUgdagUtksBKfJsz6Ycm8pRnXRCGS6LVUrio4MPRU+kwyw1kTPccgQPxJSveE6ZXGVCFQnSUprkItDGWRF+hLuHE7+VqpKcZlOk5w/mf16s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvWTmr0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvWTmr0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADACEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721595353;
	bh=jS5PUoSoYmxPQcjAIcZxkyx4gJTKt0l8NyNoUnE8j3Y=;
	h=To:Subject:From:Date:From;
	b=SvWTmr0XwImPhS4LzAihFxIiLYwEi8uMwRVYdLdWPMBkXDDKJDmFIo66Xk+TBiZHA
	 P6JpI4SMsvyoLKMUzzyuXnhhW3BraFi1lQRULEPtxBgiaeViQEZfBGTzgqFsNdeJbE
	 KJjPHGm2umHDRs8f1FZA1gu36w30Ew3I2m/yAVTAkAGmcga7LQkUmI6akJ0BVTcDad
	 qLGNFJlpePROHvdSDTpPcl8OG+QqQdZUDmy1de1VUyFuP5igiTN5Lgc4lcCAsi2Yj1
	 JMpU2xV4onCRFDNOOhb0VzTSP6cJ8lBMHh3BhRTMkMYutmKPIHOGT/KiUNYH7sd3Lu
	 a0qehVrLTKD/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F47C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172159535358.25925.13546717833337055850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136fcd7a00954c3a4b93a573a190edcde534675f432a1945f28103cf6fd5c7d1
Date: Sun, 21 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721595353
