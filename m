Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636F41494A8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719314003; cv=none; b=PEOf7tx+7lY5m85JWg2vZ3x/9uHIK26k84N9qboZs8CxSApIA3hKPAnlO4PJ8QLm4STzpLK9jCRA3b30mI9t6FPAetoi1s/8t2tTGebOhU5i4avLnaWmgR63PANrlKQuU03rWpWWW/dz5uJsxKApSjZHtDJN5noDnNYeHWPP+9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719314003; c=relaxed/simple;
	bh=Gwq+Y+lV5nKwx8XdmWFtdRL860F3oXlaSBE5BKY/QOI=;
	h=To:Subject:From:Message-Id:Date; b=UYnX8yhbq81k3IONEOgw/F3slm4Ye16C7wOEeAFAk9MAHGR1cQk0iZ/7x91aW5mtuNvPD8qBFwYbotZu7Yf/gbKqSJvmlLRGLbT/VqqP2B5M+JJE72JeifkFLT+D+QRDDHLCLQL7QaXRuT1BIBUzOaxQZnA9HV8qf5NXGaDdcaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM7Ylpb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM7Ylpb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00F4C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719314002;
	bh=Gwq+Y+lV5nKwx8XdmWFtdRL860F3oXlaSBE5BKY/QOI=;
	h=To:Subject:From:Date:From;
	b=nM7Ylpb99XMhPFZ/uswv3T8rIqCgMAIgJckmBvpYwXa8dyDqrsAHKpSADp/tLScBr
	 WhaW1CUoKmURWRgsZTesQ0ZhImaBJ71OEsCOj7onNM0aiFW1FvUib1eqHAYAvgyNgR
	 V6a5CemtaI9KF5tAnU+nc5CizaZAhmh+jqIeY4WPSMNCkME7ykup1+cLmbxDomMjzr
	 9HUE/2qJsGq3dXrSFPWM0xDyYmURj0ACyty027W9GckL0I+ceJQaNvq1GijsDlba3W
	 /Y45zQCCfKMBZBGiC+++QZWrX6E5/o0K1OEgxWTbjccCUs1k8aoJgcVaCMvtMGfEpE
	 g5LLXU74fTXYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC41CC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931400282.15250.15639761242755784215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143fb17ac84f9b90713e600f3c66623f8e2f1f68de4fcb67a1eb08835229b2e1
Date: Tue, 25 Jun 2024 11:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719314002
