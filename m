Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544AE1B423D
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743830994; cv=none; b=kMyGVKHmDNmuM443oope5qMjQXDgxYHCtJbqJF8W9Sq/95xBoy86Wxp0UCrZSZ9oO0y7q2bVZYgk8Q93Lq3ZbIu2wron8Z8AeLmArB97GVtkSZ5Ty3eqG9l4iOdHkUs49/vBG8qytCGb9zyOxP7Xf4Q6PhAcNzbPE6ADdiVB8lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743830994; c=relaxed/simple;
	bh=PTOfbcp9ZBJ+zxyNb005bJ/2BxgPlcvnK2HdZ9SNzM8=;
	h=To:Subject:From:Message-Id:Date; b=qdDxrWDPRrrVFXVs7y3zSlpAuE42sowwUkDOYneC84cgY/w0Epj20gQkgpUiNWXYezNZhRz/TDKYYh9bKv8pdW1YnBpH1m3Yz1fx9x29gDeFxREYo16LmbwuyVcd0Kww638I7PFucvco6FCgfKWWcb0MCd7GrttiR9NBEld4GxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuMlLNDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuMlLNDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B291BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743830993;
	bh=PTOfbcp9ZBJ+zxyNb005bJ/2BxgPlcvnK2HdZ9SNzM8=;
	h=To:Subject:From:Date:From;
	b=PuMlLNDDC6OmKFogTxC+qTUKOZjM8S64I/0w298Y72od3iTkdzxwNZdHN6UDp+Ar1
	 7p//T4mqMg5fRZpGFjO0QckKNERzqzy9+3vsDfYsDQz7FMUN3pyh5FWQzlGLRnkOie
	 PdfkIJSg0IXQJLvpP8as5X1MgkwLaShhb1qLsVxFsbpEeoxcUzUk5Kdb6xJLIWlnDk
	 9Q4Rmqs3K7O2/EbF+7vbEYYS7Tv1Mflqw/SBRcjX5qFbj9QpvRjfZmVMlVRlKzty7G
	 Rx3jr5QZ9bWzUDpDbEtuSrkLtcXGRPi10rCKH06DLPq2sUAMrHMLezyVBJl1Ejkdit
	 IkW4AtEtR/MUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C350C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383099360.3131.10313838617180886228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1310bab758b2c21d39be325ef40e99d2ef829d3a0ac5c08a71a389b0cec1cd
Date: Sat, 05 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743830993
