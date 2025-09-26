Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E08D1E1C22
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758913195; cv=none; b=CnPw9EKNmMtssQKitYjYAifMqm8THwvp9PKx5r0dHg2Rm2tRgYVsByGFE9CowC5j93dZB/FphmX+4ISl1gmUplw+4vhaq44Jp0/+x1TmROOcYfD4g6k+4MvwPzu9NYorei51rgzs8Q8tz40GVzMGxFc18FVlpFNxX2z8KFEiYCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758913195; c=relaxed/simple;
	bh=03qIAFyuWJf5KSlupORw0+g9vV/V/QxT9P00besQcog=;
	h=To:Subject:From:Message-Id:Date; b=WEunoLVNVRsKDc5CEdcdCuDNu4tFRmFrP2jMlhLRep/TBY6l2jegIR7YTxXLNZZs67ZrrGhHUHyRgSfjoqLWD5utH6A2aSehle+Fer8Jc9l34U8HSDU8+MZ08capUO75PRVgwyvAUEorDF6N2yotPLp3smm464j7Q1wSaGjgt4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX4L9ROE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX4L9ROE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7830C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758913194;
	bh=03qIAFyuWJf5KSlupORw0+g9vV/V/QxT9P00besQcog=;
	h=To:Subject:From:Date:From;
	b=UX4L9ROEerLjfVqVxjkwmKNCGsyAThV4QP9CW10mr+XVBkRi39/ORIupTE7ikF7Cv
	 ddUoCdycPJsv0oRdthkJQuZmUcUrRO+/fEOGZGty6mTNI1NWEnCL39n1MgMbGj93As
	 R2tlkZjYy6k+PswS0ugcMLYi/nJQQuRAxkSRsuaC6CUrnXCdvGvW6GJBrHKwH7jIoS
	 /eClc2khacvXYa0ts/GthLyoCnDHggSXu4Th1uFTzjTJ0BnCdYhxsD+7lKSERA1wLu
	 35feOyj9c6VWOuhtTFoaTiCZ4gZ1G1blKWAg7ADmC6eejj+2AcB5ytd90LDF8I/HUl
	 zbBnZgKJoonYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B5CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891319357.6783.15570940087383483917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5f59b981e957870b248cff04f61cc16c20522477bd4a06910ae04562235d16
Date: Fri, 26 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758913193
