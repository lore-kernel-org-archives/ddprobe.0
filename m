Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B34F1624F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738856154; cv=none; b=KEar/Q+EiVI+wd2YtpVRznPlprc6QC5TPAkh7V2zc525EMMpNe6UflRRJTlFMJunICVDCVn1TfQd4JKaIs2zRz9QoaGDoiqr5MU1CMU+hpgwPHJbQhWgn+K6u5/vFaB3BODa6lCTrosdnIRpFHRuVj4Hew7t/Ss98lxMtRk3ek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738856154; c=relaxed/simple;
	bh=HW5igcjO7Ml6dvaKkhf8ACipALxgg+clWZ/1pjQ2m2E=;
	h=To:Subject:From:Message-Id:Date; b=IZSjaakdCHFcy832Wu+O2QL6AKeNQP16K8cl8BMG91mJtwAlALervVFSa+yAZxDOO4UgeN9QXq1hMivgvqzwr6y6PFyKkRrFWrnTcHKGFjABJpGsGSrEWsAvjBu4TdMwM+EV90W20g7vacgCd/H5a3JzCze8unvN/leva2JCwd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmwyZS0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmwyZS0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E3AC4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738856153;
	bh=HW5igcjO7Ml6dvaKkhf8ACipALxgg+clWZ/1pjQ2m2E=;
	h=To:Subject:From:Date:From;
	b=kmwyZS0/81eEjQraxGjKMCVS+S3+e3PVwZxIwdIC4xuMS29glvIjid4rCTkMTIryV
	 oJdPVtEFvWprCkmWcHYqknG1Ob2KZ53ZtSGQXINTGbhErZi5Ly2Mft/8CKR/x1kKcu
	 yjXsPS6pbSB6IDGwSKQXqs4xEfuTmc1KRX+to4g0chxVG0X5E/aRDvRHq0RsFYYIXb
	 Wnp0E1yh3yK7Xi2uhQ5UmDzq9YbjXLHFP6YBGkFZ/tZaLZwebexApiORTymunAczAg
	 ZcGvdrsAcr4lQMW//xOVCk3GSF1T03kpMrmFa1A6HvA674KGyx/tiWRImylA+8Be0G
	 rhwrOWjF00UpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94990C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885615359.10615.6089533450009498196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39d1765a1806ed07b482d7c38f8326826034d3e290317485c307c6d3dbb56cd
Date: Thu, 06 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738856153
