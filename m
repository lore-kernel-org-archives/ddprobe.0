Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206F130C359
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755779394; cv=none; b=GFq7MSY6Mj3RmFLD37vpwJL3s9zE11LAKh6B5IZ1264R7cocIVTLSEUzBreUOPBlpz3QXE4038vChhdTjWbt8Wdq5nOsXeuD83t/BmAYBitVsX1JDxG1JitNPJE5Xo0Vf6cY7kBIRkDWkvqBp/hoqbp+MnZWXVA15hgegS1Rc6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755779394; c=relaxed/simple;
	bh=WR5yN2a2elxNI7X8VQCUpUC5dV8d30GIeDX0WHJSHaY=;
	h=To:Subject:From:Message-Id:Date; b=FCsyQSlvfdRH5dLSJQnPpi5aZYNG1GPecZXUTuvS5rz0m5Rqv6Xg9QvDlJkOUqmzr61ir5dilF7hN/3pPB3pQmBvA2NSNN+RfqLpTPfZUh0PK98k0xBa74n/eHqcupDZutjerDcRjKH/p/TVX1dYDzP681NaOldSkN7Wc1SOp6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQDHUbde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQDHUbde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0783C116D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755779393;
	bh=WR5yN2a2elxNI7X8VQCUpUC5dV8d30GIeDX0WHJSHaY=;
	h=To:Subject:From:Date:From;
	b=LQDHUbde8DVvSiBJamxup1+UmQtpmEcZ+8tpcLv/32hMgICcfW5TO2nSoyLXj/TBL
	 V4g4j/fXx1q3EN+dAXo+VX0xmPgElyC7Gmlb0VORbomrZ43QH87QCw0MT2vlyKYm+u
	 Mt5HjP2Y8VbruJA/IPtwAFPlx3f/opVsjxmD0ZUzhFiAIWtPmSTseuQZbemiM+Neif
	 RXtM2wxmmY+Azv+3BX+y0U722Wehr9lS2UzxsWM8XYjBlcs+7SkMH6U3B1zfW92kTJ
	 8CXjrdf/TR2Kr7kiAr4Pz+r1fUyH3+Ff2IEhU52o1nKdBvTxssAm2SVHM9D6lrmJDW
	 yZcNVSCuS7E1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E37CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577939357.28566.11690553593797335759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a130c947b4fc779570611b08485bf686f7505ff2a9aadeffe2047dd5b6b96289
Date: Thu, 21 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755779393
