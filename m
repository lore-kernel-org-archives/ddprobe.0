Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF93361DBC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783526914; cv=none; b=bsQiptztqR3tjkW188xuxhpI0NV/eL+8ycb+0evGNRjtpzzW/PY6pNOQYWR6Gv08NaFRx99FELxSGY5o6nwNXjO8aBHXZUlz5NZjEvPvozTZP/y9T68CIsCFtnyqdCeOPtiw0MHRvAmuHCABa0T2bICOfk2IbPRSb9GWZoncVJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783526914; c=relaxed/simple;
	bh=sy0JDeh4SO9YYaB27IA/5XxbUjQaloIpAIY+xuLpm5I=;
	h=To:Subject:From:Message-Id:Date; b=JOwgId5XQgfGa2SKDS3ucxfssOBJZQJJeGOSTUZktZ16rbsRA6HbhpU+xJCux7pVqYU+/pzW3TFpAwrR1zoFd1H7ElTS5+GkojX5OgRffvRnst1ZGqZwoYuX3DNygKuUWN1goZL8WA4v1Ze38PLbB6uJ4Ei1755VgMCcCGMdy/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHLNLEVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHLNLEVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC242C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783526913;
	bh=sy0JDeh4SO9YYaB27IA/5XxbUjQaloIpAIY+xuLpm5I=;
	h=To:Subject:From:Date:From;
	b=UHLNLEVV55ZdoMutowFMPzzEszv9loke69qjs+vPDCSwylYTv0euG/GsO59oDblri
	 p11N0UTG95lcKkc8AXNkotIEQpf3D53eYKIsVKum3gdcHXLWtRWaSp08ZaRyVEMmVq
	 Bvo/q+d9fY4gkUm+ii0yGLzJZ5a44SJApkfl707AyViTgH620xPWAL3ozz8xEyaV+o
	 kwFCbhTK9Gb4JyfMw3wSEm2SYa6BIYuY5fhLpor2f2Uzz7dEAO6bdT2I49fO/COXqo
	 qIQNctVeo3qiSQOY2bpvFHNPAjXQtdKHgpEp4POhpEAJ1bymujd4Hv07mgTL/b7Eq+
	 0yOfEqMmoTgLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCAC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352691368.31802.12642727675276197263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ab186d65895c0bd33591c78dec20ac11f5b3e122cb2facb22745962838ed2d
Date: Wed, 08 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783526913
