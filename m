Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DA2372EEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786565434; cv=none; b=SAM67ezKTExkQGd4FJj0SQg/M/BNDgoVHuCtPl+y/hJZ65/bLd3wc/41TSaPQ+WdHOr3rviVSX5Y8c9h+C7FLn99ikUlYqJ/SS/+wUOJwoF3C8PY/KqZgQHT4IzIl+1LpYWW7y59eKV8bMev9nnFO8HGBxFjnXwbItMKwzSt7qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786565434; c=relaxed/simple;
	bh=+dCGLv8ka2H18iquX6I4kO70dAH12sfwmq8PdA87+1s=;
	h=To:Subject:From:Message-Id:Date; b=VvfUoSvkHBF0d/fpb0zsWGPiSEXSIboxTVBhKBJBMXYXO6M+B/glIcnwKuYQg7J7iff+YQEJAG+quhWheXHwZ6RGuXNzk3YQllM7PxPPIBxHSI1wW9tILCloXmXqYhBVlv+AmDRaYgrl+/NELfSW22H81/9o9M9Sh4VK3Z6K+Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj/18ndn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj/18ndn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE67BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786565433;
	bh=+dCGLv8ka2H18iquX6I4kO70dAH12sfwmq8PdA87+1s=;
	h=To:Subject:From:Date:From;
	b=Dj/18ndn18huoN5NJuHF6/bsFmKaK87D/ZEgxRzTobX8yPlS+vJhVJwlpplslxgdb
	 5vK/5btSByHTm9dDjezSSo+4kp1XzYPuExJFPYTU+npW0WuLafhyy7xntHNb5RZVv0
	 qiMRk/U4BiQDjvCynv4ocUpvv2Uw7QVOKMtwfbropjfE65QEJVtRJL2nh9vEwkP8/j
	 nmR0z4lstLPj/7zBDjBS8LyGa1oMsScUIsrrcB6paKXFrZkceRSPQsTyt2IqRm326D
	 oPYcNJxknssYU2WXZlyHwNswu7E+pw/vhVSkZ37SgwJEFxU7z2OCTJ5Q8kcXZKCu31
	 cCumqckbx+xFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D5C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656543369.3561.9634521826263498877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d637770ab47a4660de4da910a6219dc42e0fb7ac5bf651b3be4e42b58a2bbae
Date: Wed, 12 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786565433
