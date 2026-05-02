Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F462D7DEF
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777753054; cv=none; b=mknD9MjX7XTLO6Od16w92rbRbHykGzUVYcT1uQBBg8P83pYzh6Vp+nf5oy0a12X6dmWiBbJ1uZIYqR/GP0aZbzQd4+Z5iV34QP5uelzRnhbKGKHq5X9MYYCt0FVYjmn0kmiHSGdhfFL+LCU7QrGf2g+4+6uCKrZOxHa4npm6sG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777753054; c=relaxed/simple;
	bh=VRmREGLuIV9AaYglthLsqx8taTtQll/AtH2uUGSezQU=;
	h=To:Subject:From:Message-Id:Date; b=urt4QtjnSmv/TRvmj0msHwazOlc25Qp+mjnS1P813TSi3hgyKBgcCWtj375D56PYRMQeZA1WRERSAV9VfGK3L0Wa2iZcxQ/ZS3RgnsC/3hfwZIlHSrPrF1amfwwa2YIy/qrh/iO5k73i2+orgXgzRY1vhC7MrKjU+OAg+vhaUEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3HC8uGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3HC8uGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF3CC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777753053;
	bh=VRmREGLuIV9AaYglthLsqx8taTtQll/AtH2uUGSezQU=;
	h=To:Subject:From:Date:From;
	b=k3HC8uGLHBOtqePsZG1mOThsZRoLTy5mY57UDBHCJ9bSnBCT41WXfwlYzEuetqS/X
	 fMOD5lXjybPiQYvSEtIN/tSI2by7qmECHXY7mjhfV12NMkhjhyD4j5+E1EyRsI2+Jz
	 oS0oUJBPWMGBQ7pWRyyZOFJvt6s0Eo82FbwYjF/BN2fZib9fxZGFVm4KaycDiIEWJO
	 D3nOgRmmh8fiL1Ghod3rMikzrIWxZg/DvIazava8wc868mJ2uzzNthr316HDBGdzGM
	 0UF5g/Sp3uh0jBeYNUohWX7Ou+TIBO0DUKhOjLriGuYNo2CWf4EAuouzT3Ag1foB1W
	 bWL90yrvOD/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF42DCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775305368.6211.4683269722006659801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6516846c985bd6ee4fc2763cb2a389dd3db9382d7342d6b682b825eeef446055
Date: Sat, 02 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777753053
