Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B602154425
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771752894; cv=none; b=HTdypYfB0Nn8q4IN9af/swZU0xqTJG6Mf8wvKbx7M5PIrH3SuxQMSniK6OwHxMCl7PNyF0KLo0yge/uG5dTRNiLqa0N12HIkwV/gar6f0z3Hx5263smTrOOejidi4uYuYMJEMRlNln01pjiPGEdxr/B9fqb5CxwiOaF5Zk/xi7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771752894; c=relaxed/simple;
	bh=TAnpG1hr3UX6NWBvn2h9JArM/jS4Awo05aXo7iDiu14=;
	h=To:Subject:From:Message-Id:Date; b=O4GdM9woeRhex/jvVd+WWQLMYkwXTQ51FiKwCoi8or0ZnzzAXoicp75C9JYLF6p5WjYToRuThOVtxM1P5yrSNe07bWzs4IFuLqEes8zmLSTY67TmlqMTVS7nrsQKaorq43ObdPmPm2qbnPPEL/kd/rTAGMgpzBqKjxGwAMr7t5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnujY61/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnujY61/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59D0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771752893;
	bh=TAnpG1hr3UX6NWBvn2h9JArM/jS4Awo05aXo7iDiu14=;
	h=To:Subject:From:Date:From;
	b=jnujY61/D1tigRMI113tfSMys+IN73qCyzFgVw/6mg5j44tQM09zUjrG4jpdB/D94
	 lPQiYorNH8IxZlqsTuAHIrOW3Zbj19T1lr2Llb9oAUEN1qYbKtGIFmauwvypc8aRcP
	 MJF2a6FLT6uc0mzkxAa5PqoYV8i+vuHA0Of41jgOEKH1YebMdCecSxZDHmsGwU9eo6
	 6YeGdTDi+WJ8uUEcUxOVfJVxsAxsLcnDOEwJQQ2methoRYNX0Y9u1Ot6XMO/ggyZMO
	 HRAfSyCFy3/ilfbBsDT/JDolK7EtD8d0YcMcs4XHw1ndwgtAQH803ipo9Dg+aSNREH
	 s9ZrGljdQbfxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459EC624A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175289358.1235.13555595135866855051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e16f09810bcf0ac013f2e7dc2f601182153cd05f909ab140ff5c31334d0f7e0
Date: Sun, 22 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771752893
