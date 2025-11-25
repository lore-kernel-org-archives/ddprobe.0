Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3BE326D4D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764082374; cv=none; b=cLLTSMCdpJ4lsTnbNdYSDLi3QN9iXrKzQekllvDb9KBs33JUvyMvdqUmumsEEG3sRlSSHLHSn/i1M+mW66eRsYdMYIRtkCYBTCDOVPItTgtYUAGialLYXdfXHIkhyEaz+sLPJfA2tS01DhbT0mG3UMd+kSrYWQoEFDxKK6CbSIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764082374; c=relaxed/simple;
	bh=PVE3KAJca6jeRcFYnq3cf2gssRd0V+hp4yuR2pKF02M=;
	h=To:Subject:From:Message-Id:Date; b=CTdzBxlhwLIcDBldqUjlboOWQ0v0eZnj94ovfrOukXHQNrVFnCCHMctrCVzHGTiIWmAM8oPVezLGPTAglG909HfH1QlmmgFrcslmaR6bRgfPgRbYwXTgj/YR6FiB2xwmvpCpSUTVQwMNwOtq61MUPQ6MsBN/QoX5lz4al2jQXzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Czf1uzsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Czf1uzsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE139C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764082373;
	bh=PVE3KAJca6jeRcFYnq3cf2gssRd0V+hp4yuR2pKF02M=;
	h=To:Subject:From:Date:From;
	b=Czf1uzsGm+eVbhK8iS/qGrb1L5z4z00khrhgyoGm5KSWSZmKeLoH7Sd6W9qfNwcRF
	 c7vWskmWVeS4ZbKakjlUBwBy4wTDYoplSKl7E77KMpx+z8zU504NtU3961jzyFvCyg
	 LpnEzgfAEr3thLfoipB8C9vSZ/iOgCuy08YiGNrzilV/qp6q0T3oz1GAcFuvBD8kvy
	 U+jjq2/qkSN4Sks0918uUc619EgYoiZTyNuWc7gFq5REi/Fo39oLniDKOcp5mzt/WV
	 N/DT5+2Te4yQlI2PvXkAl1BOWEsMwSpWkftf9GZEj1l+bKsZ5t8HIDfnq4XCbCTWL+
	 NDD/VnrmdWv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C45AD0E6F7
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408237362.11959.15280914488347653414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44924a851735dca03a24231b40412e313302f7735b112a6b937641c4cf3821e
Date: Tue, 25 Nov 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764082373
