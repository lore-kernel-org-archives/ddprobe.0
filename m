Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2437636D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751260794; cv=none; b=KJA0YI3v6j21PWVagY6D9wsbAsY+bYk2Ifm0g/OY6Xfk6u18H+RiIXdoZbBE1OUbTRsOy/qJB2hFCsUhtY9eh80C14yw7nONW0ujTLTrrRGBz/aIMCp5YKHrCt3Wfw3OW2wlCmupsVcREAKULCFyZFKiujsGIexNdCMXP6U6sMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751260794; c=relaxed/simple;
	bh=2QQrm7oTigtmYBzinE965GFTCFBb1l6UOCgDy5BU1gw=;
	h=To:Subject:From:Message-Id:Date; b=R2JuUj3jMGwYkPibnc7ZF5t3k9YarSt0hfT75nkwxSgZpSn4S98FUQDh76E2vXVW+9Y3ikULs+2k2ltIIOmFzrk09hzQk/WFC1jygz+ABojezkvJV/jqXOx1VQ/QRq1I8kXXKyXyY/ItcgmtknzVpaGBMe6OrwcRb7asTx3f/ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8C5PZqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8C5PZqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F6BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751260793;
	bh=2QQrm7oTigtmYBzinE965GFTCFBb1l6UOCgDy5BU1gw=;
	h=To:Subject:From:Date:From;
	b=F8C5PZqqUe+jScJHCVHhNBnZQ7ohmosCK+pAIhDAZabufTG98ab/U6y3V0ZuK3pVA
	 8de/9GxkjS7/xNIptNeUJ1r4cbX0eqFiS4oG+AWCt0Q+MRGmqMHx1W0njh6EtNCyJq
	 6FQEaYLCGI9bBqfFUFQsoijF9P74UAOP2sy0wBhulPscXFeCpIEs2N1YoaBPd1ym4m
	 BwuI6Dqv4zJbz4N+90WS5bmWQYd15u3dXwnw1k1udbmSFfxx/m61aWs4JV5NIHHTQ1
	 KSHe+B+NQjj7by0POxRLX4AI52b53zwhOgkftN1HlweImWxCxouSTVidrEoVYpKxvA
	 mTyrryX0Se4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAFC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126079357.18223.5542079677252654072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce8b9e8190e7a5a1fb1241cc5094adc2a31c3b37d9d1b5b2f324a5976573d40
Date: Mon, 30 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751260793
