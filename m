Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891F288BA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783226914; cv=none; b=g27OxgohGPXQsn7+8pCH/Qjoei/0VcMBugFr6GXCgrp97OqsfO3SssHiWxTS4cF3M+qP9CinAR3KL9nhs9ztAsyCCkyVWHPlIrQbPWvl6DQ/ruYgXCxcuK10i69WJPN4p4yT3OtFwFEMzhwztXjcz4o+YH9ekMoiy+vc8LHhNI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783226914; c=relaxed/simple;
	bh=QW2TCEyXRbAxw+d1wr3EPEPYbE9vZjtwWFJC3lbPEec=;
	h=To:Subject:From:Message-Id:Date; b=skCsX+igvVC02oKSdcXvwhHfACMEcehu24c/QFGkVSDBBtk2glGy27FXkapbcpi+Q6dDUE8FXYMHdqKcwrApiMgpXhAP2TZ2bunr/uPpvSySsoSyHgiJK2EJqm4HUxKKoxQzgea+PNgCDujTVZTqgDM3s2X/N84ZF0aTDkizk0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR/BBCy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR/BBCy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA473C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783226913;
	bh=QW2TCEyXRbAxw+d1wr3EPEPYbE9vZjtwWFJC3lbPEec=;
	h=To:Subject:From:Date:From;
	b=MR/BBCy9J4XFvRLd9m9wbsaAdCjJtwXkaRBhBbtvlf2DI6IZW3dwHrBxoQAS5Um55
	 opWphGDCjoV+YAsISY7ulbi7vvawdrkYdblrcMkN1C83UO6tSvF7xxg5A0VeWlfyEH
	 iGZ+MQFOtMsuH0TS3MsvzpDll2Q2Bt170drQ3pyz+lo5TjWW5qfd/uMDHepvPlZHxZ
	 CgtCde70VJPl/wfUm5QWkAerR6CaAwjC58zuRsUrS/7bkgMPSMyz0jrzQVHJAr8wVt
	 eNe4+Nwyl2Q4H09K89I4ZTs0e220bIEcqeenrcjZYeZD590MFpUdWp0TuxOrmEwscI
	 WpkaNFMjCP8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E81C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322691368.1116.8995038650678900097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abf392889bd41dc4556e7ca8d00f5940dfe766744b658bc71830acf55172dd8
Date: Sun, 05 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783226913
