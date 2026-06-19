Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCCD3BFAEE
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781891194; cv=none; b=c6N1us5A11GMGg+kZ69VUz6DTeDlvzXerGPKiVg92K4HiZeDwQuR7WaCkZF3o8UaDK0IoOsihhW6qHId3fgoyc9I2vbL5dHaEaitUXG8eDUydRP383JqfagffME0eM7wZNDKXEljPm6+S+YDFJJ1RvU2MvbdAYXKmBZNufnMBQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781891194; c=relaxed/simple;
	bh=0kFVQaLtX/tf2aOSvdROT/Y6wn7BzD6lM+B22cLpQT8=;
	h=To:Subject:From:Message-Id:Date; b=OHSWx26vuF7v3aLG4Q6wh02jEubzsw+gRejlB0p8h0hToqfDSfjZi3imUg526uwz5UBGYU00HN2pBfdIzN5/LPIlsumu1Gtux4BEt/8yiKhoAIknTzeN4NKDSjMoEHpFIZT7VbfR06zQOrNrN+eSovu+DKV9yIuIVCFL/h0Dpag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rps9jngi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rps9jngi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A1DC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781891193;
	bh=0kFVQaLtX/tf2aOSvdROT/Y6wn7BzD6lM+B22cLpQT8=;
	h=To:Subject:From:Date:From;
	b=rps9jngiEMtVaC0o8ER3Xg46xJwZAVulyEtraC701CFQBwxUBL+C9/paTwcmE3PTA
	 cLHgiqXOwq44i2XXzaZa4MYBuk2CQS01rifceGikm3GMKG0R+EAx5IYliGFcuKoExS
	 hlyLx2oYhL7M5DhpupzDcABZXcPKJIRbmtk8z6AQjDgu9gfP/fxTUfrq+EqNj1iazM
	 j4kNC6rNqM4SGmBzaeIAJmgCVyLgOo0IgqL/HAAE46vvEcmkvv72sqKrQtkXjxyvtQ
	 aqsgLmKWSRhbngcrHOdNDblocbk9Iv3dpt608wD5XmnnGn9bcR6mfYehCwHO90EpXX
	 5ZQ8GDeICkF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC057CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189119369.1499.9499485541682230470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20eef6aa420b6a475bf07e9d40ae09a5c5d7a6fa11b83323eaea93e667b0bcc6
Date: Fri, 19 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781891193
