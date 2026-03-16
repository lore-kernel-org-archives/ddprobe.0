Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E99270810
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773635694; cv=none; b=cZC9mRnJd5BHAAHAexktEjNoGVzZtgRQtV8RvOCs40W5YlApKrvpTKY9lkAuDJhtL9+41KNqKMNTBQpu5r7ftMLbrFdXrp9HhYGIt2CN0XBV89ROPI2JVzGJQRv21GoEApFnYWMCpnyOSLXOWg6N8snqjAbNYQl0/ZtF4v0anBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773635694; c=relaxed/simple;
	bh=25lv7vaOwiyfpB3W+b/SMyzMP+JnyOrpuLuBiMxFjoM=;
	h=To:Subject:From:Message-Id:Date; b=tKillSh7+w3y+pVVlp5vKN+lsQOCwkj6+XWlxJEFovtYPwOhANNKdRC13qswvsL4voFHOyFkM1RRNUXMs/ppl7qWX+omuXP+qq1dcccrun544BqW38YWHrLWob7/GAb6EyJL6N4BbdHEAsrmb41924tjgBMYkYbThDPjRmUymbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJ2OA3Kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJ2OA3Kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4006C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773635693;
	bh=25lv7vaOwiyfpB3W+b/SMyzMP+JnyOrpuLuBiMxFjoM=;
	h=To:Subject:From:Date:From;
	b=vJ2OA3KdfuVrjc+SLV0nh50pZNWUDJnCWNecCol1iysDHDpLIonzYnBdAaWuzVb9J
	 4ID5rS7xyjRZegc5DPehtd5QZ2hmBkvJwjhtN50PWoaxMdSpGUz6bfJ/1leUSVweHb
	 jF8ztBnuwa2j5HB+ua2ooyhG9l050UvFOgnBjUxOAJ89GV88hGuwIRUL38OexGE7Zd
	 Lhi0rFTtqX41J/+TGlParxPINcThN/1Dubluy3+kjeVFP2q6PLpKTvbOb4crpcrvST
	 WADrgUPBh1iRWHFdNPm3q5yvLiswVZIgfv2qtDvjuIxlTs0x4Z2mIKgCGYEY12HvLg
	 HiiFcJ1oS4Djg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A5D58B21
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363569358.22162.7028889181399653468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce71b1fb81bd42a2721ed70a455b76702d379831e6537d585176042a19ce67ce
Date: Mon, 16 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773635693
