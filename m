Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4AE2264DC
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766454234; cv=none; b=JEVCWCXns0KrUdo6TOGFDY7DDXWcy/R87lkx5ONo84kGKy7LL6lrSTXr8XbJP4A175h9r903dRkmrsFlURFPs1B1O0CemTGfcyyDWI2kzr2r6ro51E4WzW1jnjoxacSS0vCCboDRydH7RQcrUWJqpC0gf+uUolMcmldxoxBvGSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766454234; c=relaxed/simple;
	bh=HvFTQlIW6Ic84gpsufcz+dZ/WrWg27nZkEBoYL63uok=;
	h=To:Subject:From:Message-Id:Date; b=mJbVyDBTG2hH+1UybTN0Dz3V+j68aX/bM/W6VtU0dMrj1QMsMybx1zo/UPeAUxiee16NRghWPVgOPTxVPZQrmFlkpEVfziq1kOw498vcpFliIrtzzdHXLx0MTM+zaBaPzB6YihBT16CjqMVnjBd8Pq+JmDr0Gh5pNUrzEVxUcZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOcpL+z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOcpL+z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDABC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766454233;
	bh=HvFTQlIW6Ic84gpsufcz+dZ/WrWg27nZkEBoYL63uok=;
	h=To:Subject:From:Date:From;
	b=bOcpL+z6YEEGdxqN5vFCdbuEbsS/pk3vfp0H+U03QIoMe+s33M1bF1bgI/uqvpV5h
	 jLEYf1W69MV4reg5+VCu1NfFS5NiY5zBNRmCLyBZWvc4dQTb3aEsnyu+E4YNUm58mk
	 VIDm6N/TQBebonYJPqlHRv/F4qWjwcqwqZoSrQGoUXdsny829yBxUqUopZIr7Ob67c
	 a+G50LI1g8LBT3cZZhY29OC2ISrXWjSOla5y1Ccqy2dqRN0n5lq+rX+lJxSBRRHUr7
	 65M8MloxU82fzmtZgdk4Ti5yP5zEnad1EpaDHiNGiMeGPSDFLjeqM2MBm3zxWg3PTI
	 N2YhHsHZ4cBLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91380E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645423358.30519.15661098747760526367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3f9584246a0d6c771b665662a78d6eeae37059030c91943db053041af48484
Date: Tue, 23 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766454233
