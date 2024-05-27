Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5961015EFA3
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716818663; cv=none; b=EBMSpxR/rgqRGbBz15IQcgTVtEpDiD1Mi7GAv2MeW3oqbfFQpAIh7P7gffpTalfhFkOB9A5DIOIlk6K7eAqTXmNznFO/10vQZUb3CQx/dEBaL53pSjE7f9zHebrJgu1dTfdWhAXOw2skCvMvcympYiPsnuJ+1jNcX103HmyJFJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716818663; c=relaxed/simple;
	bh=kFciY8ZUE6dXnRJxMPVDGahiiWxKlWMcvR67o7mAtPg=;
	h=To:Subject:From:Message-Id:Date; b=UFXa/7HgNCqNp97i8lLc2jn/TEoDRkK9XTe4fib9OKH2RbYbLJeRTM8UF5lsrdCYPOn+vzlJyryIJhXY1DdzXRLyZ6P4KFj4PDaLB5E9mKuFp+HczU1ykxsFPPG6axqYmtPIdNh1nSiXqKeIEnmV6lC138fwqRY70g4erFEZbrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLOYPCpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLOYPCpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB25BC32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818662;
	bh=kFciY8ZUE6dXnRJxMPVDGahiiWxKlWMcvR67o7mAtPg=;
	h=To:Subject:From:Date:From;
	b=JLOYPCprKsIoCDY418tqjY0Shev4XCWPZqrz4CRqmcbllqPQS+zhMO3gnQOBed6JV
	 1St/zsm9VDxeJt0GCPdgWjPvu2sPA7yS++5UhxmRtF1hxPVrypHJppc75nZYYWb3lJ
	 GKUuG2ktCHWE66sCoVBXktlt2tmlglAOz9+YzfjUhNBKsg0EkXZpWLdhFtvlX6tiZ+
	 +pergCnMkv0v5ZvK2Y1F+JPUewx7kDQYhK8pAJUWuYsAiNl5GVNfAh/q/Vr8IpiNp5
	 SyZXGLxcNKHOXeRF23UUfsu9/ocYh3+WzirX8fxqs0NY3NBEbBh9bZUoge4jpWohqO
	 XLRc3vAb6eryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F37C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681866280.10350.12843627640018672971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5178a96e639546a5f008f15b29b507645e2ed560030643dfb749ca202e45fe
Date: Mon, 27 May 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716818662
