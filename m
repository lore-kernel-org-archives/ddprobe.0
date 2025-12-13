Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96A31B87C0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765620773; cv=none; b=KLiJ0oqHwRX2saWBtPoaP8fFa/CxVLLxTSGBNJsq8iAu9ZNCyYgUatS537GlqHQcylofud+CxFtLOzjmooe2ks2Onb/A5cFPZtUefIDMQ+/vN8Pcxr5pVrrlIQNssETxMv5q3ni2f5EILkwETjcwhw/bqirGnk4S91me/eiOXcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765620773; c=relaxed/simple;
	bh=oSsTDmRYCXDgA4KJTbEiLCfj5ugnd3YrStjNJax8weA=;
	h=To:Subject:From:Message-Id:Date; b=fuyrOV5KzY1HBEiYHPFaINkNroEcaeLyX/D4WYz9uHNHcRF5lJKOY5RV+fUf/fMVbuu8h8gE2piHpFC1/daqCOTiFgzCXpLLkTEWc5prSj1B85GBu+LgdW4ireOKgkLRqUTkIutOa17A9oqbzF92JGbOmlpBR629xsU2FLdbXcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNXAuH9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNXAuH9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA9C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765620773;
	bh=oSsTDmRYCXDgA4KJTbEiLCfj5ugnd3YrStjNJax8weA=;
	h=To:Subject:From:Date:From;
	b=LNXAuH9LKril6VQGN4Ylf5SFISTm2j58OWAKAV1PMg/qxIgu6QW+DIIjzNSqqqaCE
	 UjRBLGpbB4E1BM3eufdteybf8Kw1zsIKiUQDLl8kZfb6MV9+y3dacqxd2rEQ26Tq0u
	 k3bnkweMwcDiXi/sf+pEMHNzKS3GWiuwT1t62bBDpCRdt2BLmOTa/mLUv7Ws2nLNnz
	 Izcxq4crztA7HDB7N9a7K2WvujCnmSwd4Gos17rkZ73deVMSEPn+1qqYD5HjEYRgVz
	 5A5mKr6vHJHYXfsLgKk/mIgn29IapVqGLT9YJVFvi2wIg6qq0OiEOMr73Bz3Xg4QYI
	 YrTKutZxgAw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96920D5B149
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562077360.15335.6694329682686784571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a3c62ff300cb922747dabab76349dbde9cbe1aec90fa97f2579b843a60e4d8
Date: Sat, 13 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765620773
