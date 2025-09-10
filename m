Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0685E2D97BE
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757486995; cv=none; b=M2cAqH2uUlzCS3+RmrvD8O3YBRInJBwl/Robm8ToAPNZIO8KBy8qy6YrfDR6+vp0ymgzTQbYlehfidRRWDaDXPj8GmPnZ5IuqrupwEDq00u66LUJjk+2sXRr+c9PobWrxaWVUZP6S0ozHSQ9YGM9GXAFDRFkGHDtR3YUyym04Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757486995; c=relaxed/simple;
	bh=XQKGuClAKfTusBedCC7b4HG2JDLWpBGEM+mhEmy8Z0Q=;
	h=To:Subject:From:Message-Id:Date; b=cr1paOhfE+eYm1k9IgnN4/+BSYEEzDIaN01GVPO9tUh9MYBu/UFTvUNBfME+9WVqEITS8GFg8UBGAdEnQ6oi4QWSg/8MeDS1M6l6pRcH2eUilDvnG/LWfj1XRcg9+q4Cr09wujMUbFzpNt7sXS9b/zTd32GKUvyksCdloSjU3nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDd1q7p2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDd1q7p2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A198AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757486993;
	bh=XQKGuClAKfTusBedCC7b4HG2JDLWpBGEM+mhEmy8Z0Q=;
	h=To:Subject:From:Date:From;
	b=dDd1q7p2Mtt80C+j/2kk1Xjx4Z9gtBYcLdFToksk7+PgtGbQjBrRMqetdLF0ROpu4
	 IsLF58zmtXWKvTQA7IW5w46KLy7bosMinEa4/7qfgJx2AQEG5LSdtG+U9n+eYAbMyn
	 D4mwgw3wBYHi3gL4umNC7oxx6aP9HjNt19Os992Idolc35Wn7wRchlU8HGZ4zeMsdk
	 dNuYhkqWSE4CbK9yjGyJMvicVRFjkhlZbIYzfFcJ/0HUfhbUrh/TqoNzy8ispZDupG
	 2EA1hNoglV9yBF2sFsMZvptTrMH80EHzS4KwMi3iY9Esm9AIlyf1RRe60RPbHhD//2
	 7nSRMonNGCP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA18CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748699357.21326.5766644307039824318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6dc0a433e8bbb036ef68e0d41ad386c91e05315cfe05d8f8c8d84b1ce48431
Date: Wed, 10 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757486993
