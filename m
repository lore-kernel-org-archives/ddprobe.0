Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E1B41C62
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766405634; cv=none; b=XTHC7CNu6Jz6VCf7U4gNeV9M2hWFxhygBGQ4iwgR3FJ6muuItd4YjKbsPPUyiepNRkfoopkUWmipCne9pyliVgtCPFm4g6HpPV09TT9g8tsBHRpaoFgj2xp0o6NOzsLq1pXVKyKyyMAdEgCzkp+NwpKE8NwKPTQ+oskAsraDQq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766405634; c=relaxed/simple;
	bh=8hQNU0GdKmuDaNCPBLSbJ6cUXoHph5OhPLvNNs2C88Q=;
	h=To:Subject:From:Message-Id:Date; b=ZOPWMEZW+kM625E7rwBuCHUj0pC0X3stu9jDPTHLfG6xjasGJ5Eum4J9jhvkgJd0JPduTGL1F5sdGAU07X1YVg/05gOHKkAEPL+oYM1b41/OgM31DJ8Wo++UN4K+Z1ACPi5oFlc5ZPa0PAgLwOVHpKSXF/5vuJ08x0y72Uq8OvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0OSxuYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0OSxuYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D017C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766405633;
	bh=8hQNU0GdKmuDaNCPBLSbJ6cUXoHph5OhPLvNNs2C88Q=;
	h=To:Subject:From:Date:From;
	b=j0OSxuYpN+Nj8b/sGp2pIqsjiRWBAp5pII/q+JO2Oq1tpEZhzoQMYdSEzdfP2sCIc
	 XYH/1EwyeEPFtLWX5/7n+90Fl+O6SXYX2iSvot6OofjSsKB4c3UdXs9TlzLWfbwe2L
	 fKJY7JuE7hbQZC8fPRmTFjU7nuOoY28J1IlRC0imSMIT07GMTPw6/Ynt7+89R0DVAF
	 6ff4eqjuvEdttnzYTpM4/SZy4xlSAfRz9v8l/GQfU3A3NpydvSMgxdNKCExPgcyAf1
	 X/HOAQ/HPcSCJIiGH/FIZRNKZP+bzbfjMkqcfbvdwyFX7VcwPBNHFRNW0V2Z8ufOiD
	 UX02Msb0OMPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5DE6749F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640563357.28772.5229140248029416825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ca4e38c5c23fcadf5aa217151cf6c70288e57fd98dd1b6a2dd27d63e10fd9f
Date: Mon, 22 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766405633
