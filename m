Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2940F2BB13
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774845294; cv=none; b=R//tsXNQ5KuIeZ79ObhmsfxVPCJylc9WjjTL69dA57zP+xA9/MleuQhnZkHJwFs0YIZPcIPFOvV20ngZ+yOSFgIPJyeK69gN6Q0SpjdDHtGDMTBbd4b77NyiEcGWRvJfhBGobRwa1am+GsmLjXHYFcwMPrrxEY2S/ySu1ixsm9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774845294; c=relaxed/simple;
	bh=eoyjYvE1zPahjxisfXZ1Yq34oeUIwwd0u2K8ljaLf6U=;
	h=To:Subject:From:Message-Id:Date; b=k21KC1XnbFlCLbPkpxjjvxqYhjG5l7bBcXicQLrl8vqlhBvHFqygI6iMZRa703wmZ+wjVYnEuZKYCC/hPIbUpz6/r2bXx452+RuK6gWiKoUZ+EC/ujt1FgiqN1R2SwS2oEXWeU64c/cvEnKUj+fJTUHAZj+NMCjpxhuAzCMaRuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY6L3QAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY6L3QAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A699CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774845293;
	bh=eoyjYvE1zPahjxisfXZ1Yq34oeUIwwd0u2K8ljaLf6U=;
	h=To:Subject:From:Date:From;
	b=hY6L3QAu4ebua+/BD93XAoifs21dkhuaWHo6UfbsdVaBZu2OD8JA/u6J0rQcZWoiV
	 FhYDH0l2D7hs23alnDBoD16ujmzYSk4fsKgDx0lELDKCrKtxXc1zIdmDzneIj3Gclb
	 MZVsLbr72kNZ9RYFGoBvsrqtwpHUR5C6cNQyZ2PZPOcadb1mQwUJZtOtVR0MF+si1r
	 nqtTorwKTa9WZCiP9A/7aCqI1Yd6Cf44uKHl9XantfdDC8g36toRe3NdOH5hguhn8S
	 4XKxaWlc8c38SYeXH6kVEzsX35QMUpJDVcmcZk6Eb14kiaxFS8zFmEWrYYc+3quU0f
	 RRI4q3YESkw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEBFF493A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484529358.14168.6407357766864122194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85f09b54fdd77017cdc2da29b94c90c11f8d50cb0c82c2e4d07a14fecc9da0c
Date: Mon, 30 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774845293
