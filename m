Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374022913
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721517954; cv=none; b=KSapRtRoNVTaray71EV1IOyTHDz99XkEFRe5oB1Br9iPWJEBme24El5GIIWEVnCAoGHhbLnMlfBCOsIKYrpzdtqQ1wTcebHI0fSl3vlVcLVdSeM8D6ICC8HRS/FP6JxI0oOzcIANILgg9klK1A00QqMBZC5USUjEg2y4SJXSPeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721517954; c=relaxed/simple;
	bh=M0yA+rputbBskH4Zdyju5ylUmWxiwEx5hXnod+ioOFk=;
	h=To:Subject:From:Message-Id:Date; b=eoOvxH3JoGfiluId5cIBXMNhrkmsf+NBec7BEtMQTvGLcd2kvSLzj0aPBJcFNrXCyYEYQbUAULdPfwMTEAJWnJqMfJ6h7RjjzNMeaOpHx9Ql9QxvR3vNFtmEPow3ItyqdeqeWyI/fYUAFIpcWlzLcPyiMA98TUWPkJ7BHewCaB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxImx+gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxImx+gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721517953;
	bh=M0yA+rputbBskH4Zdyju5ylUmWxiwEx5hXnod+ioOFk=;
	h=To:Subject:From:Date:From;
	b=cxImx+gYBrOW2unGEl1ebb3BFvKebnIEckPm6rnnp5JdcHztMx/MDK4iIRw1bV2HI
	 3ZALVewVxBqH8Xjs1BMHCKWrmH2Jz1e/bzBr47+UMTWlERfkToKb5tyqi1xAzxJdVG
	 OvPch3Od4s29BJBjZKl1Ic36qWejdOidyfDDLP33fHSRcJeC+VSbgLrFyrSR2zvAY/
	 7Zq83oD1YvmfGEEd1+MAPZVXMfs3e4EHqMeewohrM5+1uS07Q6Q5wa38q/m8Agizt5
	 U9wccuAdO4ODmD8S30HaR4vz5bUJN8ucfG3Vfngxsa6RFctybaaqz9D56/wgr6j4f6
	 XnU6Gct8hZDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE3CC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151795361.32158.3973590347443795818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f2995f3bf1e07df31b3b6e0a8016033c38778297b93498c80b480b29840186
Date: Sat, 20 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721517953
