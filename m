Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6604A4D584
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720818563; cv=none; b=Xg1VUHtCYHC20huZjUXOhdYBnjdX2A2DNiUdDFEW3DCIB6JQo2hxhrd3MMYQ9+t7AecdUv7LZFrypJW6WWsxjidCbIlgaOx2aC1JnYqPoAQaUYj3xFnfPDkTSFnPZCdtYfNK9iY8gcNiUAxJObA2fDHEnvyzJKFRTDHb+HSLxPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720818563; c=relaxed/simple;
	bh=lwDo112ZTpPrdiuQAmze6yiqEWf2t4UjT7xwF1KTPe0=;
	h=To:Subject:From:Message-Id:Date; b=Kc9O4gMSgQw5Dr0DjoVoqS+c9Bb9MLaAnZSwu1QOETOpA5/twT9AULLPPv4MsRdgC6XyAPo9g96i7/AQNQ7a7Z8ZwZw5GSymlWxO+gY3eal5fm9TiIaGM2xpUIvAltTcLx1nsuWb79eq6NJUQRTuQgrmxg4oQTLRr3vam2HlxQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHUZ/cw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHUZ/cw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD902C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720818562;
	bh=lwDo112ZTpPrdiuQAmze6yiqEWf2t4UjT7xwF1KTPe0=;
	h=To:Subject:From:Date:From;
	b=vHUZ/cw+k+QWoBT7nBM3mrD4+F5ibYGVJi2oFGQxJVTN5Fo69njIPfld3t/A53FeF
	 RV5299VS+2WetZ3T/Y6TwVU8OFUNFAkhKjZW8RL+vRYysP/UOR878XmbDbz6NYmz6U
	 4TgCCw5hmftv+gFJvY9dmnj37n9vR8ucwARmJgopQcP50niYaQGXxzvYmnvoEo9b3D
	 l0KXmJzsleMxQNJ0Wb3sh4a+XVxGhVrfsiBtLeSSwiV0G3GVFB9IL9rvFmVy693j4a
	 7l4VnSDBaZcbvlWdYhcmz7j5EYTF2MgG7SpK0/dU5Ndxe3zovzBlnTGYxsjeGGs8xh
	 lTuBdNrG02lTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AA1C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081856278.21955.4168551433448079526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbdb54d20c0cc78126be7c7f347620c499b1f0d35a05f2f9e526d3f4fadd2d3
Date: Fri, 12 Jul 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720818562
