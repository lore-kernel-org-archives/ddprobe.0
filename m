Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F4A2F2C78
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752259194; cv=none; b=pB7ISlRzDm4qlcqDiEA4Q/CBYny6umbRPwlaAxCrETa171z1gZaaHiF7JYFgT5ZxD+i1E5x3O+rgYOn+1OGJSY5DnHRJJK8FocslwCCpBQGYCdhmTn1m2smAJ2U7uN2/bksi0KPiVSp02gVR1keujfEiwHPz+gvF5GN7LUftYLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752259194; c=relaxed/simple;
	bh=31ibVmVZ1j1T2gOg55j0J816hA3mvwVsLOcLJDZQ1aM=;
	h=To:Subject:From:Message-Id:Date; b=mMaUit8Vi2E0GSDcIGKsBxB6u+3hRn7+G8HMg6T/S0ewWHnuOwhfD6LmaBarVozpLb599wBBdFlaGX4gMzN6surR0NjfLTds2FoFScqwojDXBPg14mbosdcYoymSYzszGVga7zUAIgzhewFeonjtEcFKpfQQVsUMNc3b9mYRqj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC5Wfr5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC5Wfr5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D59C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752259193;
	bh=31ibVmVZ1j1T2gOg55j0J816hA3mvwVsLOcLJDZQ1aM=;
	h=To:Subject:From:Date:From;
	b=sC5Wfr5wAJ896EeynLYCs3UUEJOTZICFDfAd00Zx3dc6KHPTZ3DHajgCYsgUN25vX
	 1uEG3xfsaZjw1K/7Krkzhe2K5fCuR9FMli8DqGr5gp8Axz6iJJmy23oGpn5AX/UIs2
	 SEA4vIwHKrSXWmc+rRN997IRS4Stfjp6fSvAPFDmrRNzriO47jxpodA7EmVvv9LKQZ
	 kVaC6lA2rxLoUsUqY00WdtwP2RA3Vw4FpPZ8vQ5S/02BEPf5UibS2SB8DshdcCwe/D
	 ySqzMfh+UL0A90OuyJVWtfNoH4+iWtULvcwZHL1FEPMlWxK6iOOCrZyuadj95O1jhD
	 RgdRYaXb2Spxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B6FC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225919358.30522.15081418952750708203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548f25bf98ff70f38b18067eb20e8026c99cda9cd5f22891bc75a4db3392707a
Date: Fri, 11 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752259193
