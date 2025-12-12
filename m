Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5122D5412
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765557774; cv=none; b=bgWppP7KWqG+wZhidnkLfGWAgLVDRkQn0uYu0nUQoZ+JoSAkqPBjGZG4NOUdhFa0fJlF4gsorp8lXu6BliXW9O6ggVW2sb6pGj3IlM7mROs0vFxK2bDu9q3ruR3EU/kv6c9daC0aasbdeKx9ac3L0BvD4MYg9TsCTvGvCQSVMd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765557774; c=relaxed/simple;
	bh=ozDUG367aaKv5RK3uNXESEiY79EAIg6jaxTMcBqiWZ0=;
	h=To:Subject:From:Message-Id:Date; b=RBaotpGDAlMT8H7D5lxedmRObsyL+sK0n4OZmcf/FKT3z267DXtdg5CASSUD09MWInYhgd2UTkZh8h0icwtqWdJR7J9seHkpGmySFRuSDsF/mKf5LxdIMLZYTxbJBH3uJi6qfDIeerBwcG8Pi/NGmzcHYQxzlqkDcuDoWAuDGqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j86R8iZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j86R8iZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765557773;
	bh=ozDUG367aaKv5RK3uNXESEiY79EAIg6jaxTMcBqiWZ0=;
	h=To:Subject:From:Date:From;
	b=j86R8iZpRDOi9t9cmiSpm1KMV8XobbWg6C4KUolLEoRLkNZjfJqt3Tb1Gl6QwYP9H
	 ZccqHnPVHZ0o+wl6c3Id42Owx+HSFoIt4qkVbtO/SEF0DliYA6vwBzwugbSPV3VPNf
	 LwUsu042r8EHpQ117DEHooglWCUnp98r/szf102p5r4KJO8cLtRMktPrkmQDlZau9v
	 KF7O4BqAWFVE8zebbG0YNaCxlHRUomlz9aZO1WsM6Ma1QlD33TBs2N6zUoA+/iC2nI
	 QpwmIyNyh6CDQf4oR2asB/YGgJXhgtRWef3ZEb6tpJa1LRYWB3p14OdZVBXzTFybFf
	 9M/uI1bHyJtmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91909D59D79
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555777358.7473.16585476570393019918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af70e0871ea1aec4e3bed13a06aa6e150f90612b1d8742ec8153dfd51f5b229
Date: Fri, 12 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765557773
