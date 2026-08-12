Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A08368941
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786561234; cv=none; b=Z6iDSDAgloR0gEVAFZMZ2OeKkPiTJQrfNRS522SBHvxYdgClRRMXg0OC1556WXeVP8IT1o7wz6OiACFKu8Ckj8J7Vk8SFug7trVVtuaX3tcGgzhYi7+nKBCguPHgwBrhYPxxWZCJDtrLyqsxdSHWSE8cW0xukbrH59WCw7XW2WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786561234; c=relaxed/simple;
	bh=kijPyR2m0Fz1KhQWpPBIn3YkHrZuDw43tnwpJXQdJ2g=;
	h=To:Subject:From:Message-Id:Date; b=KSuk9Q/NjZy6HOyuVJ5xcGJQCU24bTJYZKHpAnaeai1/KpH7AvtP55WhF2JqLtaqRxWSW42VebOlJi0usuXAG7EAj7H56qW2wKOvyrwc7ZRMwNXZoh8A/wQuu/Vchh1+q/s53xfLwybU0MM1PUNGcE3Cw5wp5ytisUW2X/GjYRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msqGW2lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msqGW2lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD762C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786561233;
	bh=kijPyR2m0Fz1KhQWpPBIn3YkHrZuDw43tnwpJXQdJ2g=;
	h=To:Subject:From:Date:From;
	b=msqGW2lcqLJYDW+VSSipP3rO+t4L+a1e0R5pF84EmfvJfFYQbPuy4Xdmo34O2uvOE
	 5/IPJb60orcE0iScupn7KD90+5kgOmUIkuKuzlDwUUPAV86J7xeJkp6gr5IRZsO2+P
	 d1jVeoslx8Dv00wU+BGyW0Ho4g4Z+fx/LlxhkAOG3Pl5/7KgJEA91JOyAVc1pPlytS
	 4ehff7s1wB+v7lEr+GDy77EMcvHuFJ20CsaiFblUH3ZEtIRQb0qDq07cOJSKSsGUFP
	 y9I/v55TldFeCA1HruCDKJl6+HoH2xtOy55Xr3NT0ZlyJpgWHWHrO8Ft5eM9qVO84P
	 i1vTjUur4QCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA77AC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656123369.31114.16989192518965674482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ed03d1220d184bf7e9d326898773ef41c16ba6e46ebcb345c2033dc2d87eba
Date: Wed, 12 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786561233
