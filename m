Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB3D233D9C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753423194; cv=none; b=qxTrnED8DN35OUhpqI80/N9Huw7A5JXAF9ZryaWQXHPVC1gr0hmNn/3pzacTdDeM+cW7vSkmN4JOgQ7fSXGl5E4zdloAG0QdohYBccbVatT9pvIq4Yqf2tkiZd7572lGKGQrfsLhH/lmJO+SGHc52PMdsckFpRDccd+c7AO8HYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753423194; c=relaxed/simple;
	bh=xc5pRLntNDqhWBee/ojwD39uSBG6tSyXvuE7/qxnoTA=;
	h=To:Subject:From:Message-Id:Date; b=BD0aHNa1KRvcmgX5+ohnEWx3Dp7A4q0RvP1zjybxEJ1sJMuFy63+maX9ChpLF8bjyr57Cy8PFyT4xsyZwDVvpk9mh6nhOgMhkT+gQCoe1Tlf/gRhI+lUFmtNHcfvSr1zVRKRnemDwulSLM0Fh/0CnYIcvznq2rvfKs8EAlQqVSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5IW/m/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5IW/m/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753423193;
	bh=xc5pRLntNDqhWBee/ojwD39uSBG6tSyXvuE7/qxnoTA=;
	h=To:Subject:From:Date:From;
	b=W5IW/m/OVdE4maTkr8kZ/nYAc7VIUyxQiDGRIfw+qtq1NTyI3rTiBRx7yP8h1FUY6
	 y+/7gBTzjKkoor2Pn6ZuBsxjRXhdV976L12AsHQMc/LP0Vgac83Tcyt9NC7mbuexQ2
	 tuEkWH+IrXZIjA/mSTxJy2MOpOgDtpRFPwsp0CvNmH/lvupWotmQpAHPJCvJ8U0I/N
	 Rq4m31Oq6EiTY9yLehzhMRq5QRPxjQprmpnav+4EImvKhAQDaxwXhm/vYsp62QZfKH
	 oU+wBnA65qzEZNSPe7loDiptn4G99lTWxUrOhugiwd+GPNTcYTkM/3W8RFU7LqtPlz
	 rJyC4bcCi2Kkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48FC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342319358.3071.14738701425125059423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f9d033d39654237e65e1bf3588a697f7b2be914eb19adac6d4446d8c77e01d
Date: Fri, 25 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753423193
