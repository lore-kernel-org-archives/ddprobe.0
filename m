Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CDC1A83F4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735938354; cv=none; b=T26YbVC6cvnZDNywOPvSq847tpdr436XJ9Kwvg3nryteEJdikEjzUhxwRpp/f4C0+ajeCFcGrIyxOQBCGAjXZJCrLF2/1Kr5VfsB9ZNWkTuUgGWbDd28d9I4dXb8YweJx5tkZIWcyNndBhygs3zpGxkOTT299aVHzvLQjn1Ylu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735938354; c=relaxed/simple;
	bh=iLjDCfPyOIkSP71q1upq5Olb+gMYsfhzCJT2ctiSzDA=;
	h=To:Subject:From:Message-Id:Date; b=lWZgrO7Af8ZVqugJnSeQfBzWveakoKpt3MLCZilNxC4IoMM6MAWZkOC1QyWaRdK1z4YMWDJrMj9ZA5r/T44zga2OI5sdcNCirtlkk3P9lPCt7FgpO1BlwPtcPfCFHi3Ta/ovdaykJKpbckrKKEZbmzL2zg/GXm3xsbx/CLTMTvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYBr42GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYBr42GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1E5C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735938353;
	bh=iLjDCfPyOIkSP71q1upq5Olb+gMYsfhzCJT2ctiSzDA=;
	h=To:Subject:From:Date:From;
	b=gYBr42GKbCm7S5yqnXmp/lhIUSXSKf4Szh7mySYRZ49gEo4b8Rp+mR/Wnckvs/MSv
	 nDWrDGSSeTX62S/0UbRXsB3Ge3PJdwrpv/WXGPbotPIj2RkNYQC1sSfnsw+x5TON1B
	 jmi0ELp4auGbfzYGK4xkExTizujp5hHMn/BykjBc2oR+5qBM4WujE2i96OXQsWIbEN
	 58ixDJ9WBnGoVNSu00TneOcckVy5mSecTspYw3XszaPicXaHTWuWzdNOP80vSW2W9O
	 B4QANX4OO6DHB+3I2DN69Tj1sDKSmGGpscr9njs8zK/pNfqQOIVbQju1h0jkMdjrW3
	 iYML1oJ3YE6Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9749EE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593835359.30337.14403138547869100498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ca60462cf825a3e0f12666173948fc8bc80278f0e0b6b73adbcb7da77653de
Date: Fri, 03 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735938353
