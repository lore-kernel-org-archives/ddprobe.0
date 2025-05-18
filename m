Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9A22147EF
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747564793; cv=none; b=Cu35derWTDkLrdJaNk1mmb1WqMF2dVIBh6VI9YTEQjeB6mCnciXIWDY3bzpQ/LA8ynGCMuNXNcInSSnCLNHc3Nid/7EoY1+e2AINXb5+s41Nlf9MxuLSQjhEgOnpGkWqVlTfQ8bXbtlHksVfYn6FFVphoN7hJDaywy/N8Y1vJTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747564793; c=relaxed/simple;
	bh=tfvjiAixbSM3W/DaI7Lp7fvYB9huFx7PIs12UxCvRaU=;
	h=To:Subject:From:Message-Id:Date; b=ed9ZXO8LcV227rH5PkdgOyxUAJLQ8M20J4jsExP7pA6A08aErKtFX+FA3qoyobOQEKSObye7ZnllAEL4xdJeavLLpMYVhOxfjPiyC41e9ckHg/nLSFE1jSw/u+1GzI+zcfpOQAb5DyV725NRqFdaMOb1R1dGFMM52d6104tOUK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCMLcyrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCMLcyrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD79C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747564793;
	bh=tfvjiAixbSM3W/DaI7Lp7fvYB9huFx7PIs12UxCvRaU=;
	h=To:Subject:From:Date:From;
	b=aCMLcyrZOG3igIw1oqb/GjeovnRf9qELkQOSCW9CDzwt76dhYP1oXPqSW+iNP0TyP
	 d5+MKaBNJ4muQL3I2QNGcYyclhD47Q3DZhhChKbVw6uqQKho3HP1BlsYdTwea5nnHa
	 kuV/jLthOglq3QurqT524C1VP88bA9UaiwnBHV8C9wFW6VRC3JDMnHzR0vxJ3U0/VP
	 Hvl83+ZQPu6XsGoqIZ4qPf+nYPUC3nXSNNlOtVPt6P6HwjPyqNpQultajg2MoCmtrZ
	 QQcqnj6smO2n7uBE1evB0LNOGwHf/FFW5Jx2OITm4LucTvEodH8mtS0NWltWWwp+b2
	 gGzlBfSLABl+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F177C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756479357.6348.8199785380659455809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938a5cd8ce755b7a8c8728f6ea58dd96635d0281be42007a1511b54aa207a57b
Date: Sun, 18 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747564793
