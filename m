Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE9B3D69
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728969354; cv=none; b=WOG72IIwlQYdcztSVgYtzDEoz3KRIhFK0r9iBV5z8Hc1fkdFJlNRlxZElmmx3h9KJklnfim4VW45ZGZ1lpLwmryNCL8m0+r2BKsbuO+SFUXvyV96ju2jlrcFRCS3ivIT2LAlyoy8xeViuUiP9xhSYdiEf1lecr6BqxYoZbWaWLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728969354; c=relaxed/simple;
	bh=nIyrVPpdNtQawbSE9AopN+q+qY+bbRrCamJ3G3eYigg=;
	h=To:Subject:From:Message-Id:Date; b=cZUGw/WArdsZz+PuwuNodWsvT4yC7ciHkNzM8UV7BwVlm9NYEDbitDBZ7HFa6BsrLxRW3k1Zt15yKpFOxXjapsFtRV4lFXz8d9ihwSvei2ZVyF+WCA8zvDpr01nglZkMPyn76WhtosDqkA3X+kmBOHAffgTYiG/aq81NPVPjf5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwAJ0RTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwAJ0RTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE977C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728969353;
	bh=nIyrVPpdNtQawbSE9AopN+q+qY+bbRrCamJ3G3eYigg=;
	h=To:Subject:From:Date:From;
	b=GwAJ0RTxij9Oyne6wH4+G0Tqrzvn+fzgnZOTxVb6yuO7worD0H4UmhYXWLwysOC5h
	 ZS5el+YcQ/jwwxxHATk3Tv1zYJLWorXSarbOTABMSVFNJtWDD6EziDKkXCItB00eCa
	 bHgFGg+RlvAdX8D4ZKDQvT7yYLz7Qzsgw2SzNFSswHKpAUW0HMROGDAOML9+elFMnp
	 YKyTtQP64MKfXHND6hf425MTCk+Jd+ELGl31qMheAgsNZm1cFFoq+gsPkW5Q/nhhRT
	 0C1EYT9RB5dyupMWhsMBOlg2mVg4iD1Io8Oq4gXFvWuTU0PRdWLqxbP2s1tUsLxEPT
	 vNdzRW9EmURcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CBCFC266
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896935357.30825.10481968346635398381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0f06283d9cbd4a53013c1691f217a56d3cde0cd5c56796d7048d17619001bb
Date: Tue, 15 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728969353
