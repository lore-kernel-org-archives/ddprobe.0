Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F35228D850
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761628194; cv=none; b=FQf3CD4HosoKXPNSii6rh+qSl1wG7MldkKyGf756AaQSw3maHXIm0lei+Hs2hUeKoiUqCNGETosRazTkARZ13xv6v1HqFfo93Q9nKPDCMD5/9wRWoObgNgBIWU5w3nmYacz3K0V25+Fp5B2M/VXFEmJyhayvIVBk+vfxroONSis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761628194; c=relaxed/simple;
	bh=S8Qx1kZ1QDfJH9vTLHF9OxVmDTH/b1FMF2QJf4UM0Xc=;
	h=To:Subject:From:Message-Id:Date; b=UWTwWmuiMbBsmn2mBYemDD3LiPdLp9cLtwKRRrC++QVWX8Siu2dyLqrKBAL4s9rpGPK5bhA8PD+cCDeY1hI+kd87TfN2UQpbDJSJhZIjhxy50Ui7fc34fFYaNJ+R+gR3/51BUaJU1768ZcHfHjZeyxNuXi2cV6qUzsKbjhvPTwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6ma6u2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6ma6u2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF90C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761628193;
	bh=S8Qx1kZ1QDfJH9vTLHF9OxVmDTH/b1FMF2QJf4UM0Xc=;
	h=To:Subject:From:Date:From;
	b=Q6ma6u2seFH2Pwr6fCTwzDAyFCOToPUmc80ZOIB4UPPNUsPOhpXTq1hwEEU9WAjN8
	 EqGJvTh7OrcFhfyOd1pC6WbxQwdb1EwpwLASG1tnzVuSMnP6dfwvSNveLPLLHSDK2x
	 sthtmllAzOs/3iiGhit5Io9+j92ExdhgP2ub79rTwuo4QXqcSVZPKOxWiJsmUQDlOB
	 DuJeHAoWv6EJSSLLzgQWOVbaMsD2OQu4wnfQZvKh5zyCZBgTzFAMJcDAd2lVyBKNik
	 okCe13Dbqr6Ek17/PgZRXNNbTkpfX4EnjAFu8zc5wnNqIv655zz6PtdkmYnoeOhA/x
	 E2jYkyVdw+rPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E8CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162819358.22735.3739853915758269339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f715a6a11a014a4009fca192a5116f7476725681dac6de9aabb1c17584871a7b
Date: Tue, 28 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761628193
