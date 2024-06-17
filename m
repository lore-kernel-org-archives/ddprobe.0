Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493741BC4F
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718601503; cv=none; b=Tdx1fyUOAJTnX7SlZAf+ULahlmyktfUB04l6/lA0mzHRz0luJQWwszJn8G58AOWLS4UMi1L0XHd6gfMmhV22PBXP2LWaRN0WJXgp1iShhno/4D1SZedPu9qV41PsMfdg+2zidocpmlxOQfvjvK7EnFBVxZ91n9RvUmKQW7IArg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718601503; c=relaxed/simple;
	bh=X2tIWuw8cAtzaUkwSt5SN9JefOk2RBBOXmdCNgmjGkY=;
	h=To:Subject:From:Message-Id:Date; b=tso5pCnuRVGYDgiKPnzaqd4S4xAhx57GeM5Emc0M3fWx0Z74hKHroX9p8J+4e6361aD5sHBWhXhpg2x43180cUUnfazm3z7+/SNv8wIl82rVWkY1S95m/OW4FWmEQFYtyhK22ZFQqHs2uG/pWN88bFja5ABXLKIQHM+jiPJmZBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9YMLhpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9YMLhpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1F5C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718601502;
	bh=X2tIWuw8cAtzaUkwSt5SN9JefOk2RBBOXmdCNgmjGkY=;
	h=To:Subject:From:Date:From;
	b=r9YMLhpVGfV52SaR+JlERfpbMCZjTClMw+19iUW2lYXSvOfs1Lu1mLXjKjhj4GWa6
	 hVa+vyjdS7guG2Q8RGcP4gTlEH5Wmmtebhd/78kKOMsnT4Cn20OCDzc36w3b/r64xF
	 r1q1QPg3lP09KdiZ76lPpCugDb3lPfIGPpCmIPWpsSDDKH1p3n4/fApO5vASnwCiBX
	 Z6o/Wlj0IAb5Di8TAlaYS4VfuHmNOTj/CgbIbYQ8jsdOSBOo1U+eA/1ak0S7wTAl9k
	 H4vvQ3Cz9CgfKU4pkHgPKZn6ZOAG1wU00fWhs1IaypA1LLp34sgIgLodX2Sh8Lv8hc
	 xtY+uPxzgBxjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C950DC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860150277.16353.7974667046507490837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b465aee1a25bc57da56518b6200357733cc7b8db5edc75ae1a7dc2d27bd778
Date: Mon, 17 Jun 2024 05:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718601502
