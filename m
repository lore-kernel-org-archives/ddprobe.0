Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC76748E
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714358543; cv=none; b=Z/Qhqi44PuHouPXfBL1pDxV1LmztTxut4VG7RV9XFgxHRDHacGlZ/5kI5dzi4ty2ERWqrJsfoMy33jpbxAfH/+LUEjd7IQBtsU6MqJDb3DEaIkl8403SGyJa4kDc6OpDRCt9Z/2uikJIrWTSsoKeaZAu/IAPWlLqdr+jAfZ5HC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714358543; c=relaxed/simple;
	bh=i6p8gMFfL0vT/Z1vh2N3+U5c/bQiqITVMp7dHpzMXKA=;
	h=To:Subject:From:Message-Id:Date; b=URqzMLnb3IfKZD8WhHD0bnMeiDRenuEK56oFGybOjXy47X0UGpe/d+PoCePFonl1xuAxX3u7e7cNPQCk6lacKPCr0CExnH4gvH8Unn7xNtypNTyDosrGssSkar3VRy+Fq3tHMdWNflrlGn64mFnW8wLS8bbThXwIolkMQ00hFsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adznWFhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adznWFhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D402FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714358542;
	bh=i6p8gMFfL0vT/Z1vh2N3+U5c/bQiqITVMp7dHpzMXKA=;
	h=To:Subject:From:Date:From;
	b=adznWFhsUX5qqmp1aEOxVY2wAQrLgpDLBecJGUWecCYTF0KipoaBQ5gagRLxcstlf
	 Ei8sN4Ioh/UGbVdKaaR3WN8MJSK6NdX2L4h+K5mDIvPpHLZR+zFHdWIj6Iy/6FNduk
	 KGOpTXqloQKcq88eE/Xnc/nuW7ZRLOo12UJNsq7iAdfyaSO+kk5pCdvxjaylhPPTMs
	 PrFfgTBTp/1cv5NPikoIKwqk2DGdPEmklgi7X82CLjdhlqjMVMHOsLZpolFMYqPKXG
	 Q/x0jfYUcwlJlM8taU99oofEiBUu4QmSpWwwrPgpnfmfp5sojYi0Y3iDQgEfRYgZCx
	 aHauMMSe/wZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C059DC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435854275.16179.14215225545247009009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8870a5db42add756c1cda31175f21180b808844a5a1f9907b51d320c4a2d94c1
Date: Mon, 29 Apr 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714358542
