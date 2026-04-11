Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2EE611E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775866054; cv=none; b=RU+TXIaFRzJEiT6ffcP5EYrB3Bnz0fRK7TTNifKsIuMyBO0A6D8DR8oqEOLO/vDS0tc3OhKFKkzng2FBLAQS/TR3ehmZ3V1mfFAVUbrHJdoHrxnKhRz4m1B0K+vQn8szoLKGPcIrIqwaWSzvOnjcNEkv2Fn0UCPUfF5qnJU8wD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775866054; c=relaxed/simple;
	bh=cWHi7+cOubjHMVj0RdGQwWtdZs8MJMR8OW8AWy3tQUQ=;
	h=To:Subject:From:Message-Id:Date; b=WEdT+wHMuFtd+g2SzI3MBM0+/Ft6Uc0IPaztxdDIufzFjWma8yRUqZSMM5fL2xISQXSepDkHU0H58+lABiEuVbqUqhNzil5BIJZpTrYAdRVOfQy/5Ms1e25ZauEJRVW/HxCl0s+PW+m8l0wY7LaKxg7JfetGwNeu5ab8EQRx6LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6Qq1e80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6Qq1e80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD334C19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775866053;
	bh=cWHi7+cOubjHMVj0RdGQwWtdZs8MJMR8OW8AWy3tQUQ=;
	h=To:Subject:From:Date:From;
	b=W6Qq1e80p3OYHjJrmawZDYzU3wGID0cVHesyTwvPB8XYIPfaYv7Vc9wOWjz5DgBu5
	 tMpX3lCImfbaKkuINLkki+MKoI4oo2ZD0aY4N4PsvjzvuDXAc+fM5CoD5NlbqBCE0o
	 u3zL/cQ86Ur4lFnmr9JWdwWo3IXoizUHGt2EY4CdwkWBXtiOKrYVceDSybiENiD0FG
	 LdVHrEg6HXDLnTmEGv6mEkkOjLLclSd/64bmn8YPjCwCpqShf90+ZD6lPV7otzsf4Z
	 g2tb6Rzdv/9NCnQ0SFSM4ysZHuRLA7bvpI+nrsEhS+qod5gNT8jzMAi8DY6qY/PsXN
	 ysh6af8XQ8sCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA41F45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586605369.16551.16039526174647608081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d4427d00d89c5c22ac586744fcb8d1091f98be139f89978f801a6ec564fff2
Date: Sat, 11 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775866053
