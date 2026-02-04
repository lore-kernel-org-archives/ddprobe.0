Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ED628750B
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770180234; cv=none; b=YkNhvLyTKhY3xlIb/rEBTgfClyhBGvnLW+ftVeFyhk2+LAANbp0UM85opCPbbJ1O2GRtLW6JUwv792uiIMcMYUMYiSruo1iY/WkA2ZEBIB5jpzz/8N03c5a/+FtKl5MyxCy0X1FvJEqlM64xeTGqCdB4/jz/2oTmCrkpUE0/kGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770180234; c=relaxed/simple;
	bh=mu0hW1fqUK/bOarE9G3Gr1dwCvhkfWkQfFapNgq9M20=;
	h=To:Subject:From:Message-Id:Date; b=upEpacfciwf40hKKJwsjzgot4MLepgbhkAhmclwhXR77G79gHOFZOGTiTInEQwfImbcZ5ktja2ZtAPBtsVkwGHEbcuILn2KLELEiyh++7hy5XfijCG9qxMh6IhT9n8dlrQxMZSw0YtNKC72PAwItNBMnw2RXHTLd+cHqx3XPnsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kH9kzcJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kH9kzcJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEEDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770180233;
	bh=mu0hW1fqUK/bOarE9G3Gr1dwCvhkfWkQfFapNgq9M20=;
	h=To:Subject:From:Date:From;
	b=kH9kzcJHEsVEl3fv1SK1umBjEXfqzxIim2kI2b00XFiJ+NXT6FVgZnDVhP6v0ZdZl
	 9o/LQ12bo1fIDT6CZSe/KtmcNNEKKqZE9cmuG12kJvFoajzz+KDq8tz3mrauujYLMt
	 TKnXAtV8/n6FJwe+kZK8n+KeI0buTZZ3wPK4hzOcOfnGbO2DfMDXYZjfTsEfPegFSS
	 POnBsyQ6Suek9VnknF6WXSOXyUwV/wHGnOVhT0UdLrt9AymkZZLddmb1FXcwkh/4VW
	 dFejb9o38ytFHvJbDcu6ewvGEmCF82fK4vl39IBfD0b//aPvOOgz6RBKsqLeXQFYD8
	 blmi8wDEEmRsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958AFE8B399
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018023358.25811.13126694481262366228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131e2deda41f8b4013849342461d9fc37b1b0c1933ac8f121d4f180f7fffe5a3
Date: Wed, 04 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770180233
