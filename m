Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610F72D1913
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788117634; cv=none; b=eqUa4Zw+uE36+oec4vEvkLVSvKSzd+49ihvBtP5hvS6JKR6oG+kmK/ArMah4QdPD+K6PrIfnnJNj9FIshUaiEzbqOvjrvhlfgeCx324ctOCTOEuFYxfaMQl0j0H2LvUU7f0oURekyvcKZWV26k6GgNnzmm8TU/Fc8LhAznwMd68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788117634; c=relaxed/simple;
	bh=p+Kec6TJlrF2WDk13sgjlY19J95pa/kvjz7N1NfX0Tc=;
	h=To:Subject:From:Message-Id:Date; b=YLaqslcl6A+n4NcT4upYE3TA5fr2tjhXfs5dVbpsVxwnB084jGju3qFfpJBqzakjoj6yTo4M0Pt2NKYfveQ0EONgy1mR1kjvh2jwLck9aSIxqX52+ciRhuRK7A+FHf0CIwav4JjBmei4pu6+kfkhWe1lDEeEc5ZJfW+bDN3WOdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p10s9EoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p10s9EoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D362BC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788117633;
	bh=p+Kec6TJlrF2WDk13sgjlY19J95pa/kvjz7N1NfX0Tc=;
	h=To:Subject:From:Date:From;
	b=p10s9EoQPv+fOmyJMOkK3aD7z8ovH3k6tuljq0eUoz86aK0vBCJ3mCGDEX94FHyHv
	 mAfyTJBnqXL4Mhz7WxezKa7u5VvQIGPJTrECFGgvy4cLbI+ZtrUhJWT2Wt9+aeWl+K
	 eYSUpl6s0zuJnTs8gE+dolt52V46hMl79cMMlxunf1Glcy6x8ekBDFuEZzDotIv5Cd
	 UxlwXoDkADVhv3cR9WKiJCzy5GXX/uDfyOxvcDH4nos2uGfxwq7N+/OnF2Q2Qyzp/u
	 nJiCfF+CYSqX4ASi7kDIKOaPN1phblzCbUAE6bI4RRby27uFo2XWlWgzmFuI3Tdlxj
	 58WveMK3O1Xzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14F8C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811763368.31623.4936709527904224144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd37517d3864a925bc37223ff5439d03d82a249b05fa8c1e6e942ec40607af7
Date: Sun, 30 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788117633
