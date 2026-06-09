Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA1B364E9E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780980274; cv=none; b=UhNO5pNEyX/9GlMgTvNzyXnXejbCvGRpL3M9Xjr9O+0kBIq0sC88b8bHnbSLy4a0i/vt+XIclMnwY18SQ3x67iyPiheZYk2MSgAVRiiW6GzPmOWNViF4IxKoqq5xRXq777G++J6MLibS38ZjehPxUXwbidMmCFWptOBX9tRCSdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780980274; c=relaxed/simple;
	bh=KMalvgKd7v6QmOTLY05K4LrdcrRXyFmKtIKSlIal1FE=;
	h=To:Subject:From:Message-Id:Date; b=fhnpiuPRcSGJDRZelU5+yvq+/zc3jVHT4gxTIQUrkNU+0c7CS3PbLG+rvSOdRue0V5gw3dacF6Q8iGLdJnyxhwv7E63mA1iUVCjSuqTayjQWeGZsFfBlJpxymIHJ/QpgCd3BTYDXadD4C7WItdbpvx/q14OVfuNzFXBQmFeR03s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQGA+FSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQGA+FSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D617BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780980273;
	bh=KMalvgKd7v6QmOTLY05K4LrdcrRXyFmKtIKSlIal1FE=;
	h=To:Subject:From:Date:From;
	b=nQGA+FSQi4vZN0B9NTwGkvHgUCJUZf+BMH4Ub9Ib1ZdtOfUFAwLfgyrjKGSH5aKx9
	 jqBm5/byrtFtNhAhXE9PMOtw8FAyG0oizo/PfI3g2WRMPH6TbEEvV9DGpyQd+CrbE8
	 GzJpsBtkeMy2E8MtjRfNzj/Dl697Jcs/iB1PPxJiQrU5cATolHCwYqFjXW5AMuiQgy
	 HMkpH3YPkOpNU4xTCoSgIqn4GxO5bsnXyqIXGvC7a9Xbr+xAKe3thq+mvaDwql4EWZ
	 4GIAY/AYlJlvmvUKX+TuIdtpHXIEa70mpHDseGqFX429zElwGJWAcUnR9avw5NIT3+
	 kSRN/rzyYcjzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34DECD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098027370.1496.15168166977455170188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9532dcbb71d26b5358d0d36640cb04b307be15eb2e6eaec7143c3fa49967771e
Date: Tue, 09 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780980273
