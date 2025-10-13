Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CBA2F1FD5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760393994; cv=none; b=TvYyE43q59bIpSYjLZUqKhgGvB2p6DQ+HsyNQVY0cgYRR6Rrucx6i4/R2sbIdIgFpOV9CKY/hebKSoV9kJbUuki/PxPxth0cNvaV3LoSY3IxFQ80QZDRg0ls9qEPVvhROsnpSWcFr8x52upqoTIuJ4k2xTCmoLEQGURGnIqEjm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760393994; c=relaxed/simple;
	bh=ae+1GOnr8lLqyy2SzWPCRx68bn0MGERfp0Zxhyvp+qE=;
	h=To:Subject:From:Message-Id:Date; b=lNcowzmrZOQ4rYU2B0v9kBW3b+uwr+yNJCBtrmCCzQ6KCHYHtRt2qY/IyogfzvxxIZrTe3bUeadQmO2JwUV1Etp6q8pTdWl1aNPone/jm+crAhbLW2lAOZkBtDR0USfnWH3+nEIYy7cTQ8URygXu1Em1Cvs87ySdElvMXL+Cpj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpciZugf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpciZugf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0919C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760393993;
	bh=ae+1GOnr8lLqyy2SzWPCRx68bn0MGERfp0Zxhyvp+qE=;
	h=To:Subject:From:Date:From;
	b=rpciZugfLP3QPZ8fCfSBoDvaXUb53y3viiXv0y49smHdHXKFMcXosPxsC7mVfCt/D
	 l4Z+3XBkVWxU+4143BwOkpMbYwO2NSdOubXY2PIXU085TQotYqcYArByRrIv+3vLUK
	 1xRJXGhDPIDjAWMRg6wwuFTYsxumFoIVk/TL9ORKqjZUHwylyaYzO4otNLzyxqMvQX
	 o4lGlIM+Nw64gVcsKaE4Kvx4YLbtkn4G+C857HTBQnU+zt1v8FYJ9J4MX9Hc7ITa29
	 yy0UQUMNzwqM7btpPtkJgcu5p/AH+6q7mLED9RhGDQtd958wdyERMGhLOwR7vo7Guy
	 73nxh2meJDifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91922CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039399358.16004.16175226304854437747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26384ff9fbae1dbefbe32934b555064f3d0178683ed7e616627d94beb8138207
Date: Mon, 13 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760393993
