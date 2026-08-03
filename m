Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C8130D3E2
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785738634; cv=none; b=XMxsEBsbeQckbqoGFo0QZZqZK3FVKcOIeMSXjF53fysqlh7cbJTa5aK/OMAFWprQVbAPz0yA5HpKx/xnYB0w8N+r5WOCbiYMYjoTAIhwjaBY1eMZHwwsnncOfkoU2lPGC1fufGj9m2m/4+xColl9UKyORUyKlDL30PbEs+HXxZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785738634; c=relaxed/simple;
	bh=jn+WGB04+UudCf9O0wDin4GC1uOinuqo+UvzHvaiZTk=;
	h=To:Subject:From:Message-Id:Date; b=EA0bAVrMP78vn82fTNxG6N5ZvSKEvIfGhqteIzzrxrp2dG7v5+H3nbklKv/Y4ZotPf+V0/L7Z1BLUxzECEPU29nIQaihozgv/WAqqp3JiAuUezmBR1Czikx74OITzfhiHXr6x67/3cCrnUtgO/jyd0/egR7WF7hCB6yv++w273k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keMEEJqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keMEEJqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F422FC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785738634;
	bh=jn+WGB04+UudCf9O0wDin4GC1uOinuqo+UvzHvaiZTk=;
	h=To:Subject:From:Date:From;
	b=keMEEJqqkJQuw7cVUq/irDzcElAskTJMtS66CMfBwiP5/9SGN3wOwuu4wuQTQ46pM
	 d5zDb3X9Ne1mfsHIxiWqL6/MqwzN7llzumzkb+mHC+7ZRLxavFSek8Mh4jLfgCFrI0
	 +x/wzQjUdjdIhacteartDkht3Yew7MIhRwv7Jb0v+FTEbav4QnoPCBEenFwKIqIQtm
	 7B5AAxjQa1r6+iw29jfkVykKOtGy33VHx034qwqApo7qqfGbCGsgcmOhjBp69yof7g
	 cNcuTEY8E6NZEiDwJV9hfy60dzlrc9JT6AI3viOYsFpR3C7IA/OG2TIddDwYfNh4j/
	 1NmMjTFyyda+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5212C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573863378.11600.3356928144492503513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ffb2b09bb49255661c235adca60ae51c221081dbc3e208eba8e83592b104dc
Date: Mon, 03 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785738633
