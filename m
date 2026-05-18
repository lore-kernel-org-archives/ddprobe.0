Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD1532A3EC
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779075034; cv=none; b=dDoIYxtvm0AJtPSRJgsdNJzgcFHfsy8C5zZS4fdvtLu87wsVBesU1twnHB7ntTsgGNWKnL8Kw4U7KQauUp583+TrjbBq58p7TVfxeIWbgURNoy5FlU/jdHjcMm/h3/XHpfHnN11PKUEEoeM2B0flM9ZhmVWvPXvdJLLrepIQz8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779075034; c=relaxed/simple;
	bh=Q4aeE7jQeHDrG6wmlY5UtZSBAMNFmfQong/LLEHB+b8=;
	h=To:Subject:From:Message-Id:Date; b=gv9OS28oP/FAZ5rzOl3wY0jkkRQDyt61uhO6yFoODAxXGpwp5dlmldgB9t7McDyq6ELPKi1D7w0CpbsUXrnPfGWmWCU1MECH1tS91f2fa4LKxG7Ux48zo9un5eHdd14lwX7DDzgSm27aYwRlmPCGzwzUjrQHjzfjmzUgdgTI5Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuapMkja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuapMkja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3324C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779075033;
	bh=Q4aeE7jQeHDrG6wmlY5UtZSBAMNFmfQong/LLEHB+b8=;
	h=To:Subject:From:Date:From;
	b=OuapMkjaDj+P/pmHp4NXCP29MkGFHKKeGklCut74CmWJ1n2eucJCLL5E5qWHjPr6N
	 n/VOUwUD58EkrUd/IOvgZJDtKokqgdUfJrUZlbnwkcfswONIrct1Xo7VmvjozxdFA9
	 UvwtfWIo4LdhQX8PPqtq0/qVNEdEkqPRouEpjXaC5vcappDG2v+vvW/N0/QJF+WREA
	 HaQ93B4VbvQPh41KRRFr9NtFnEMhK8gtHHmtKD6Xjzo02BJRfgKBSie1e+IQbQjVyd
	 oHxmJVACNWi5ocuvyhgE1qUtF9Kb+YkvrNpyzfkyE1ObkmSLif+LK0HYtCg2nvGrty
	 QEd5Pe/XQipLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3EBCD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907503368.4545.11614275185568975344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb9eda46d8fecdd6ccdceb8e55494a129a1e1181d3a20b2f86d4602a73c2d1d
Date: Mon, 18 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779075033
