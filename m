Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270FB315D55
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763363514; cv=none; b=lYCPTVJN3SLRoCeTDL2NRr5rVRZGDH0D2RJW5wCtlA+i5Qk4KhTi5xCaSQsoq+A8XOk/hADGvfHAFD2yncMXUksRnywCVdKtiEY4y/b1w9KzSPcaAC54gtTgPb0iDvudxi+OY4rYa//ZOFlWTj6hJT65Zfpv51gu0RJy/G4es48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763363514; c=relaxed/simple;
	bh=XRkk7EWuL3Ant7skoMWRDCTMR0RlEhGIcukTDp5FwUg=;
	h=To:Subject:From:Message-Id:Date; b=N2gOJAL0wbBiKLzUST811mqDDLR7XBbG0fmKmef87xZHiAmc19dLTE80lPIUP6M+J6Jsc50Y5fIVrse6jdj4oWB2bR4+O+p7GmJBdF14QUyddDR4KON5FCLPIe9IaAsg6/VWEJjHwqceRWcwHPWNgsKSXc3LtVboXcZcFgrmc30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTVOA1SI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTVOA1SI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6244C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763363513;
	bh=XRkk7EWuL3Ant7skoMWRDCTMR0RlEhGIcukTDp5FwUg=;
	h=To:Subject:From:Date:From;
	b=QTVOA1SIPuzducqn9AqkV9baPTRSJ9aV1qPEpwPvvBfCnwnGudZWDykQtwS6PeGys
	 PTlM2dC4WqbwMFtIwF1ecV3Zfe61d97qUM/5N90V2r23zTE/40bPufDVu/PD9SaRRr
	 rsHrK3z5xVAUk/wfH7MKyb6UlFrwtlTeBcOpmbDWYJ/0pjWoG/Fnhl+my0Qt0b7Z0K
	 dHX3AaQe3TxMjah93RVwKzK+Cl2XI0hGGbS6CX1Zhuu0kJGYdq1pGQpv8jFYucGn6+
	 tDSWRp65SytHmy1GJ7p9JjITmfx8pcO3l2FkySFEtclMrYLqj6XDsVVPY3cVPcwdAO
	 mPB4B8EMV3kqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9754BCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336351361.26772.3056759901625285049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d165e9bebf222870461ccd0a6552029aa694e0cdc873bedc9a11fac1518b269
Date: Mon, 17 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763363513
