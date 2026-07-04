Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E4413D886
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783204714; cv=none; b=S9tw8oj/tPWnbVHepP9qVsBb6AV4ybnyEEFyVh1Cy3/1EviurT0w+yPQq2kY9cPouueSoRbo+P//cGm4CrWjwOgQLq/QHDLyxOoLSlxR3lHzaqJNoPEDWvLVg+CGoeBcFDQ8ti9ljG24T1IpJC0aBTc1H1D7kERxCkrD/o7TEj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783204714; c=relaxed/simple;
	bh=EdlU86//GvigMv30E3EASbRKQ2tPIjMg3YnZYcgVKgU=;
	h=To:Subject:From:Message-Id:Date; b=rujcS3CoNm+jmr3w4SsdghcKZGu7N/4S6B4CtvsoedV0RpgsIIWnsgN25CiyvbjlmR2/fj+d7x2yg0fITwesWoeTbCifSa8ggWuIBzxfHVId9ck/btbgkpdOVslfTVNjI0jw01cms/Mkp6udZOxTyW50wiuLXcV5nO24duBLM5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnNFGZNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnNFGZNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DCAC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783204713;
	bh=EdlU86//GvigMv30E3EASbRKQ2tPIjMg3YnZYcgVKgU=;
	h=To:Subject:From:Date:From;
	b=jnNFGZNKQeJkVgVd7ZTLF3Hg46BNNyt1pvYv9053+CCY9pErRY/bO99XvGGveXNu7
	 9zLup2ofh1dB8dWvYdO121mQsxK5Xl5fhk+tHFk8SuLHMBlyFdxz3II11YYyaP4Bfk
	 wbzSswYk/Jpe6AjuZMcoykJzOcee0sB1gQiOHqTVO7PomDh91h90vQga2MyOJaAU+f
	 TMXAJBGGpZbHkfjupPTTGOanxs/oF0XHw/QVmM3thoj+YHZY09YQBFlZZh5qvCb2hS
	 /CmtCjmWTq2iOsxjJ3g3HpjR1ew7ogB9iCiWG6IjobMVzQaftQOFv/lYOk4mMR3O3o
	 XSIzr2aoJyeSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE476C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320471368.28090.5223083315709149086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f0215fe2013970f63472c152b907b1c2b74108657f323ff5b512d94236d53c
Date: Sat, 04 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783204713
