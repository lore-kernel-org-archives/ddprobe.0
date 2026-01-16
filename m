Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B101624C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768542833; cv=none; b=mGDWQ/QXvoPvxg5OnXW79fT6SEmFhZgDqcOKGUbFVjyc5N2PkCQXuDmCGsQoweaRg+ejNg4Taa7T13HCj/Z2bD4jK5aAN6vSaXmIvhaLwPPoH+CYjYHCFu5/mxiJK+Tx7p03D6JKc229eRhQ27yvQT4/oDNTJlT6tBxzlujEgtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768542833; c=relaxed/simple;
	bh=S3ibod1BPf94GKuKrwXgriQV8q4ReG3cKEanHyR7tgw=;
	h=To:Subject:From:Message-Id:Date; b=Yg0q3HK1wqwCkV39rzfnG8UMiR9Cb2Djxwu7VMZF/69NOUsplpYcDfZYFEFYyaGHSDSYRrw0dnViVZo0LM3/yDyer7B1hL88vuOLrl49vH5so8rCgJjIE0nLakqbuYRlhwsh8Ky8ELp0kwyxkgGqoFPT37Yyp4T7htTwcw32jMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCIz/qfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCIz/qfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0903C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768542833;
	bh=S3ibod1BPf94GKuKrwXgriQV8q4ReG3cKEanHyR7tgw=;
	h=To:Subject:From:Date:From;
	b=vCIz/qfrzp49UoZRzsdREEsDX5uWtHf4hTvt2lTetpujPuCgy/oztoIGRoaEEWMa/
	 uUTWZ53hRn5/Wt0a5Yk2pf3Zr7qPjcb5W7uEicjALOgEM+Yi/ezT4H5sMxN6WH4IHx
	 i7LBnUe0UHfiyf5O3EiKf7Um7MuTai+nRvHbaEPAZiprU2K/L+YJK0CxMwfUlo0CuB
	 om2LCuzdp15e41vHz8kdWNJ/TEzc0Y3HicjT8b/lIydkHiA5e1nLidczlVMwHb2YJN
	 t0IQD/OVaxpXOhBU1+OJt2NnWqB2HsSJF/YKPvTQiAz6nYx7Kdo7ThjJF8QiwEnA4T
	 vS+vtLp/jPj1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5DAD4A603
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854283357.11084.8755811090797215061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f998ad8febeae214af21a5b92d133ad759063e3433ff0f3b80d2a6e05f350eea
Date: Fri, 16 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768542833
