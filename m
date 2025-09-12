Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258DA253939
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757657994; cv=none; b=EFzFvkbnsypCr4Yh/tRpJZqze09gd7r/+1F+qQKd56LZY9gXM8UU+Ro6caVGSzohwdleA9rkBNX0xdijyrOLfRuNcEK8Gp0IwmufDMykeSFmSM87sNchLF27WoRCTdiG5mCO5/Q0Sc6t7vPQx2A/nKr33g1b0kfwhLUK30P+scY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757657994; c=relaxed/simple;
	bh=lAASYIHaaeGzG/qcL8HOLC16VXpHQZiKifqHOK15zwQ=;
	h=To:Subject:From:Message-Id:Date; b=mlqZ8wRzeTPp9hNOnkMwYkEPJlunUVwXqvD1aXKYgc9uknz9k2RysAT+wkKZ5xeffizPpRD2kYkVV5fuTIAB1DYrcUbWzguVvG/ri+RJd/E5AF7m0eqw6T7tw5WT6O0VfKKlMM3/LyOlMxgvwu/I09ljlExeOGyF4/Zv65Bebj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgEwyIQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgEwyIQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3FCC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757657993;
	bh=lAASYIHaaeGzG/qcL8HOLC16VXpHQZiKifqHOK15zwQ=;
	h=To:Subject:From:Date:From;
	b=UgEwyIQlUs+wvRttxSeaAVPKsgdFSWjm4Tp0yGJuNRj/BZgGdPxc7B9SQnIHzNY5X
	 opEuSjVofkJuo0UCDYv3eBNVt2cwkvg8QxeAdsy6SMyUxErLbu4/Kbr3NcXkgUogF4
	 OKdwv9bhtAhbFeyPax0S9Ia4eAaKt0w2syYnkE6ZgkMVv2R+nzbhZByNZejClLxdmd
	 oMeIytakQXnuFN2J4GmGEiZa78TwSZxOcbfRgBz1Yre+pWJmDOrVyZFsLiD2MTFTlr
	 WZoxLlnqMOD2bYQWuxbgtnFescmjMwxwm6r0Tg07MI16+ifrY3peLay2glg+rbbXgG
	 2F9CkJJYbfPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF78CAC594
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765799362.13540.16054463802043382538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4365a250a6a4393421a8bc71acbc8d5b8d22c49b994f92d9ef83114f7df2b3
Date: Fri, 12 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757657993
