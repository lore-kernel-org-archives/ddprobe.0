Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4408B45BE3
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764190974; cv=none; b=hLJkhUXDNANh/ZyLYxHadTk39QhyWIV3I46E4bepKCSz3NOlbuU4HTKDP1NO13uxz50fx9yU/qtHpBhymxNZe9e4dMIBWyJVwcFl51Nsd8sCHtrVC4ffT7SVbFlZZF8fiuL9b1flEv1BQENhzthuJbAMCstunB4RD8LLXOXIGwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764190974; c=relaxed/simple;
	bh=RDO6Jt1ab3SfWpnr302Wlhm1Qhk9e5wQrVgtlwexxSA=;
	h=To:Subject:From:Message-Id:Date; b=Eqf4lLyTYZMejO7Qnvnbtp8S1XbkSiRCfsuFvs9D/3jeIdIc45aWfHu+B48r/dlkEUClTOXEPhHSGKyh+73fZJR3ZUr7VnWT0M6raYEHRO0OEO4pQmQsYWEPXDlvFK9Xay04U/GP6ODxXrm8t3vliG0fTDDlj38TGB3Ze2sMmSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja8gOFYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja8gOFYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF123C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764190973;
	bh=RDO6Jt1ab3SfWpnr302Wlhm1Qhk9e5wQrVgtlwexxSA=;
	h=To:Subject:From:Date:From;
	b=ja8gOFYFclSeUMYveC0Hx8h0AypbE4ggIHfs/5uRSgScG5zVesndBwAgeOXIjUqVV
	 pjzHHg3llOaRDJ+T3ruXAoQuRE0CvbRXLZNQMGLQC6ykFKSXGNMUzsgj6H38eYN239
	 Lq+cTS9HNc69+HVTrfcQTWCgH/EymQESRHA2TioSn7WmVx82k3tkjcRf+RP2tYMzCT
	 BH1ZBdiF0atgoZn0HHh/Ahm9HdkwkA8tqnwMbqt6iCBvao6anr9PEC59hyoknHpeTC
	 nrq2I5IJEFr3Iczy+avDOyzSSsKVyyxlZ/HiUw/cQD6F4XI+lAxXlyzv2YRMAp1pkv
	 iR1Ph7eif52jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962AFD1119B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419097359.25229.3125589671039664833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481f01e6d501f02dca8ff84f3275b4fd1515428690cf0143395e0fc481de46a5
Date: Wed, 26 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764190973
