Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDECA224B0E
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771248893; cv=none; b=QZ/4bS1APbZqlferhYCysr3GBJe0hlRGfTFcPUYjlS/WCBEJ1iqVnvGzDEfn3/mkzumn2yzjNIMIsEUBFEChr4n+yA2IOpOBSS3bliJeFAFn/PzBRoeRS5hhE8Z6vRrCIaQ6T0nZouf1pJnV3keOMuNhpyGfhXS683bU9Czdq5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771248893; c=relaxed/simple;
	bh=+0eDb8iCtpZKzo8dF9pswsMJzxrsbXErC8yTYLRmDUE=;
	h=To:Subject:From:Message-Id:Date; b=PK/6/dE6Ax5CUmFDCLDbSW0P0GDxQ5i6L7Ax01PfkZo/nHBGHtFrxRsZDny2C6GZIa3FH+g3CVP4ZenBqvyJDU3p580mXsfm3708iCP5SmA6zbkDhifiChsZM5oosV+yNhIxgs4LhAcArTz4vej1UEeutNsS31A2K75dPs4k+lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/xtrmaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/xtrmaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0941C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771248893;
	bh=+0eDb8iCtpZKzo8dF9pswsMJzxrsbXErC8yTYLRmDUE=;
	h=To:Subject:From:Date:From;
	b=h/xtrmaK2gD5rHEy2B765Crnhl9jW6RlhJzh19AVZWntrAT4Z+2JTmeOAyyuWUVmG
	 e5r5iwncuvZNV5az6aLRYoRKY2nEyaNxvbeCItQO4lEF3hzzDEcp99bTutBO9meN6i
	 GkPOJqabZO1SAK6gv7AmKFEtr8qfbeoEHwy7GhR4SNufyVmfi9B/+RClZvg6On6Add
	 EOZDezR3NtW7fYzuo1t7bHbbEV6bVE8NLk7POlNYF2gVN6sh6nRpHUO2Fpr5M0zWXO
	 XhUYDu9cNc/1mI95fJbC3/5MFSP3F+TDhkup6F9o2E0r+P0Jii8MV4/+3SIAZdu9ho
	 eiEnJV8+bZw/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF6BE7BDBC
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124889364.27964.10412762002170213524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b31cdc0a012728e0e968ac37033582a9ad12789f4dd587226bcf3c498ccb63
Date: Mon, 16 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771248893
