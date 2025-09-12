Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C5127EFEE
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757719195; cv=none; b=Uvnvg4X3rh/xT/nxVsIn+vAJSZGmSG/8afROoAKo6mgONB5Yljkna/ZIF9MzXBZl9bd39aeIiovOJd2yzGco7Q/QZnOpDhP0PRu2IGO22JzXFC7ip7zgUYYDsi6k1OWpjZefpvmPOX82DSzYPdytZgyFyHI5FCS1grd8hK/+cgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757719195; c=relaxed/simple;
	bh=vYKziqNwgztoNYeuGRSB7jkvvs4UdZiv84KIUv9Uh/8=;
	h=To:Subject:From:Message-Id:Date; b=jB/0G/Ehsl4c+SupGA2I/cDvyEMMWDTuIwePPII13I17CyKSoRPj72RRGfsuzDDfO37oXwoahlfRP8sWXY1liv76FtCteUh8gq8nmeD/hLypUfdOfFNFPOIAsMPSw8GGQ1zAm7YvVpH3g/m1luTcgnMH3dK9Sb/hYElXSgllYyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok9BoEWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok9BoEWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757719193;
	bh=vYKziqNwgztoNYeuGRSB7jkvvs4UdZiv84KIUv9Uh/8=;
	h=To:Subject:From:Date:From;
	b=Ok9BoEWxl/A+bYyTatt7254ZVvQaz/3rIj4HRwHXDsVo/OLU+Byxbejj9Y9n73hhN
	 98mAL1agQu9WOTMZvwsTv+XWdwBcnJRKPzt7yEfssy8aDR0mzWIFQTJViBDy8op8LX
	 bQv2Uc1BN5AUEU9DQFHKp+kCOy/NI8k/zc/KlBQq8jVNnvzRbRI0tw2aOax/7r+xa3
	 hHNMAclwKWknpvfSScyuNGdL67ynymGQAg9P9Jtf91KOeaDH9gwSqMdC3+2BgsB76O
	 FL7c7Byx1SQpnpL20jPbm/zoaZZhJQrIjFB+5APPhbEJNvv6fWuJSbdsX9NFYanwdq
	 j8hoVcXbxdQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938AECA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771919357.7173.9260482941006333739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b133f87eb8a7ecc6493c5da821f4232c0b2b0179d6bc41a7893f9989992b0cec
Date: Fri, 12 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757719193
