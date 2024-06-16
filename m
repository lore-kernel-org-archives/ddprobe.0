Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924441847
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718499503; cv=none; b=uz3KwyfFuekiBzEGRJjKYNU00yTf6P7gk0gwSNXycnY+ZdDh4cYMMvtT9F1Q6EZ+hscMIuucD5Pv7UP7ZyTQPl5ksBhct0X4pm3zbkQ7aIIiu3GTIpgNLsduhJGKfcM2U67+iWlavGqY6S7tTw7Z+Rbk/4izExYD1dKlCvLn/kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718499503; c=relaxed/simple;
	bh=6z2Rjv8XL8bkfN0mO1ucIdBLjEoQr6dXcHS7zHux75o=;
	h=To:Subject:From:Message-Id:Date; b=HUiTreA4v1j0vxwTwLzxRmt+oIvXOa3+khL7WDuwE4dKmqWQBJWy2+PpBKYtNBTTlVWeJNPySylP7PMDYHrkwqmcVgMkl9kSzzrBIigGfRyi1etnyR2GLt07+5wflFdjgCdMptCXFPGGpgcDx7HIuMiJ+mJJaNNeBIxJd5oed94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY2ljDM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY2ljDM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CC3AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718499503;
	bh=6z2Rjv8XL8bkfN0mO1ucIdBLjEoQr6dXcHS7zHux75o=;
	h=To:Subject:From:Date:From;
	b=FY2ljDM727e1DNaR9hNrKf91EOpdBitR4YUg5q+m8/Tn17oBIRFsT1tV4x3S60/GK
	 7YfqXQ3hmYAFSss0zCm9BYmXvYJY/bF2sDcxLAMticyrNv33dYpukedlaDxSp47IFX
	 Xf4lVj2q/UZlcFNhyNzQUS/9FclUbJZiS55SKdr6pr2b4EMCMpnMwZSUG1h7vG5LaR
	 ZfhrBgZtXhAjTl5Qu+gU4qDFOMiIBZcSVDG9wgcm1d3R5S2daoweqhNAuCoOdfTKIu
	 9fGHXehgvON+jlxzrWasRopsN5yRkkUBAtA2w7JoZY1oZT4P7gQRx4PPsmmq25+8qH
	 88rHq+UvGatDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9E9FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849950290.17963.2608265403190296608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022f713ad1107cfad018975892703de09a3d9d591367e8dc4df8cb7ad85feb96
Date: Sun, 16 Jun 2024 00:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718499502
