Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17993016F5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771440893; cv=none; b=WEX5k9+MNZtZ6jKs2u/od+qg9aoBIQGQpCWFNMfmm8Bdmw//SKPQqWMH4HmM/pVEEMXQxIXlzobwsNX84fZP1m4z6KD5XiWQ47U5C955LFverL5emJ+cU0oUNO/ws7ELYE+6edzFTmRDL1WT6X21EPPxPC3Y9oGZDE0wdG4VGwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771440893; c=relaxed/simple;
	bh=1fpVWdyYbMukljDdZPtD+0qeBBtLpuJcq60IMrHEmbE=;
	h=To:Subject:From:Message-Id:Date; b=qyLCiI29rHkwxX+9XO2RQJgtKzQ4Gpe8nWhEqR7KoOI82wAD1f3f1CXYOwHsbnzYlqWiGSfsiITmJn8Snlpgrq9o2aOi3AWNbAfVFP9qOXcl9qwC3ABdO0cLL77Hi3kdqJn2MQ2t+fqjyoUmnQO0FYT61zITo+EUJumkK0B9xlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwLvuDk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwLvuDk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4410C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771440893;
	bh=1fpVWdyYbMukljDdZPtD+0qeBBtLpuJcq60IMrHEmbE=;
	h=To:Subject:From:Date:From;
	b=nwLvuDk7vyfpA8akC7A2TbyOmInQioaRq8MiXW/myHA639QTocMOOMC7jUTRt7pMg
	 Ii3yRuCGwD4kbBjDUg3sLy2LiGUA46GXdsaZlipMtem732mt33hLj0EF0MTpp7jiRp
	 VRBQhgZ/QpwhtK/OF20s+5TiYlN9qC+Ls+RHbPdqEGmRVXv331/fya2cFjpSWNdvv4
	 xSXY3dIlTffG3ek0RjWtL+hLtLD8KBjW/7hYjbuuZusmzZ/ykfgOwRszqylACjTVSX
	 bP7RASudVTEcgSvVV5dng3rRQcQqXaBOjGlxrD4YUbiumALSzmGUVRK4X0q2kUZX/L
	 KM8VLorRv+UqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA8E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144089360.5977.6354491080021574599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7184fe2b7a4537138a45c8eb492322c202ae3f1f399bfd6f12793f81698ccd
Date: Wed, 18 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771440893
