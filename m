Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A85414BF92
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786762834; cv=none; b=NLW3pcSngytFazPH+H+O0hXyJkIeBHcf4CkVxNDjlIb8R5Hq56s+k5/9bLlL4YbnKaSDn+JtgOkBQQifVuKSZQbuZnMKgN3fII4IKW6qBhXyl9kFvN2jfXRNG99wywfRvyktzbt149lYxJ72n4BoybZCrK6yyHYMj0ZvU5Wjf1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786762834; c=relaxed/simple;
	bh=sFToeURsnFaGMxCmASvdGNT0zWuRxwJRH7SuhZRTyJI=;
	h=To:Subject:From:Message-Id:Date; b=TCYJcUeUxSY0HkESbKKb8ZHrVs5DCjPqAPHegPsXPKvn554mlhdwKKtjVSDz6pOAqQHLragW5x327wCuicxU8UroKj0so5nlju6gXvaBYqhv5OM8+bnDCBC/fNNuUmIRNEmVKRazhXKaZv0l0YW/WGMav+jb1v1PjuMx1I5xRJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxavb9NC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxavb9NC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2724C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786762833;
	bh=sFToeURsnFaGMxCmASvdGNT0zWuRxwJRH7SuhZRTyJI=;
	h=To:Subject:From:Date:From;
	b=uxavb9NCqyYlEWEwBxSfxTwGVfMiKGDUi5t/0u+Sx5tu1IYjfvUXa0DXiTUmuGly6
	 vhXPdoPbYpF9HyNRcTvpykpoAsM9WroGLQyG6nrRnbmouEd03eVuh+tIM+ba+phsx9
	 lBLwdNz3kfbG20G7MxBcmk021ru2aREDOKs+qy7nHanK8ggxnYAO/3DgIlxDHy82Bu
	 5lFZieMDWtaqJ1PmZuVdq/t5HIVXoPOgIQyGNUbMLgS6M5EOTXb9+OXbfBMA7ecO5f
	 GBVVNJ3KpVuuda+WArq3j4mpvn1130w9LY25yEcJ58mTjCz4t3VdPrShNnn5D1EBXa
	 tqYuhSniA4fIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA46C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676283369.31364.840251150207420383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007c16eb54e17f8f4986a4456f70962e84a0d500c4bd47995fac3adcf2898e6f
Date: Sat, 15 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786762833
