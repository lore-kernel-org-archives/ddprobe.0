Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACC5C8CE
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776550654; cv=none; b=R2Ih0gh87/aRBXiTTWs3M0Q28OQHj/nsv6+aUh6pah7yhITj4W8qq+OTLmArOxTL+GQRkW4Wc41lZz6qF82N3/+rTh1TbSCSkItWL7zvlUO7HVXpEgJd2zmQmYD03xhF99vimwg7y+xLg+Z1QB0VteQoUieihcShA4zLGZQt3R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776550654; c=relaxed/simple;
	bh=5q4wk7aauQ7/tMeQc5WXhkRxgoCC2XyHYU0cXHJhgkU=;
	h=To:Subject:From:Message-Id:Date; b=JVqIgGVN2aktb9yIwawz5CBPsJTJXEpGYkGh8FPzsK3eL4EZijaepDd7YFMWkemU7Fv9TEum3G4QNQGopYDI849DOU4kX0z2eKWh7fp0T8OpWyUNhOBnitsUisF72ZeJ+i5gMrYB0wJiVHatwZvQbtQUkg/BGt+mTy1+r6voPII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIuTclbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIuTclbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB780C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776550653;
	bh=5q4wk7aauQ7/tMeQc5WXhkRxgoCC2XyHYU0cXHJhgkU=;
	h=To:Subject:From:Date:From;
	b=uIuTclbUZcSLTJSa+/PxRHSAmosVGcatae21MblYcL5dwkrh6L/XguKJCBzxIMZNN
	 LH2Wtg9i3g18+ZXEatSup1rizgsqHURRhoya87jsv1kBEDULvi4FA0WRl6OQwEaNUY
	 Fr7JNGnOIMfJRPfXLWlMzm25xR+ZL5U0ZkjxfNebB0cmonx/KvhmG6hVXrrossywTh
	 qXKRzCTspm8l1lWJ551ClRP7JkMxcSDH1HSZtf3LmbwLP6ZGUsPybBDoV5jNHNcyZj
	 wwXiGEYkR58M8tCt9YLC6Ylxehg+HxitK4pgNSxez6WyzXAJXnWPDzXUjYrdxu3zc6
	 J/fg6RdYX+3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9457F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655065368.21080.8699674690895328147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a18a7cfa13970db7afcb9b097829fb14c00c5c8054ffd98855837d8f6da36cd
Date: Sat, 18 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776550653
