Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A68274B23
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780782874; cv=none; b=TpW776JTerv0KquO7NT/pK5KfJ6PO4YB3RptWS645IQUyYRr/NS7XjhhpZgxxMR8X0nuxSYGuFtMthvg7DBl1YJvU2WwbTpnsZDbFKCJVHBG4ECakvGgSRw7m9XIUuoe7NiQt6Yit2DmNsfGIRG+sPUZxI8+1rU2Y/+lTIWEbC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780782874; c=relaxed/simple;
	bh=QfWa1aaTZOTLIIE6NeXI7D8/OWxTLpcoYPyKvu0BCxw=;
	h=To:Subject:From:Message-Id:Date; b=iZdQi86H0kjf/94xYqOcguM6J7r6GyAriljPm91If4cTuSpF/pB5TQI2xqkrvjHNh7wk3WZMR4sC9EdPi3fS3QtdvLqaUxwEi9InoLWDr0zuUVlOoL2r0h7WZSAfKp7S20wfXlQ1NBohxqhA/p+JKWGAnN+kc4Hz5QuMnMg7eZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4Itd0qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4Itd0qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780782873;
	bh=QfWa1aaTZOTLIIE6NeXI7D8/OWxTLpcoYPyKvu0BCxw=;
	h=To:Subject:From:Date:From;
	b=q4Itd0qbN70jIBoOsV7m+w/oulckmOX0xnBWFMnnihMRx/r0Z7in4UnUAAul1MqFc
	 JxmnWmElb+7zoQMtsULn5UnN272lspkLO1JT4DQbRyOkLf0RHkjDGmL5Ac9Q3C/44U
	 E9WCiwVh4Rfdl26MorhFUJ9os573QEPQNplvTSepHGlC15pRvUvGOaAL+VaR68kdQs
	 /zqfJN/jJWUwua9UTL1vfPfLADX+kYNjMmYinPWc/ZuJTjWFO4C46pm6iI/O6mYbeH
	 v6fBVf2w6ZlOYNArlQf0NUSkQDT3NUQoHJIJdGtSdM5demHgpwMlOYQ+aPU/MS/JNd
	 9NKGOTMdbL4vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0964CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078287368.27202.3927926755124293680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb233bf77e7ecc7a82898d0cc824c54f74959c3343392848fc200eaf8400f7d
Date: Sat, 06 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780782873
