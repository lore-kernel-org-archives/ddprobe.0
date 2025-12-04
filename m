Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2933D2D640D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764861774; cv=none; b=C5MOW+dEWCwecyGcRZkOpKRHZ+fxMgdm1Lt48foQpEL/5osUlAs0OOPu+mXEhj4TrGr5yQ/I8Y+X+XQ+GX+DphfhO5fv6NLQ0Pdvw1RujQN13OS/1t2aNF45mJBUqWE8FInZFRa+I2CwpjBdTXdRQc//6LCjECAPAzYUtMcUXiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764861774; c=relaxed/simple;
	bh=ePQrAKUMPjtWATciLw5Z8TKySg/Xmox9bdYuRgtTwu8=;
	h=To:Subject:From:Message-Id:Date; b=lRjao1f77kcPwkQYmCWh0kJ1lZhvemXDCT69aRAITIK2vPRsL+Q0YxLUpzphjLT9apS2Y950438EQZwALRU7KkvizO80QGbN+iMFsNd+5PRgPWCB5Yc/AVadGJM3sZdER43JoWlUlVbaE3V1y2/Rn3mIBQ4imdVHAOj74AFUCeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCCmpYUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCCmpYUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A842CC116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764861773;
	bh=ePQrAKUMPjtWATciLw5Z8TKySg/Xmox9bdYuRgtTwu8=;
	h=To:Subject:From:Date:From;
	b=uCCmpYUNcqtBbjZZS3L2spNg/5bNbr386dhQVUL4ANIvMlHxykFo0Qg9Cg0FP6L/w
	 ErIHASLlKrCV2OsLf0q9XGSblTiO4Qmg9BtTnYVw/AJVnIknNTNxcr3k5J8/NTww9S
	 ZtBGllRYGXcsrUpA9MuMwyxFcjXbSaV35O2InqaxP3QaTW/fubKiwfMfrawHYLSgkx
	 H3zVFJM/kzk1Rf6dKjADf8bUqPthlNj8fo4ByfB+zfwpFYcGbMp2Q4Zkho3Qdsrzug
	 X1C8hfHrc2adGF7huhbnw/bXPq3RZfpPt1zm7b5wAWBLhlycN1ye8lXO+vrkDZ1t2N
	 QUMD0hbsbLzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC5D21687
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486177358.20220.9654011843893598360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88e2d4ef820062b06b0e6ec57f7ded028f435cf4b7eb5c02ad14794dfb92af2
Date: Thu, 04 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764861773
