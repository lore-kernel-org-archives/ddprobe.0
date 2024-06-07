Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F2B136658
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717754843; cv=none; b=chugaa4v5spVb3/AjiD9WiC+mI6PeJ74TVUPhZI6Kn9Ww1ntCOXFDLqt0tdiRa8XCGzbKEbre+DcDS0ARAWwoyOoQ9BHbgQjjWH1f5GzLQGWd8V2j4sqb3ga8rOBdicYCRu+HumyVTqdTeVdxFueflaC6DaGFtErz4yr3E389io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717754843; c=relaxed/simple;
	bh=8gy6Ddodi2b4OBcQr3Coj04aDZW0r+F+EaHq7Ctat60=;
	h=To:Subject:From:Message-Id:Date; b=bCsQ2zt/mGOXbLttzYAOaUsgZ5N8+M0BWABtGzHbFgFYljI+jun1EgNzyeqqDQ0qqAd6hVUssoLkv6rlHZxp2Ln3gd2Yt9swVDNIdmcPrUBh9Ukwv8BWKpSLo+Al8yMYPAvlaOTSNM/N5KjH6E5H8ALm9daUC5p124TZdqBl+Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl3PmVgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl3PmVgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A4DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717754843;
	bh=8gy6Ddodi2b4OBcQr3Coj04aDZW0r+F+EaHq7Ctat60=;
	h=To:Subject:From:Date:From;
	b=Rl3PmVghbqp2Aww+cO+KjHjz+GySjmhU8TtfpWeQ0e0JB1qqZpTSyn93S75lVST50
	 PlWdFT/Y0U+aoQaoBLE/DzeU0wwJ9YCaQL7+PFA59t+LqeuzCMz9gel+MpvcDDRq3p
	 pkAke8wwsFSvP4Vo5hWgKeXhchozO0bNXJBYLP+MCewkJ1KmrtfxYp3c/eQtSApbaT
	 ahwcwjstnOZxYyPKF/zHMfiD3WXdN7mxlLu/eMkTPVePt/VDr6VoWM82scPKSHM9HY
	 3RWPZpbDI+jyl70ICszJmcN8x2z5RRh+hxQB3ZExep/Y0oCaVOIzyffuffwnVOfgen
	 scOK3o1ktMgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D64B8C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775484285.20273.9849532277915720839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d75397143314b7471ebe6f97a91b493c231addb42169fe7fdb75f81e5bce76e
Date: Fri, 07 Jun 2024 10:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717754842
