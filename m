Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5E723C8C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758252594; cv=none; b=njUi8Ry2LCApOuNIhcg0tQiAZR3dRtrBjQBUQgwTetnxtfSR6SY8oOiyMD8syw8Ah/92LAJCBgBNJTnHUkvFLPDWShXKldaC9MJ0HD6paFovUQx7TinpbEi1u/66hIFoj6Q0LbyOMtmJYezn9fM74IR9g43YqhfovWrT1r0bepw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758252594; c=relaxed/simple;
	bh=Sjl9zWs245lQPu4NlecQK0hshOk7E92nGUjicVwesF4=;
	h=To:Subject:From:Message-Id:Date; b=L1qHpX8KEr4+MID38aEpOtJ+QxKPthZPjsdEOAgoBd9HDkpPKnumBZnhM0FQE/gx6gXk1HZCTtrUCHGt2ll4cAhPFc/JfJLxf32YGM1934qQl+QsD4El3lmOQxwAru71U8b8tC6voPM/MwBhmoL44cSgiC1fskAeoQaL1KsQmGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+NpNA+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+NpNA+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758252593;
	bh=Sjl9zWs245lQPu4NlecQK0hshOk7E92nGUjicVwesF4=;
	h=To:Subject:From:Date:From;
	b=B+NpNA+6ZMcCyF0P9dNZv+ayylNzlxugd+lio3THHq3D47AVflpjtlEchj5qL2kMp
	 YScW9OwDeCkZVBKYGWTxBjn8VjmZtFHwD6BQr/SEo+nnqPTMruVVkachnaiUO/IOrE
	 w1uddvZravJRn2HCm+vB4NjsTSyVhO38meJ+9c/S5B2FWki6BT2EUu+nKgeFyI7aoV
	 QTxA7etyT+sV0WUNlb+MT9yYbVGplmxcRTlmK72lDKq+oilC7Zj4t4c69tPqj4/AK3
	 uKRWuayZ3IrgvBEy9LkGDYCTGx3+jwgVKUphLjUcKQwgJPiM7H/6wXAAsKuxIPgm1O
	 iqeb5u20Gdp9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B1CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825259359.4275.9199445117084772954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013920acd74a322ec2ca4f242f9e123e8b26dbe67736c69d45ce8d0bbb5923b4
Date: Fri, 19 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758252593
