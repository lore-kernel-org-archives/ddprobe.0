Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F271C3C08
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771797294; cv=none; b=tjkmLDWdGJK8SAaWecbDIZtA4rURyAtGAVfx6Ig3OW/1pbAUiu+LvHi/cQaZm00fnsZzpRt0176yVIXqpOG1yXEd3Kxh3XgCZZ9mrtXK+TjFL2+hExdljM4RP+YBpkwD+lIB10F8nzEsFYZTx7RVp83s4zxwRKZGXXUJG7Re3nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771797294; c=relaxed/simple;
	bh=M60wIKTJFmMQSepWxPLYsxDSxNeIUCrf65GivoLNTsA=;
	h=To:Subject:From:Message-Id:Date; b=KraQWbjuqyIq7/2pWhqYHrU4aU9a9pLtodtlEeC3AbIKiGgCDOww71dx20ISMtZUfJ++u8JLKCGML5ocFoz81Eit0QIEzEpErWxjmzbOLaVa8vo/cf4pkm0i/CZWUjvVKNSNp04h36pqNR3WFbpn4hWrhxszNpdho5TIXf6bwaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8io0apS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8io0apS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9DEC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771797293;
	bh=M60wIKTJFmMQSepWxPLYsxDSxNeIUCrf65GivoLNTsA=;
	h=To:Subject:From:Date:From;
	b=Q8io0apSFt0RkRLt87/qdfBQPvTYTfDyacg3+j6MfnYFvFsAfF7oTA812K5plsmip
	 xCnXTVtZhKm4/0EfA++mlZkk5MDZciQFQSwo8qF77+ykJ7UK2w5iPnwVysOAzQBb+J
	 yd88vfqsDiwvoH4x3xICYk1sX9i5IteZXktIBXuF9svGlD99YqFFfTU1qYkn4TE/z4
	 4o5I1Q3pnRVNtXBTomIkcJngQSXi9RSbctDXABGC4qtMd5qjs+FhrlAw+MhGueH8fl
	 XHdQAwjObHyrRrLHTSUa5dolqpRcnxq7nYo4lCHhmFQbjv2dYAaIEUp9Gl2r3P9g7u
	 Q2fV2DKDNibRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95125C636BF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179729358.25674.8570802677011456315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1505a1db033e41a4540b23176cd3a6c86f7691945bc032f932e08fce132903d
Date: Sun, 22 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771797293
