Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D9F2E737D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783724914; cv=none; b=FjmsWh3B6Pt+7w6geHaPc8dFMUlmfUZRtWTsR482Xy9ApUO6M7xxJlmhfA4BBW9+0aTSUsrDxIQn3ai1gkTgqiLdJAmv98OwDnCm9N/lnpprgXDfdlV9gOIo4kSd18JFM2DGqoA+fDjU1FI9V+lt4m9FU7UJMCbfrYdb9H00+YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783724914; c=relaxed/simple;
	bh=6v4q/e/7FREPYz925M+94/TLkOGOrXMsvMnLYuIG9TU=;
	h=To:Subject:From:Message-Id:Date; b=V0hB9hL3mUEWqrThGicYAD0UkY8eZKnfc6vuZD85pIUqDd4OL8jDwgpPvgNB7pkZsOfmKPSBJrE3n1acMaPWTAstc3VPd8Hkvr/8anq62MVXoaIYZHpoxh1xMJl+p4NN0HV5xeQPY+RKHC91XW4EybiiWBtihaL4Lq/N6OWDMIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZYUwf36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZYUwf36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D729EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783724913;
	bh=6v4q/e/7FREPYz925M+94/TLkOGOrXMsvMnLYuIG9TU=;
	h=To:Subject:From:Date:From;
	b=FZYUwf36xqZ0eSNSF3xvQE0bVmxErdzuf9L5FbAobPP0ywQmKCIftNzvXAVHSz604
	 YyuTDbCgwOyLi8RTq9NGi9lN6VTLWbgDhcXLYJnKZrQnV3yeJpzmecKsekWoGydJWE
	 amyxLRzlBeL7hbuc2aRZvgMkGnNkpvdMWfZr3bbFL/i3b+VK5Fub6fyXWNTgczkFDI
	 OwqD/XtDaYgvJyXwTIzmA7Q/31mRdgvgI6KRIBytyFsjLhYka7X4YUcV7ncuEHQIfG
	 2WZYvT91ZGSoToypHtmGlAXlVqFrMFAidHe7hdV6+jjQceHRbUJRM/FxL7k037Vfpe
	 4Au2btvanXJ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7C3C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372491368.19553.17527901077691152074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cfae5d20db9848f3a2dbd91a63418dea7c05a5dab35c847b0715d79020f147
Date: Fri, 10 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783724913
