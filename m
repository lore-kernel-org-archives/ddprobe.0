Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFBB12F382
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708969096; cv=none; b=kL0hAFJVWByU1kS7VJs9JgXxanfLDKYk3v7xqw/Y+CRQItx5i5nPqAbXGwQQsTx2iHMR84tr0zECexN2ZaMIxOCAhrMSE/OMy6tSBkA3acdDBRPBw9bT75LbAl7TevtCPbvSaxMEyotN42HsOgpScwTLbVt7DSQn2XVNXG3Z5dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708969096; c=relaxed/simple;
	bh=SIev7+LyoOoHEmQLM+q5Ya2JNmlNjim36hL9xjyjcSI=;
	h=To:Subject:From:Message-Id:Date; b=igsrksgD19K/CiqKr/4piZh608EllZae3lmwVxkSxE5hsJLaSH4nDoB5vFnHLoC+Hg32QHzjvEx7LbiHzWk2pdeB3KFeND1BTVT+a66wpEyoEXkGcEx2Eov/PpLsodWHEwOLuXTbpB82fD4MHTlAMORKOVQo0tsUlotQF9JnuKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf8LvoZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf8LvoZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6E3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708969096;
	bh=SIev7+LyoOoHEmQLM+q5Ya2JNmlNjim36hL9xjyjcSI=;
	h=To:Subject:From:Date:From;
	b=lf8LvoZ6C+hDaVh6ZP+C0oI/cXEpR72y64Lm4rvKOJv3b45YDiKSWk5vsi/j3rU6S
	 4O7FotydgsHzHiZymzsN4qTcyQvusH1zV+hhkIGzjiC1LsZCoNUH9SGvO9Y73y2h+7
	 7pOR/rNZv+1sMjWcHcQDn2MeHi7jgTEe5JuC5jiKkrKuBjIIkvaUHElRp+I5+VKU6Q
	 5qzaV0Fp2nZzPn0yxKXpIHH9s+4Zx/Y+JwHy2KqWqbIJoGvm9GGlgV9J2MAqecG9dh
	 tcBdF3uRBRe+KLnCf6pLk10LKO+zPS77uIv1zk0ETwrsHWj3Ujh7/GV/xsIkNNcXfd
	 z0ZAC2/9OpdPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6239FC54E4A
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170896909639.7552.2792075554668833724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61566a13f5d18d766191e5aef93cb4e33febed9a404ff33525056590c4314ac3
Date: Mon, 26 Feb 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708969096
