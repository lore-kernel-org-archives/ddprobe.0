Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0933634B68C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769796234; cv=none; b=NethJWu4h8twrEJLaW1JBZycTHOpl9afFZdL5F9ZacBw2HDnTK+OTyNrqhJbedEGGsP5ep6LDuf4Xf188n3RXLQRqooGcYJ+5TfO+C5iZePMLYU5DuyNDgcsemtCFFIjn278yy90mvRioV27vxz1xOqDlqD5LrCrVWIpPVHILP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769796234; c=relaxed/simple;
	bh=yAgSIsqxQPWMedE/ubDoYLD/Cbsmsm3Cf8sWXBD4kXg=;
	h=To:Subject:From:Message-Id:Date; b=EyodknV/THHgI7jGzxCJWpv1VC7BfRK7KIHcuToWr/KuzdUh0zp/hpiKaArvk2agX1JhJi8BiCAe/D2MulxrOxAS5bvpKDw9FG2A+cJPl0opQlXsf4aRU/Xu+KUbD6vCJ5W9WFl9SL8oecIeIOQBqN/mpWmRVxQq8bF5gwL72x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5MURY2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5MURY2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9105C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769796233;
	bh=yAgSIsqxQPWMedE/ubDoYLD/Cbsmsm3Cf8sWXBD4kXg=;
	h=To:Subject:From:Date:From;
	b=P5MURY2fnSYnUnHuRPz2MQu3T6HiFYEoQ+0KRpwqkPwmp1wP9exRGLSy9i3lqQtbR
	 CgekGRAqF7J6Cxo65G/L/AuDURAlau9kpzIv1hychrNare8GOSPDWXfgRMPZmzK3Ku
	 CqXQ/djwg4xR2ppPpqlDKZQh7+DsMnK/Z9ncmSNCiWWP0otLhMEFLrVJzB+R/wnGre
	 ponCROZKz8r2tKhLCj13rznBVzLexNxo2p5h8Yev8JAkuSGd0MojuXChCPmuSnr2v9
	 nZTrKWZUflWrWUownOw6hPgWP3REwdaERJdE/v5jyZhpOrZl/VzHn7tZPfhnsmUELL
	 nssv3Kud3andQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95417E6BF2F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979623359.12453.10805001824402259351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e10bc3c7203211c6068d96a15b2f32ee3cd8feb1cf32fbd03eabd961cff16d
Date: Fri, 30 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769796233
