Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EF4315D53
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790443234; cv=none; b=uSlgAoBrjmSY+VuBmqyo8fAh5iejdBAeJfcX8T4UjFApyzhbAKV8qFYrX0RkUDllm/jvBjF2UgcYE2SEWbvVaPjPwxAlLEwo2k57nStV0OxfwCYHhcXKdUknTfdwXdX7pNrU9s56FR1kl79F/gt/51QSPYptbXfr3+dl7McWNN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790443234; c=relaxed/simple;
	bh=Y4rc9E1m+5XJeUDw3wUaRUBuzSThc+G2fFZCk/LtSTk=;
	h=To:Subject:From:Message-Id:Date; b=YhyJOK352BA6I0m8DQLxsdIeBLOANionZqAddrGR/jSWnPkrGMlWqIPm+A05+bTwK3Ql/tgi4/Ckx1v4HED0BOKovlc6jj9T04gWOu2WBmqWrjCA425fjxhhnsqIbseNfaucxK//mxB3aK/xjCDMgtp9LebxMNiTMp5IU0HxXQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUbruKw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUbruKw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE01FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790443233;
	bh=Y4rc9E1m+5XJeUDw3wUaRUBuzSThc+G2fFZCk/LtSTk=;
	h=To:Subject:From:Date:From;
	b=sUbruKw2B7Jv8CPjlhONsu05SHgkPkgErz1jFyIxWSU+1yRaxVEwPIO2Whf1Z3QrU
	 E0GlOiP5AbRHkpPbCza/xdTe/UkeL3ShtI94wxxRazok4ixZKSN1cq9FTnj+GLGHZA
	 2R/QsptkGMCHTWw+N0SmqQUrJTL11UHwKWkjnFpGhvU7Y7svv+tm/r9t2VqZj4ApKD
	 a3AVO/IG1gRo8gP1rFgr+GErw8NAKcsv2bvnnDwoK3183JwHXVjBEzm/zh5gWSASBi
	 Qf5sW81B8v+39XnOxV5slHJsK2yi8GmyURIH7hMosXmchamBpGuUoKBTYI2KCtI+vX
	 b1XuqzeCmtXqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA027C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044323368.13309.2753637174929085834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe261084c456f9f561c23ee0f2fe10a9cb1cf86d45acfdcb7d6c608e40a3ace7
Date: Sat, 26 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790443233
