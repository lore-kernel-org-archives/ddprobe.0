Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870B1B4223
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759121394; cv=none; b=FyFWFXtscC1j+3vP3SYUEQILt9fn0VjjOSlt0/1LW+KyqkjFv54r2HugIGnPOcAEiGCo4jUrj1Hx4hVGMbXCy5w1veTskz/rGkjU1t2Xvr3GGVmLfp4nIWUjAMvxnkWoaC7Js1klYaMy/yTXL4zgGsnKyxw1r7Y6nDmLeu36kag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759121394; c=relaxed/simple;
	bh=DO04ggf1k44EN5uxgFsbV84El7dHBw6S34kQWQqO7ag=;
	h=To:Subject:From:Message-Id:Date; b=F5gJejyuJMucpL0m3Cj55ne1FWSyOwy+YjTxA76PCYf31nSnrVBl+U706sxCpnaWD2QyDj1QW58dyQdpRcP54SPvpB0YhYRvsKTnz6IPthiR3Qim/yCzcGpYxFF7z4V0agewi89NPsrR1TbObW9UT+m2H/LOyps7ttv/Brc2VZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqyFSDGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqyFSDGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C8FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759121393;
	bh=DO04ggf1k44EN5uxgFsbV84El7dHBw6S34kQWQqO7ag=;
	h=To:Subject:From:Date:From;
	b=GqyFSDGoFhfTWkiHUhXO1bcC9SUZN6t7ChxpS5YWEw8NBhe6quE28ePeJ4GrRMPVn
	 2JKdPVXxpSbLG8Yw8IfKGayz5Uuweuk8trvugr3WT/d4j94c5pBRnikSLgEbZC+2z8
	 Z7FVuoy8eSqVJBW4Vw2dlsWD38TMx8L1b2DpxBwmUFU2LS9k0vGq3ClxKnHJ4z2M2N
	 shWkp+cqDejo2i/hYnBttfmIyr81T76BEkvk4t3WaSu/f8wIgmttSSX3nxJOZkEM9X
	 mkdpDrgmpMeXlh+XzxX9BSl35SUBVpViNtP3CRmaSSMSL+ky+SNcUR0DDpwf1kuXwg
	 pYB6Jf8QF24iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511CCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912139359.21280.9270879791760910028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f7e8d9364e845a9e2545578544baa2b9fe80a4a9fba6505efb6f827ede2cce
Date: Mon, 29 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759121393
