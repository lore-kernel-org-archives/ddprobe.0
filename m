Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDCA2D8DDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844394; cv=none; b=JLfg2cwTUM53EYcqnA8x2KnP2Y3goOU0gx9ce16XMTrYMJN+Qq6lKSJX5uaCh7oEEXNGsRGwe/Dxg+Nyq+PyjQwk3avKm7gKjRDsBzyazJDUUDR5mutiGbcCDIDN7oZxRhUvaPAsKobeA+tjBoMJVAJtj9TnCIfzdravvoCP5oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844394; c=relaxed/simple;
	bh=ViuzhCsks4IGY0npoO0Mm9eLoNBKJbCR6ZU/mmaeLng=;
	h=To:Subject:From:Message-Id:Date; b=Qx8+B3UOpGmUcTnz5P+PTSuevlubxMgJRoWVOy5xNhBvrHIyHu2XRJNpcaI3EZbLm/vkOu31ulCCfjZumXvRUHFIqWzLttNGDs2uqTAh8JPU/xPm4WzPYdaDIV8oszyNSLHtLk1Vb+JxetsQO2vF9ksUWSqpdW/dUy3oU0NtGb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7q5WLfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7q5WLfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90EFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759844393;
	bh=ViuzhCsks4IGY0npoO0Mm9eLoNBKJbCR6ZU/mmaeLng=;
	h=To:Subject:From:Date:From;
	b=u7q5WLfVEbX0F1Q9tGlcJ2BdfAawDOeZazEvGLUnT5DSETbCtHJCCrh6PEgqfztwy
	 uqilaJNyuRLtb7qH6NT7mnCePGm6vX/AiBZpfhK1sxdjw8oV9yy6CI3ljYkxEKBzxN
	 WFWxhQonSBqCfaSC2HT/NDa7fv9k3x1TpirQIMdFWE8ldJHEZ2N5FaJ1iGRmbP6Z9N
	 Mwq7O0D1pp5R6npRYxl7hOHfQRm5m2N+DfGN2fm1ryJev03YpcRfMi7mM04mGVNNSO
	 Fv+q7tS+hoRYlZqWC7/i1+C/uMw0meN8WVVmU52QKLvVR6R9uWxH7vCpHdU0SX1VIq
	 Qz/eKThorvw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95134CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984439360.1343.11962573778143122446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e98be317a5771843c2a2d2b776e47108c87d670cd380abbb6b00fb36cf8c5d
Date: Tue, 07 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759844393
