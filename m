Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6880923B1
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716254543; cv=none; b=lBOYdRXsO//WUcUl/syo+E3lbNo6sK0EPPFpoMvKQa5poatOILJXoHrRH0+2JpBo2PFuHOhhdDKnvpx2dJiH1rmBsC3xSVLWkKtV54fg3BdPPDkRUBMrKFWM/fTfVqgFBFYxc2WGEDT8yr1npiKf/PQyen3Pl4NROPOl/rsR2eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716254543; c=relaxed/simple;
	bh=sjc70Zm5UAxpjtNpkbl5rJNLBSsEOknrALsX575EQ4g=;
	h=To:Subject:From:Message-Id:Date; b=LCcYuPgB4jAuKDyDYED4trbTK5M9ZegVmRK6JZ4KwFBBIGkUyjGuw0IMFnKEuURcaDFdtHhe1el1ET4DCeKD1M5xSrIXZPVmHlEV23znnPAsbGoo//TDVMEOj42052EmMUXjtQmGsLueXZML0IsqkP7dLHW4lB2WTFlSvZBHxUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMFa/OyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMFa/OyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC248C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716254542;
	bh=sjc70Zm5UAxpjtNpkbl5rJNLBSsEOknrALsX575EQ4g=;
	h=To:Subject:From:Date:From;
	b=eMFa/OyP/DNFshc8qh5B0eDQ3J4Q6eLhbZtyiC5n38O9ZALsZe+CCAzH2OS2mo3NI
	 GIkZKdRmmCG1wLAksKDZtV3MpkFCjPkecuLMgTX1wDb+zefF2lXxEsy6Kdny6ISmv9
	 IyCTH15i3gzlRxJTXNys2fTL/WgWbiKXQgGxkj90BUwZPw5sdgnDeeUttQF8OsGv/W
	 ULMXPizFFu81cWrFOLRS3h7loe+nqyFZ0JD+WPc6KOIOMfNodRKurMxw1BGGhvPTIS
	 7mtkIb5ItwLgfTpDSHEaH0Sie4QZPqG6u2DK+Z3NmHIys0irDyIwVcXO+JvrpzeX1Q
	 if8m2q8fmYaqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C071EC25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625454278.20864.3588757836913595476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4faf9436d07f9c947322ec4be89c473d8abfbec7b3dd3ea78bfb9189045e8a2c
Date: Tue, 21 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716254542
