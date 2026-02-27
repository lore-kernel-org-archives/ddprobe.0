Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA0547A0BC
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772229894; cv=none; b=Kf+M6/vqTha7u151exq0dV7totZ1Nai1vzs+4uiI8yK2cjwilx46IeZwyR1ajQ3JYy+UMb+Tl2C5xRcCaANt+76EuiA+Z5rj3lqtA2FYnwn2ZP5rBJarzvlp6KSxp3FQMP5pOfRgla6j9fOAfm0pGmEbf8ycaQQMk2cUnJy4J9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772229894; c=relaxed/simple;
	bh=LG4KNczaDoaG0x5xthq6iTNO1q9KTyGV5dez4fT8w5o=;
	h=To:Subject:From:Message-Id:Date; b=DBmUIaF7ANjUkaUVUtMBnik+/WK6Ya5hCx8vMyxaPop5EFqL/QuZ/SFxBAi+xjkjV+FSxj3RepFaApqL6e6SfkCtgejKaXxIqhbzOj43ZuKBuEweODIZbcoN8H+/uSNULtJh+4QSWG1JPCCMAB57OijVC8OQgl2MhiTkIsIWZC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4KBKAKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4KBKAKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C3C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772229893;
	bh=LG4KNczaDoaG0x5xthq6iTNO1q9KTyGV5dez4fT8w5o=;
	h=To:Subject:From:Date:From;
	b=p4KBKAKlvE4BLfjpJTNg88g5q57RNf+24rKWS2MEzO4Wsaq1f2Emp7Tyer/N8wMcj
	 LP2foHBWKtemKX2IELBkXcBtsAL0pjeyrSO1U3Sdi5Qo9mrDz4aSRdXO7ixzLiJZMr
	 J9GvqIC5UrlETbunpIqaZarXiWb5ftM8d2hvjc7DAas4XkDRAYdWUpms30zaCknsn6
	 MzTkswpFTNhBbf4Nk3TWuEh2Ya/QbReMjWXEIedCS44HwsWb1IxAuOBnozRqEwJh1M
	 4kxMSO5hpsiMggyR/s+DbgzQJbER8bmVv7zGM8SctcEB10z/vyBzCaTAn3U9ZD5D+S
	 96WJ1NSxW8zhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F314104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222989357.31969.11768869198224329767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a29a102bf231489bc2ca61e2213d7074f8ca87efa32acd720ff4055fd57276
Date: Fri, 27 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772229893
