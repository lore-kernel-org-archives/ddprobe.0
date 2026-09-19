Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC333054C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789861234; cv=none; b=M7x7ngM4UUKOGvqAr2tXlamTmYzBpJfL0i4hjCe+KcphoDwctt1IqACybKwxiJw5xg7AWo0gcLVGcfpiCur9x9297evLIwJ255zRMbgwhmeuAUCclZ8zJ5fqxn4r3sLhF0UBKsda2+bNpWlkpIRIaA0Z4czqmKDgRFZSQnGnlBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789861234; c=relaxed/simple;
	bh=wMUDeXYx5fBYcyDdwEp+zDLVUp5b1lzfMcPiWV22++Y=;
	h=To:Subject:From:Message-Id:Date; b=QT1oSK1bzROxr7EOQTyFDq1Sh6k2157UDXS3DjHRSMFMvzNqK7Z3RTYw+gsBwDduiskrZz9Lk3Nmx+oVC3UeFHTmX6oNpxulq6X8b/kBmkiJzWkdsnFr2IL1JjMSqLjvR92xFMT9oVVBKtRBr89BEdRfw7afRehCvZvFYdnrRGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpWM8nVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpWM8nVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F0AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789861233;
	bh=wMUDeXYx5fBYcyDdwEp+zDLVUp5b1lzfMcPiWV22++Y=;
	h=To:Subject:From:Date:From;
	b=GpWM8nVtVihCqMbypbGiAmXS+4HW2jJ/7ioGzdUE9YEO3BQ4s7lB0tmkA+Iv102Xv
	 fkaA4sA0GKZ5frwjCuAAnUKACaBRNX1Ci8XAei/Xhbm2vCb02/9UG9okWmynDHHP5/
	 U7dyhFb18R+ctxjb9neEE+4UFHqpbIb2JE+xgRs9EL5ERTYcq2aaZTxvkXVezDh4dY
	 URzU5nuO4gWAd3Si73fhammcibCkGTen2u11JICKhwc79gZgBQlmZ673wW/Ko32kHs
	 q/Nyr7KS2unfkQoGGOLuA+Gt9ZYxxWZi0+CgpccS5JmM58NLxKFrltvV7B6TaI2M8s
	 LGCZ4wKdSPjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E2C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986123369.4530.15357774554745325077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ea42de36eea3096bfecee8e67cba05412b31b5137b55a5fa3fe073dad82997
Date: Sat, 19 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789861233
