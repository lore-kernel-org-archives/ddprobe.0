Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360F918FDAF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758956995; cv=none; b=UlVZB+pMqfJNUto4UkTo6sWk86nFjGaKNNCiLXoPafSCPEjp44XinXZaFP+UaTc4+3MBMfw13o29Skva7nXZyf5PzvbS71HAFKU9pCiIVE07bb5p+TjbTmpUWEjjtnvqCK2/OZiGDCf7nazIzTWA/vdR9+Qis1fIb0SShv2oQsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758956995; c=relaxed/simple;
	bh=8A+Y7w7VxPp9OkFhRjY1HlQoy5x+urd4lbeO0u/PL80=;
	h=To:Subject:From:Message-Id:Date; b=tzO7oLDTcmqnkHGnbHDocY6EXvaFRqvICsCjPNG7a4w5XqcAfmoCNasQJrpGewgyPgCTNmzXnunYHNI2G22P5zUcse8/7IIKCciKqEId6CkUWq5HhJtOjA1liREqDUrio5dZn/bREcTJApQiFR1kx4HpKAhJE3+pvvVpmUg02GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUh9nxDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUh9nxDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6947C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758956993;
	bh=8A+Y7w7VxPp9OkFhRjY1HlQoy5x+urd4lbeO0u/PL80=;
	h=To:Subject:From:Date:From;
	b=kUh9nxDN1RN2w17FnlhEGeFBARNmx6JpURQadSILZN4b/V6kLMGLydWCVaAMzWrvq
	 0e4WlhUN4N5IYfuWPZSWBpRD1TzQT6Zl6eMqYfBNwvzOvDmETYpxhh4ZuBsSd9pZkM
	 Yt4jVmjrfVKBF/z7/s9g9EFtw56PA7sosqtaUipg4hpF7d4m/ocgRXYDq+bmHQQcXE
	 cyIoxStBZYuUwkAncamaYGHiAmrLAPs4BElvtS3Jm/ZO8IJu4vmVxRmT8B2TE7CQcc
	 blrIB8bue3DwJrSG+6rvTCI2xfS+ndgSHbPsCNeBVmMVubn9LrsbjgvqoKWTwPkWRY
	 J7LK3xT1vqU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92759CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895699358.7539.5136727713395861611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9827410ec8c1523d10ef8ac9454288b58927b7c3e60b826513dbba69a41b1333
Date: Sat, 27 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758956993
