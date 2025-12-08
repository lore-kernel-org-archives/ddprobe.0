Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93D1E0B86
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765171974; cv=none; b=LHeTpgYBZ8cnuMZ1eFaU9Vv6divdTLd8130/mvH3+fljU6yrv5n+puDg2JQx1/gI8y7MLl+K199a4ppUwthaG4lfakIazquPhIMsWfhs+qjcx5hfBVQdc+Wf/uJH/Qr95m8aBfwkaU0zvcFUw12LOm1twmN/vl5iNEmzBkPGTo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765171974; c=relaxed/simple;
	bh=Usy4IyZCHckIJHwVacFtSdfKIFy/wid32Z95pklc5uA=;
	h=To:Subject:From:Message-Id:Date; b=KDcesMbwYqSMWEymjePDPMGDilI+bJWy//qiHHSE48/2rSOWqK87ISe1kN8vf/RQzlHKCBkpBKRjHnjIOBGbR7uiKJPVRaBzrGSgFgS6UO/jlyR2xFL4Irr8NgEl3JBsAbmLny8bA8NMJM5r71AHe7T10VlWVrXkilPnjide3E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n15azK3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n15azK3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62DDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765171973;
	bh=Usy4IyZCHckIJHwVacFtSdfKIFy/wid32Z95pklc5uA=;
	h=To:Subject:From:Date:From;
	b=n15azK3hnxuKWCJzpJ8+QzUuvpv9jFnM8gkjj+qrqY9/T4Z4DoTCPmBkp22G5G67O
	 HToRTGa2oaNNSxROH+oohJaAvwrvB6r7I9rdecJhKTqtcKAkYzjCbJ5JndEQ7S6PtA
	 8dcC2AaflEYRYGAOmK1cnlMkuO08QD/X9hkOKyxe+FpSaN4mJKgqJMacwNdUBzHYOC
	 qB1aRs0CKdzZane4cotjCnvLLDjXZehCZTyZrxTb+WmYcKuyv+xSrjYSQ47BM0052R
	 bPP14s8H3TGl7A/3c75oRs7XEftIvu7wamMBVkza0cp0LEK5r8D9N85f+ugKozkgdw
	 YVMbzO6tZvcOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B5D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517197359.16918.8866667385971663034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3148100f99cd31d3380c22ed9e5013cce806a1e50f26d5f94b7e0d4cfebd7b3e
Date: Mon, 08 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765171973
