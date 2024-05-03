Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF55139D01
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714716143; cv=none; b=gayxXav3T81Sa88FVM8CJobnuGdygz+8rSg53zAUPkDyXQsBW6OAJbOgO31aWyUYaXZbZihmyArpaqKR01NWKT2pxpgY3Rq5fl4g/2Itcu6CDAdU5yKUn5jX3SQ8SeC3vyiEV7OvaXrL9ARvTYhPIHq2AnfdQVcbGf4+w0KFvSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714716143; c=relaxed/simple;
	bh=ILGP8FwNbY3fXMz0cjpOKrWsRd71Rj9hNhH/9LcpWL8=;
	h=To:Subject:From:Message-Id:Date; b=dq1pRnRWHWry5WJ5r5wvMFebfrt0wY+Zc3Vxc84ltwcrUnnM5btVmpf9qFKXb5GsbC2UxW3HyMmiYtl9Yh8obpv0aGoG01fOe5BiU+vm8JaiXNTW+r2ORwle+UKfaHMEeQH9EznuVd3T0xIX1o6J2XjoRZrq1SXuj6smTWppq/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7DzbS0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7DzbS0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAE7C4AF18
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714716142;
	bh=ILGP8FwNbY3fXMz0cjpOKrWsRd71Rj9hNhH/9LcpWL8=;
	h=To:Subject:From:Date:From;
	b=s7DzbS0gW0huC+fpsFTGZUJWIGGou0diGdeqeQBdC2Pq3LTQ1G41U2/L9AEUAC25J
	 3zbDM9A/RR4QqO4aEtmDcUGmIY/fEwq5UCq5lg0dFGug2GdmrXEIhEWrvDR1vPSG+k
	 mpa51q6ioA/ijFwMtoiaVQRTym+Ny0Rw61rlsf+C42oz3ye7pmxg8JYQB3FSb75p9M
	 cXGcjYFFLrdalRAFps+/PdOiMMdtAm0WzbumxT65Xq6M9uilk5rzUdv+zlJAMf2+mC
	 D3wsspiCP0a4OM5yr1KE5ZzGLdOMkSHcnPh6h/7LhfG6D0MkVxWQtnq9Cz60L01mQ4
	 v71sQz9x6W22g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C988BC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471614281.26599.8483650739931921116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7724bb4281de4cef43d18a990687543eea40b15f4b31de578ecff9d2c5ea4ae7
Date: Fri, 03 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714716142
