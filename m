Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1337E21254D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760264994; cv=none; b=S7HhAst8bFQxZOHAvxWLzxOaJaiFaXRI6LBPQVPOTIqJbTgXy6S67WfinTGtnnyP5wB7xlIHcxSTzZEdxu08hqjKdS0DoVfjZsQ3LiFFFcXKLOkqFu7PRy8Oug5YgyP5+nV9rljii9K9SsXI1D9cYYg5xGqZ/EwJWSbTqWK8jEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760264994; c=relaxed/simple;
	bh=OuxFmjZAWPdxtx60J567UiShxwRl2xlNbd7Id58Fu8E=;
	h=To:Subject:From:Message-Id:Date; b=d6rmgYZbYncSN79zjS8p7NZo7afkBridTCH4tdKEWBpELyYU4jGojV2KSoRQGullOu631JCKQB2NdtyatTCkCXw58XBa+N+ctlQ30Qt4etT1sEOmbO9B7Lrof/5SKhD+2TDjXYv4nqqnFpyoQ7zwpRGCYUF93vUWzZaXhYSnHmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1Cv/QEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1Cv/QEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760264993;
	bh=OuxFmjZAWPdxtx60J567UiShxwRl2xlNbd7Id58Fu8E=;
	h=To:Subject:From:Date:From;
	b=U1Cv/QEFJTHZU4PrUyzhu1a8QrtdoyNLJkg8oOoYaP1NSjeEbLVtktR0vje6nMxwa
	 jatBT2TfxICdTdY6UcJC3TbpFYmxx2zNdo2bv83jxPuJdIytffiZUHEzozsXpmMrVA
	 tqIiQ5WTXpEw5u6D+BuKVgDl20rvPebHKSW/x90FeHen0oOP8pRk4jyFdguSgIJSaM
	 ERu4zsFjkZeSRfrsT2SBVTw7ZgDn3jnTNwpYlx282rJtnIpxIp5LLJdV1i7/uKF+4D
	 Z42ZBrAoRcGabU6e1r+2OASeLZ54ccPh6g6L9C9WSFsqIWd0B49tsz44w7nk6X3EzP
	 gLaBFvJXWl4GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BCCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026499357.9565.15533438766114923505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aad8a1e810265cf798cc50ec2f7942fbc5c92d275af29ba58441f3aa75e917
Date: Sun, 12 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760264993
