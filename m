Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE917A2EA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768514634; cv=none; b=sUb3WS59KA6xM/CRCFyBSQotEHWtw79BEHC/a7oIY/V+8JexCGH3q+kRwJL4ki+qCA1+bK13yr+wAaSmDKSF63+sbDOzycNiPPNAJ4oc2GTnNps5lffEVUoDzQrMvSM/DTaOtw8L/E6yTbhj06GCXqd8BfyNTH7qSKVyeNdooPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768514634; c=relaxed/simple;
	bh=KflSlKRSTI5BSuMPT9sV81eHdKRafYVSjiWjHRgOWwY=;
	h=To:Subject:From:Message-Id:Date; b=kqITs5zXlwqIYlxpOiaUFgRv1GUXajiueb9P65pAyJW5A0j475J4Nq4OCcN/yPsFcV/fXTvHwMG2SCM7VCt5JvfXPdLsKAigBihdVhpoyeCSYWnJO3bXrSvK1sFawqbrlKLsORPUyVGhm/0fjqZehQobLtJJciyVggAPnuGpsqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klPSYFwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klPSYFwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79E1C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768514633;
	bh=KflSlKRSTI5BSuMPT9sV81eHdKRafYVSjiWjHRgOWwY=;
	h=To:Subject:From:Date:From;
	b=klPSYFwtsXeX+el5pSrP7U6eJ0k+SKjakRzhjE6tj9vuxrqULBvJc/p1eROU2YOeX
	 RetjIxTKot5Bhbm7nEKwBj4toekc0D/r1VaXxLU+R6uP0iSJMHRJeWxYohri5TXIJ7
	 STDgrNFPUkGfA/mHCm3LvFFFUX+FR6lqrqeIFJ3uEKhLonNx3X9LF5jIX/kANqIm10
	 t5Y7mgJWGArHgPB0OvqW3IYeO8KiRN4FXEIgj2C5DmK0acUkcQ1XbXGXsKD9gcywR0
	 pcZ97hfMiiVl99RRniX1dXB4JQvQjrbBwY942YrF3o4AqEc8yQx0jcNyMVzXzlXqdO
	 5ge1lMo4p5N3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E7D4662F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851463358.2152.6899980496748252751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c140da7b66200aab8ccddb1e1bd509880a126da53a6753ece63050594008e2
Date: Thu, 15 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768514633
