Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE28E29ACD7
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750693793; cv=none; b=SMackv1w1gCThmdQAHTPPWGgirG73ZsrhblSO6BuDaxwMylU13tasutk7sgoBVgUyd350l7xNy1uZ3gm8Aku3TTb7ck1ohc1yE7sdCWp/lygIsJMrrEZjfJ0/bCt2ahufOugqsHwaKbeAfE9SnlpAWLpJ+gdKV3gTQjUplCqWeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750693793; c=relaxed/simple;
	bh=xgs8Ei0us/3bNGvsflPR5WhHIBUuq/fzXGl7R4NPheI=;
	h=To:Subject:From:Message-Id:Date; b=qgYntjOiO2lcP6eH3pQrg2hCyxz6pBXYb6f8EkQgblnPxZu4wCvB/sEBqR9ijvfDfKRp8NarFvTExUPctqpSnf3aRFyOBym7U+QNcUnkTnxX+enle/586MFcr4oivmIGrNAvPwmAn/fvwRkwz/N0c9rtmgnrmzW/7wBqgzCR4c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV4Ca0Ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV4Ca0Ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB57C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750693793;
	bh=xgs8Ei0us/3bNGvsflPR5WhHIBUuq/fzXGl7R4NPheI=;
	h=To:Subject:From:Date:From;
	b=MV4Ca0TswEQQHmN9Od/zk7lIWX63s/CVeatjXaVNKdN5xtSGzyFDLjHWu6TWkwNnm
	 /dywpFLVmYCC9xeTMW0D563AjrDHNiTDiopYuhlEdeGKzvfhOIaw7a7TnRzHwxXMTj
	 bV33ZY/l2dl4Q/hnRLhBXMoBfdCJk/VaeOMI6E8m6OR+NUZOKhsFYlxlxFYKpvA2pe
	 OeOoBy6wyXcaRbAjfcN6mR+OAFik29h0TCQCOm9e/ciOUOw5ufLsYo6WNepFxXYRFz
	 ASv+luC0uQj4Cf8QQFCULAw/LY8lqwnebhbaN6UCnGe9/XmLLJ2MWgw30ZUVmtn9N1
	 5b1abmvWjll1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFAC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069379357.27497.16778592954680677222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9313617de689cbbf6f0d21bb72ced9abc0db365fd12e40493e843296d3ccabdf
Date: Mon, 23 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750693793
