Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EB82116F6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756625394; cv=none; b=n92xKNxhV50+ATtUdpRRT1ViaHKH8xk5TUrHHTr+tfO8VCVwzIC+MyFn/q9TdNv83XZSasiAvPK40LgXbzkVHSj52XGQTWAa75PyR+Jby0ijoASbuDFw4jjSDK5+29OWbtITMWqRgHv4dcv9ElorIHcjM5+amg/ulcyo9qOOybw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756625394; c=relaxed/simple;
	bh=YsCn4vacb8os3C1uf83Y0DWZW9bMO+b/OVGI5+Peu2M=;
	h=To:Subject:From:Message-Id:Date; b=Sc23PKhQkmvqsVGT9wgxz1qH48/Xw1yr3STWlVd5hHCt1tOfSMcK3+q/IHUBPyPSPSIMDE+v+93YcEwuAucB2+3HwmBDWPixsyPyzlb8NEX6t3Akl76F7FLJohqNeqBZ6edSv7+TL/NwQ/SmpGYmnD2TUnYutp9wuuqzvz/SIAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAGz72z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAGz72z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756625393;
	bh=YsCn4vacb8os3C1uf83Y0DWZW9bMO+b/OVGI5+Peu2M=;
	h=To:Subject:From:Date:From;
	b=rAGz72z0pLdkSLVozw3teFUA7UcFelcjKffTDafkYvVklEeKtXdaj/jQvyx99rpOe
	 r1R8yRzn4F+CUMYCxy98Su35yJoMjIqcgzZHM983c3RlSSmt2a7Nf1PrJZH5rJjP8G
	 8VJycp2tDLluF7EWBNaOClzCCHRH56NJeLjaIs/GRj0Ja0ilu0Z2w1tfquz9+F5Mk6
	 IeA6C3K8nni4WQqDT5vxXpai4Mka+SDdgDk+lFfmQIizWSr5fjt9dYerv7NkxkJaHX
	 evw91ocEmMsrlqHHTbg/HpBJ+TvYtLoxuO3h+EwEnFtiSFEV/c7ubZmRK17+kA6Osj
	 SAq4zOnKs7LDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABACA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662539357.14335.2505423934913544005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43175309edeaf4ddf537adf92b90b258ebf39a9f12043b15cdc952cdd26e9bb6
Date: Sun, 31 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756625393
