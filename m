Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2491D35971
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744807194; cv=none; b=LhOPrLtBlQEHRSMv94Q4E3DQEWbYPfY8M8AEskJgtsSDcqqO5jvMk3+F+qWZGiQ3w91g/9tTpvMRD6wCVrG8YIWAdAKgo+5741EXuNcTBqlJ3WayGs0Kou4r+pf36MOPX6GDX9Hx7bXwEcBvoXvCB7lj+hYCmdQuyDu0Sev79qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744807194; c=relaxed/simple;
	bh=+nM0jcR8dvYTjeCfIOcuzmhFZjnofEosh/UTfg37OnY=;
	h=To:Subject:From:Message-Id:Date; b=sw32UCYhnuK8Z3Geq9UsDQUHgB/s+VQJkjOmzvZ3o1orAkWuO787aUjGWfWB/4AXvyrQEKTeVFtr1sh+9eA1TDsSEv+t8NHBfxoTVo3DjdP0uwMkK1UaRohiUVhhmTzPKrTcOrWLIJ2Fc2RacltNT6GE1QD9JGFDcQ9H3K5XEFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWVA/d1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWVA/d1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35BAC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744807193;
	bh=+nM0jcR8dvYTjeCfIOcuzmhFZjnofEosh/UTfg37OnY=;
	h=To:Subject:From:Date:From;
	b=KWVA/d1A+mJ5HLqsXLdiHRgOhawvKZ3Hh/iX4e3oHNEO+I1RBiZRxbVYxLQqvNYVn
	 PpG/o14oMfu/FSGSNjruIEZgaR6jqfmL18LM897Vp1dG4mFGThOaYZ2tywsIZDg6UN
	 jfUhh+hjmz4UAm2YhCPp6Jo0dBhoMToeHwSWVdDNExYUzRiIxz668FGb7pg2/IEJQZ
	 xl0JQAcmCOdH7x6s0Vp8dH1mhUNtv+/a6v9VstcNzUBSOrQzAhkLO4jx8cVTcmv182
	 vSwKXi755Yqmjfc7SAyZ6PUyiOfzFCkb8p3BQ1OpGFGOLQFnQhWP0+vqTzA9hnJzvL
	 dcEzGCaU2Q4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E0C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480719360.12397.4165175820566547109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52dee69df5692284f65f0dbd4225a79d97f42ed609f2815605c92b5272a95d0
Date: Wed, 16 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744807193
