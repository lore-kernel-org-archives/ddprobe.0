Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2641D8F77
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749416994; cv=none; b=o74U1AFX2hG8jO03BreOfiN2B4G1EICN30qO3q+wX7C/YuZGGs7BtTvDIHxcP2Ro+/fKD0sdXN/arSR0Xmq/vtQzRL426rKl7AE6bcpz2RIT/cxOihE01vqKP8KpYtxZcdy1ZD1wCnUKYnBQ1V/Cmho1/xI7v/JVlf6xFaSwtpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749416994; c=relaxed/simple;
	bh=BapTjqOpKmea7EqGHPuHW6qr40IJVKYZwKd1lo3AFvE=;
	h=To:Subject:From:Message-Id:Date; b=kpctPpkiL4Qo5XFVO5reB9hc/olQRfVZ4rX2JZl51ES2iv/Ym8r5RcSPa9LMvgXrn9iihkK7+qx6wTsvMcUjca7oUR/sJq+tKpVOsYi/CfqPmc8Lpvnoi3b7Zd2qp3MTRiSizih2RyEh6nUiYFh0bBb/Aqvs1z1tZdKSTP990EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+jMkoVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+jMkoVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CFDC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749416993;
	bh=BapTjqOpKmea7EqGHPuHW6qr40IJVKYZwKd1lo3AFvE=;
	h=To:Subject:From:Date:From;
	b=P+jMkoVWl+hlRGlcxGOHIT0PxIVr5UW6cGuMCmuL/ovTI5t+DIIXoJu5quSxdBXJT
	 365whfMVh87PMexaS2QCBEFUdVVNZeIyEiyntDaLR8KCPCHEP/hmfwjBQsNGSwTxK5
	 iCd//iCjRA8gRcSohzf0VO6DQ9stJifHpr7D4iXUYMqncmxT5D/9EfymGht8Qzqssp
	 kUFAxH7n/ywnuyLYRHJur33TlYrEDBY3/dgzC6nhWvRthF3wAHlBeSkSswYtTaFu7D
	 Gtz+JlCYsr1rgI2t+Aaa7WcGgvprR+Q/PVkNQYz6Nlm1tjUccsRkvsMtzq7UMxBrUC
	 rtAVNV5fpDd9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA58C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941699357.13972.2878640799604369446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9397538d68507bbc1f2a547fd52ebd293d187ccb96960b2e236494ec40d5712
Date: Sun, 08 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749416993
