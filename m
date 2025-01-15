Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E721D86F2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736970354; cv=none; b=urInkj9vRKQlBrdLNYXeOg7LK3WtxTcz353klCEnGw1EqrnbhjDiqwBKXPRaMw8vC6mkvAKUGzT0B7wrxHbL1ru+I6zQSNl/nnTYFjQeIgEUOe0I2WuryTssnx27KmSXFxaMGkKLIaJYo/mviUc4QW+OaX+hOXyPWVVbu79cZ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736970354; c=relaxed/simple;
	bh=oETxK5UGbQyZza937u2nlctgeu408N9IKfBPkK5I5vA=;
	h=To:Subject:From:Message-Id:Date; b=IAU2JKaXyC76bUff7+js1p4GBTO5Mz9DgoOEyHkdSalW/BIZ9pEzTrqnAUbTHCxxReAvtwI1iJI96bFvOYi7mCY6m1OrCo4IFMr3+KjWp+FTBF7xE4RVrebwYUQYriCvxMleDhGQfBu1GArZfbO/UTfNVCMDaflbGxvqsKH2Nyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo9/kljV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo9/kljV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3982C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736970353;
	bh=oETxK5UGbQyZza937u2nlctgeu408N9IKfBPkK5I5vA=;
	h=To:Subject:From:Date:From;
	b=qo9/kljV6faxt/hPPwLGKG7bgREWBmQTNUPOeG5Y22VhM0sZivs9pyazh8BYvX2Mp
	 fPHMhtsugvjEouOf24RVFstDMmN0C85dF5iu+Zm4QcOs56Xt6JMb8EDeN8RY8qPXi9
	 lIqsgzbwn24dAIsDrvkUqWJgkJzT5fZomF4ipUh9h6obv28W53rk/oEEaokL138lpZ
	 7DEWhlIV8yYCxTvJVM0Md73gG7wtjrHozQ7Kc8Gn8Q59UKMlrV1jSwlKVv5qGFON7L
	 9jnf8kkSysYseFSXTGJcNYnufQUk21OgPGhg3eioCKSFCfcIRdHtaScV5kRt0U00GY
	 yiVwvSQGSjhoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CEDC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697035359.5666.14187378741201600958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736944b8e81ac29a9b3bcf33b7c8c77a0a4a8a6371542f047ba0c684e7b825d0
Date: Wed, 15 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736970353
