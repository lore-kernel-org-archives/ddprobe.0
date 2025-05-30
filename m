Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE119B5B4
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748588394; cv=none; b=buzDFkQG0AFs7Zcj180omOfKmxjZDOTaQMZgMg4J/eO3g50yeUmmT5nF2qv7RSYXrA5Hyewj1OCyL0HFFSzZmmJAV2b2bqEE8/T0hSi8lJVyy/DPoIxosG910w04ZRRk/kjB5iRWODMtw5jjPfJm720g76SNVlzUljkls89rixU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748588394; c=relaxed/simple;
	bh=tmHy+AFzZiah7LwvF1PzSe1GZnyIimBpR7dD8EzP7Vs=;
	h=To:Subject:From:Message-Id:Date; b=Naj3/K2whvTuXQfu+bdpXWS7JXthqKbLY+ewqtKcELWLdAVRphTbV+qqct7IPHVn4dpDUQkEZP9Jt1W5y+81CFPhhHEqrdmkzWDVlrdXuDd/bLjKr4YKia9knYpVDFs/dlUxj8mdyFICvIoavwi1eXYWX92W333Y/LodpeyYSag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDOvoUFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDOvoUFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A5AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748588393;
	bh=tmHy+AFzZiah7LwvF1PzSe1GZnyIimBpR7dD8EzP7Vs=;
	h=To:Subject:From:Date:From;
	b=kDOvoUFrun204ljvPpR6YAC5cNW7l2rDe7e3H2UYFY1ylKZnGb8B9rUX34pihepds
	 8G/eqzm+5wfVPOPnZCV2T92BhFmY9TKn/clAH+yjUlX8nt7j+ATrIL1dN3dcSmUoQQ
	 bUahXcknLFa8tHdJ/s7sniyXtwfszcoSQfp05bJv/NGEbe9I35m8QQdnGmlWmHYQUj
	 SArWp45fcHxvjJxD/8Nq6TRRpI3tkOs/7vUXk0UMLDVcaQ9caffXuj4JaPoiQolpHu
	 vCmHLMyb1PPN3vQMFUQF/NeXMYGm5owri1VelzmXeEXwti7Q54aeadOh0g7swvkypQ
	 57Lxfq3/0onoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEEC3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858839357.19530.7141328405722033468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42377e0e9a321d8c30a1912336545981b4c714c26ceedecbefb2496b1c4d7458
Date: Fri, 30 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748588393
