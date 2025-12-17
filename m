Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E4D14A60C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766003635; cv=none; b=GBGBgT9hGfeT8P2R8CvdEKzEFMnJheOb4Uli6ZrRyULlbzwBxTqYZYbLRYIXqJ2zPZBu+sg16sIysUTzxk41HFAWWF6kvbjWtxyV6GOGJJjHswyOxcZsKFtsDQkpn6MuAFdq69Nrur1vrnu7HNAZHVERpLHuGRzQQsOt1aNC8OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766003635; c=relaxed/simple;
	bh=aqnDKXb+snLFtuQRRobcHRwfaNwpqVIqT71QsjTEi98=;
	h=To:Subject:From:Message-Id:Date; b=UJVCCRfmx+DN04YOSw9dQb1nNCOypXP8Chboj2d8zn53rY8rk7ReZm5cOn7rAMeNMx32GbgN7oNVPTfwEI4byW9JRtkm+Bwf3B0nZsg5niIw9c1j5vVO2O4Bx1nhxY+xliWPzEW8agh3Fy88MbfcCicI2edDkr+5UYGICjX5Olo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EajNEUGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EajNEUGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CE0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766003634;
	bh=aqnDKXb+snLFtuQRRobcHRwfaNwpqVIqT71QsjTEi98=;
	h=To:Subject:From:Date:From;
	b=EajNEUGmwhavZRMJRjAIEmRP3S7Rr6dGkT3EaH7811W2WanOJdhE8FOli8qJz3wiA
	 4gMFJcHE4RJZ2UxA1e5MZ/xMDBLnQDiQ0lLdtt8iOouqvEcwRSPVHbuk+p5AwatW0l
	 HRXfzi1g6wtybGckRSHEiCGwd0kKMHmGHDReKiz7aRUa4XqaoNIzd6DeOXMSW0dRmF
	 O387q2S79mUglaES28v5S03Og0iHDOvKHkYaXngiDI3LPnbU4e0C4w84Q63BlmA/VQ
	 urRBdFNDOCodw/9mwm5/kfiFdRWIE7yUnqTnftj6qwXtVk3e477px0birk6gVNnTiZ
	 OqdBpSDa5pyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C3D66BA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600363358.20568.5456295807582430696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c763d8cadce9fb4c758758f2b4b84cca22e309eff7f822a2f0fce5cc0bcceb1c
Date: Wed, 17 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766003633
