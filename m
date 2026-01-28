Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238991C3F36
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769627034; cv=none; b=gobpPIvulEPC3pR5EBQuMBr18LwPmh4fmdZGoYYSTRh4aqb5U54ckAs2Zrh5lgo7Yj3UuHsPwrMEq8arkXcszIAuTSOuDg3M22XbUb+SgmZT6uMazdq7qhvjDnu/KDMJOPH5EXsWCm6wmdSXos8ktghw0sLBAkEa97ntfjH+vm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769627034; c=relaxed/simple;
	bh=DHUjJpiMapyCh/InyCm8N3q/jCY7e+3/8ruL4ezgx1E=;
	h=To:Subject:From:Message-Id:Date; b=j8UxcWuPoekGBPSga1HSF2IDJj3JupLk8eR2uJ7lHscA+gOsJ4/+zO5/qiVFOYZq+ZDiACMj2fLXm64FluB+2QlIFkxwCDUgmRdkzVp85YwsmS6uIGOSCpeDerfLzlSvSqhZKGZkts64w+Qg5VHFt9I4ha5YFI28Fx70lfYEHSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOzmLuZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOzmLuZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A3C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769627033;
	bh=DHUjJpiMapyCh/InyCm8N3q/jCY7e+3/8ruL4ezgx1E=;
	h=To:Subject:From:Date:From;
	b=SOzmLuZfWq1OGJ2iUaLSTfWNWdcoMsLUnsyyURKqosDR4D5vLFFFdiVQYGdzWbyUZ
	 XLwpSO4pGE9b/pZDg5vutm3RyKnTJX6jzPlFQOPb2KCG498LaFbTVdzrgU1L1NIOwH
	 9sEyeV7J/p/hxngAnyDC7NReYUh/v48QwZ4xrMB7RGZRcYEjkh7YbnmREnnSPTpsJG
	 ArQ6sj13rEntffKc/LbueCGZO/YgJYVhpXmu9eA16rUFBkUP+dFX0HiI8j3pz0coF8
	 uGkTxQDKgEZB43J+nXoUymmyCkPiL2P8bfVfcLddtYzQYrnYJmihjbGUuZ9E3KyWkh
	 TCxAgWISz6tOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B32D46BEE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962703358.19470.15006351315227313675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d33a26ad7e65203141c0ce78a5348fc94f9e8e251e1288294bd08df881be7c
Date: Wed, 28 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769627033
