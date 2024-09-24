Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F1584037
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727163354; cv=none; b=H34ftYj8PQcAasOJ/BuvgcmPhw99QqIBNO7YgMWFSBswN1Mun0zptjlUT2lkwGok7BxvmzZFNdBEUYRgo2kn/LQiCfaIpwPFasNquUDNS/BTH/wIYRLLmfplOxG1KDpQafwdPm/+M7OmbYY3rF0eneCFIWaCMtghwBAOTxmegHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727163354; c=relaxed/simple;
	bh=0ABnFZ7dCuT8AvJ5QPCICkPI+Uz3ybK4dAELi2+FyOI=;
	h=To:Subject:From:Message-Id:Date; b=G12vmJoMGxIH+u0HlKUaTKFUQ31jGwQOPsbXAcW/3gUGSHtfscRSqi99l0vfUnPb3Yl3Rmd0ou9E3XZXZ0GjqEHz/cg4Gkm0vSnAASj3RDhptFLsDU1mhwrdYbyz8v3QnPa+MBRPod2pr2essga41mHMa3mqmmwiPFenk8v0Ab0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISWf9mMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISWf9mMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2783C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727163353;
	bh=0ABnFZ7dCuT8AvJ5QPCICkPI+Uz3ybK4dAELi2+FyOI=;
	h=To:Subject:From:Date:From;
	b=ISWf9mMxSDnpaGT7ZbZcyJY+9tdbUEB69fceYdce6UaLDKaC6ZZNtQirOlvMplCZM
	 xyg/Hbv1gwru3PIK3MrOz6tWh4MbuPgWjlSMGnVLrHBvSshlANraKLN9ikELOANLx+
	 +oyvxDP5rgq4SbMOWOP/Cttgj7xEkGr1LP/vF8mhgnXDSgXDk4hOSYzaQRMGqgFRuY
	 rgRy3W8omoInaayVLLqqWQrTQC1947J1fD3EcgOLsK+n+JxVKktlI9pz3LKip1wd1h
	 /0rHeIv5fBk8b69PYJdnJZW0n+rGXSJxNezM6gNBfWD/VMrBZ6L2na/b4h7OTsHO98
	 FaQWUInNEj16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFACF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716335358.24609.17662515107612420458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c6fd927daef18fb3c40d7bc0d2d1009e42007af2ebc2e7a2c3ce96f749cb38
Date: Tue, 24 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727163353
