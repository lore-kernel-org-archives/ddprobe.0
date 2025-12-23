Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8EC318151
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766504034; cv=none; b=AEi2gY1wekHw/7gAsYoPzK7DdPjeO0z/KRQx2mTm7bpHwZhdMrR4bNIUgkVladf3v3FZqaLDH915tEIazhihnQ8oykd7JkLbfRRKTecbJeQZ6H5Bq7sxAfpLWvFsKOXpw9mVCGUZhMigOT3xtvOCB5FpylcQSax/11f7xWLjeF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766504034; c=relaxed/simple;
	bh=QNDIyI7/Ok2lkcyS1N3mgeeM14XOmbrTlc+eSJthYYM=;
	h=To:Subject:From:Message-Id:Date; b=iNWjsSBzPutUIXM7lJWDbI0IAROh8ur62IjhM9/bFgmLCL6FTx0kaFaRjKYGoyjrMVuhOCRURDOM7HGIqy29T8Qs6FR7zv8x7SaWrhdmGnUl1CQVhwUnUwKMrym2hWPBGwsPfbirM/Kk+hP7OxsqaXHpcVSn5iHA8BE3lXFjWiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVFuUWld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVFuUWld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0695C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766504033;
	bh=QNDIyI7/Ok2lkcyS1N3mgeeM14XOmbrTlc+eSJthYYM=;
	h=To:Subject:From:Date:From;
	b=IVFuUWldY0FVZ4mbzuEm2mkM2evMon8rebsjUzPbpW3/YzocxQSq05U4c9Odks1Jm
	 DzbsnF1100DeMBgn8etmke3aAUBNoS93pGyJjxenivolDAiBljY+WaNvd12ltaDfwX
	 3BF7dNhNLQnwu04rabkoEYlHrv4tznXrF96nmm2dNn+Jb1CuZZlT1RKKGBcH7kDF/e
	 5PKXsVF4l0wPXAh4mq8ogsa3baH1jqf9hov2R1lPXQr6Vrh8U76OZU6863I5cBfLvC
	 fpPlfrOEZm8M5d1jGtw35j5fG2tFkIXeegvAJxt8B2tGrSNy3ZLiuw3LqyNSSE9awg
	 KkcDP84C8OIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E2E6F09B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650403358.13216.9248447296576717946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fe00af507647f84d1b53f8c8ac3f494e07cf6dcbd8aaf987b6d69c4418ae50
Date: Tue, 23 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766504033
