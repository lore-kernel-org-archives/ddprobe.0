Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B4443D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724648754; cv=none; b=FwKwrrsNdkpwdH0j6QixkdogPqGnXsr7rvk3COw8ZG9peQM2L2yb28LobrKyUAScbj6aG4D7FHDc2LoRhe2Ut3nQBxz5V0Vy2sFcgEtNgtZoh/TWBIGAwSC3wNXL1hw0/eAbg2P0LqVUmulTDS3DvGd+zSRh8rrP19Nj9n2fJpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724648754; c=relaxed/simple;
	bh=ffDPtpORdT6iW+djBVy1EMexjBRl+2O/eGmVdw6UghE=;
	h=To:Subject:From:Message-Id:Date; b=Mv7sT+tf/jsLFqgNZGloHr8DnAgw12g4Cz++T9we/xxPZeWLxd6uPW2Ky0D///Ku/6sbPNEI3lFp4JNAYwdO+ggHbtddoQVg989hN1jcR5kCeMf/W5hLRn+KwHJnuhHSEnV18w8Sky1kQCLIPeph8lJyK2GAqdbNsqdc/C7M3Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWLseB1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWLseB1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCCC4DE00
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724648753;
	bh=ffDPtpORdT6iW+djBVy1EMexjBRl+2O/eGmVdw6UghE=;
	h=To:Subject:From:Date:From;
	b=GWLseB1rpXQdaHfzC6pgaUwmFB8H/snrcZcj8W9uA32zcJy/3/JrkxV4ied1NY044
	 BEuOlzEkstZGmzluIN6lNCOcbCLsEqdMKF2ut9H1cHkjm91a0kJAOnA7fttGFpAUZR
	 jpS3wwusOWWmsiVJxUkD+DdbfvbP97qrex5J1VA6JZjOzp1NND6JsTQc6KcwRO62PK
	 tMrAqg0lFxOTMbVv0dUt8vTGSzyTZDjwTnBcuCcu8OojrTVMdSMOuC0xODWTYX1s3R
	 YUnUoYXQ9VSe1TTP5lWrqMMv/i5rh1D13a6NIovaA7WMBVVPwBxDoqLuC05ygCVzFP
	 ZyLPf7pj2XkCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382BC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464875359.1630.17461846110631876659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0000b724c51a4c4576d1c009af725d12ae9062685b1c1369f51deb95a17cfc3
Date: Mon, 26 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724648753
