Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D16476CC5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788606034; cv=none; b=JrkdtmBlVtlQ9DaQagH4FbiUB91OOQxsItv+lfCvC37utO8F43/O3YaJAn2sT3K15tGrHCq2DWnvQO4W3lVW5W4wWoD3TAdyxExhGyhtOkfOOmtNV11jbSk7JVQ8JsoSp2wgXfJBUQJWKrJrfgpyJgykdw96px3pvVOJIhCnRWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788606034; c=relaxed/simple;
	bh=hJuJPgJkMZB1vMTj2zyF9bHcxF674cVaL81vrm/dGXk=;
	h=To:Subject:From:Message-Id:Date; b=S1fbhN2/W/cIv88hFUu6OQ3rnzECPT/j+lxHdP/rLbXrUyMPXF9oba3u4MO61T4xdBzUu0MKnzEH8zRfyATmOCOxfAZGSzSerls5xXsh5O1E/r4mUyJMS1Ofrk5VIeZSg5XbKWKFjGNDZ9BkIC09ULNICeBmZ5pdDrGQUNWH1wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhCfY+aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhCfY+aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D539AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788606033;
	bh=hJuJPgJkMZB1vMTj2zyF9bHcxF674cVaL81vrm/dGXk=;
	h=To:Subject:From:Date:From;
	b=DhCfY+aJHZbPGjoLhW1CfaQs+eAj1l4Ild9XHnSbJuzUXeAJ/zM1Wrxq25kpMz6wC
	 O4qXmgDvN9MBnv0P4FRZwFAyJNrMhIFJiK5SlIp80j0qG5RBat3ywnin/0IQ2P6e+N
	 lzsCU4jQlMtG4WsumD7UGMeqUkuUxYGY9rzKnDylFjSY+pbAUdRgQFvRyQPAOWnGdO
	 jPqFhlcSxjfrdlk+YGCNL1xgv0YhjU5MZ4+85YgGmHhI6UTjq1vPOcW5DjFbRA90ks
	 Rdql/1NxJ+QZSl24qBr3GjMwvfPpnix+cZhX0yoq1576lD95D36I7EfTmgrDftxWSd
	 Cle4g64dPYQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB52C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860603369.10892.17140454042801403096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12a7ccdaebccf4be0d9faba3d16e0e3a623133d92f04bf1988b153cacffaa7b
Date: Sat, 05 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788606033
