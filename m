Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E0238C10
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749254394; cv=none; b=irXAdaYxtUClFtxWltE9tX8rXFpCOpnzGN8ZjMFc1awbJ0mk49YyU03VKlVhKedJNsx7Rxj3chfIPiUf9gMaNtgt/1y7alBE4DG6ws65yxAt3zlrdyYizksrY9sJ3yuivGki+Wrruwf00p5qnlAlTvyAqRNfBlxFXe/Pt5gVHi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749254394; c=relaxed/simple;
	bh=GzpkIJguv4GmizDCi+R+nQswWN/AGlMNAx2MhXU3R8k=;
	h=To:Subject:From:Message-Id:Date; b=LWJnw/sESqDWrQEdPbJIiic925yV8FbkGW8BZY5BNdOyHsqqpK1SQiL26iJNVhofbcL8HUrMGueKd+RMveLilBD0wAgi+qJvAXHEHdgx6+1GX89RnMfpG3I4EEBjdK3rijGfx1QBJn9Z89fo3ewQvyf93LJM9AIzeptPyBhjGXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8EO0WYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8EO0WYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749254393;
	bh=GzpkIJguv4GmizDCi+R+nQswWN/AGlMNAx2MhXU3R8k=;
	h=To:Subject:From:Date:From;
	b=f8EO0WYhmmkf85pTwmLNstxINwzr+MDaRmxXHVTIQxtTB7LOOIMC17d1OJ8DUZCIh
	 HhQELIYUU1k1Qz6J3LVXyJrWxYurzjPlQx8HJWroEPRVhRsHPn4TIOYfeQhpFBqzSW
	 nnJ80tpil8roER5x+b7K8m+Fz1aC45FJW28Ta/UbZTLttShcPIG1p/0VzLM7Z8dUJL
	 PvzOoce81KYKQMDMPOjHZUcmLYrvRav+q5sKzLtf5398QBbGyVn6NUbctMsBK87/Mh
	 /AFIm76jzp5WjiHGooBaBhBmt3hEE2xdAotImh924CVIsk4CJfwK6oEstz6SZqldLn
	 M0ZycIIxaeNRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B39C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925439358.27760.14184104821392739770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286314d88ae3a9a9c6ffd7f0070112bc6b43d4d5d96ccf17a5281e1d635678d1
Date: Fri, 06 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749254393
