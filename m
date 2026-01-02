Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5442D8764
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767347034; cv=none; b=WPUzUAbecgo+GbfBW+sPCTFqKTnnlQPpgGCsXHVBhirOw3tWJ089iODxY3FmaHCWvew2WMgJATOWYgLZejNeRizod1ClRIBCMDVuh21DC5zog2Lt8Fa8r8XMXbGW9/k/guYyFpBj4KOsvFp/Oearjm6kcC85ikcGH1CZW1mOdgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767347034; c=relaxed/simple;
	bh=gV4eCBX9a70QhOKk8N3+DS80gTSXHB0pfIPcUozKMM4=;
	h=To:Subject:From:Message-Id:Date; b=DCVNren82Wt4AdI2szEdOXEyguWZFNNoSG9BY5r0iwIKlg1CkJ0JqjZN8AeITECl3Vgd8OAJLfpBFKTxC9prnoEBnGR0E57javOd3nHGLO9hanb0pQ/ChyMPxvbE+UHikDII4Xl6y4XANQxgcgnHOvQ2g3bfpjd82/l68/qzr8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTo2TjrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTo2TjrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3832C19422
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767347033;
	bh=gV4eCBX9a70QhOKk8N3+DS80gTSXHB0pfIPcUozKMM4=;
	h=To:Subject:From:Date:From;
	b=bTo2TjrYvvevsbQyQNCiwdC3SG7angQVT9hXxE151dG8ZJDyvcokKB9CDM1DxoBv5
	 ksdz5AbPW8emMHrmyljSrDuuxFSGGBnZat5ovtHtYAKUDumbH4vE8hT05s+LrkhzmE
	 2piyjCt991j5D/78Z5fbXUWLyAMQBetqIVh8Tle2Pi0wdP4w10IZH94q5SVnbl6e86
	 pMVsFiE0EpYkSZmoBfilyiCF9CSoY1/39VYSkDG6Do7aIrnwgsGaNzmiUz8xlkBWo8
	 BN95CYLLWsVLo2XpVZvY3zxKKPGivdD3bAKaikWj+M0CCgTrHRxVgDn6E9r4IDQLY2
	 M/oHUzo6MCUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91822EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734703358.5004.3246577009242081818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e07815e1ea5bfb77622e1f80c8f0e0303c0ff68bb6e037b49bac1837e04f72
Date: Fri, 02 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767347033
