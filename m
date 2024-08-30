Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEE617C7D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725015953; cv=none; b=Tm1mT2lpK7DkM2ihjzuULmw8PCZNJfeNJkpLqtbgBHx3nTmXxmsyRygC3AU7hJAnW3ivrv+AEJAGSGVlZrXPmgIAB+/Y76pX8fAzchmK9gtdsBZjV1HLbNRsWoY4coA70+Ek8Wv1Qg+s7Ur8MuCpDVcsqErM1VxMuMb01GI8GlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725015953; c=relaxed/simple;
	bh=d5BD1KU48dA2h47S3xD6FwD0K55cR0bAk/fwCT2LiJw=;
	h=To:Subject:From:Message-Id:Date; b=gckC7TOjfxcH4CISCI+OpUv1kfvdfpHei+StNWZREmsmotPUbMh2H+SGId2ElbCqbxMYXp1zODD4jt8fWAg+B4q/FByC5b3rIKD1d/+3gd7nwZt04kS94Vq5MRtqxvoNI9vEgI66kNmJUW6mzN2qrJbHdKCeAxXHdz4P7aVfu00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE5j2CIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE5j2CIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B404EC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725015953;
	bh=d5BD1KU48dA2h47S3xD6FwD0K55cR0bAk/fwCT2LiJw=;
	h=To:Subject:From:Date:From;
	b=cE5j2CIOn+M80c3bLCg6WA6Ggr2WSGoO28W0C1DVctPHDAPY11yPSSUdP0A7UDxYH
	 krw7wFZTYCuzYM2E6FYJFdear6Up15PiGRdrLuUfoHAOSrINmhBtGMc+xafQmwExWJ
	 Kf6TD2KoGE/Y9NjmQDqcukC0MZzYVYlle1Hcsi+q+An8F09H2Rj+ZJQV0I0GZ4BtEQ
	 bqmIaF/HRPZCB4sHdyTgWcnOApzjgcXYQ2cW1PMolWkzdM+UsFfWdJkn+1h6uNCIv3
	 o2justgI5Q15HBz8o4Y+SYlATbWwkyKHtPq4pCiRM0n41onEMAFQF25/3ocqyjMbmd
	 CrRFend0TQXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B79CA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172501595365.9019.5887123395238360244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ad20245ac00603b4a90f97d423eb08e395e5907729ec16b99de82ae44df435
Date: Fri, 30 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725015953
