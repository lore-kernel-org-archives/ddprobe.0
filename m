Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE77CA52
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781502394; cv=none; b=KbPUsS4MOkrkoRJdZVUoLdHDOGkMAkzLKoO+NKVA11nXxeMj/4hhccp1l8EwwYlMC3k4MNGGiWD5hGwE9vy3mfnJW7Aq0hEcQl4kYLhE5KwBQ3zj7RD7levo9pNQWnWQ+c7UKGsiMqxXltaAzGrmUjFGoknBwXDRtXPFB6/xcgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781502394; c=relaxed/simple;
	bh=srIPY7lEMjscNhamiTBasnd/JThW7hYHXt/sWMAwYHM=;
	h=To:Subject:From:Message-Id:Date; b=FqyJAD4bd9PSFFgUj79ph6FMYTQ2TMA/EA7cqujqZLb/Aw5lduRhSlzEWgDfDWrrpEqBVgFzr09jSNGbOao3snoFYPU3/EvqBgO/VYg/q4v742AfH2LmAKc/M1ap5E9vNIlBEoxteMISqUYZAemaua9Nxr+gDVhgy29yYwjQtZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyuaes1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyuaes1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F01C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781502393;
	bh=srIPY7lEMjscNhamiTBasnd/JThW7hYHXt/sWMAwYHM=;
	h=To:Subject:From:Date:From;
	b=kyuaes1i0+atZejUV6BRhBPpcQymbzeQR+FiAVOih89KWkz6rGyh2tXq85G2md8Xo
	 +7eD/z1vDf1Ux9UK/VBS8d2eFTbY7hfBvJTCC+Q51yY0RhYKNvSgV7XL8krSOc8jzD
	 HqG6oMtSZbHktk0hh6i6p5Aznfb6+a5xJK6jBn7qbQWgYRGn94E8FWucssQsKqEtNx
	 KLxLGFlukdVs+cLIJ6+bQWpQgiYqkL6bZgoCz0TUc6UMB1A+/hM0TBaHVvnZZATWYY
	 3N1DsKj6jqLWjMj5HJtviS9IaydocfXBseRoZCLXcDA6a5jETW0pVsrMAqEBX0P2it
	 TzjIBK2wmh+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6DDCD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150239369.14860.15668577231185951213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1697291df2e11fb1650f46970e75394632d7b12f909362796aad84439f31b7a2
Date: Mon, 15 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781502393
