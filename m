Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174CA155757
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768533234; cv=none; b=th27coyAOEgW77F/3wWmXS+PzgUZ405RIptb97WgkOGJXxUEOtY1O2MuBOwzMvDhqQe+/WhOMOUZE7Phlc91W9xIW0om2yCBQjXbv5ZyrwWQaSASDoG83+wjgTrx5eRYKQt9VQYXDjXcuRtE0m3hH7hpdt84/q6fto5JEp0GBY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768533234; c=relaxed/simple;
	bh=hTwOdlGuSLG7ZvlyYt2nGOrSyQDvAg0HdHy2q0R1y9Q=;
	h=To:Subject:From:Message-Id:Date; b=H41FgwJHHuxHwG8PgNZNtGvjNEYg3HACxkAcFe2h/Hw3BOJs6yDnIblR0VIGOEjaclmqQnAOczwPx+dDnTzJktD8GgEXM6rs0SpXYQa8rdUhPpNn0wtfvk7Hu+ibmmku4YQXY286xKJci7vUQPJR2PhgLxZMhQDR0GGPU1lhBiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sl5DFYMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sl5DFYMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D93FC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768533233;
	bh=hTwOdlGuSLG7ZvlyYt2nGOrSyQDvAg0HdHy2q0R1y9Q=;
	h=To:Subject:From:Date:From;
	b=sl5DFYMjxdh7p1XtH3ewvDUzYC3HXICdX22UxWrAUN3dm0dWZ5mz+HknykAQaiyRz
	 u8K25/FFTRFcOE/NK5ywiS3MRWtF5Yh3wIB0D3MDYn5zJBR154P/kq/eOVYpKAesNl
	 qxfDBu+5ptk9KEC9rmv9sdqZ4wQ5P5dViGcuzfxFuquFWH2CMPrZqsaGoeXK7ilibR
	 aTfr6LgW4fbHiwTAK6wUXgbobrYd4C/2Kbp5dCwJyJQ3xY7Xp5qSkiQsEag50gnY8G
	 lSq7CPEEgTXyPcZlLY3kks/3AJJvj98y8XQHlExhGxgcufpB7y5BjIBPC9laCJr1K9
	 ZEytdq4YJOuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD7D4A5F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853323357.4053.12039346988359469286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30939bd90f93ce4553e0b96a510d015c5d478486a30b18ad7d37d778a95b2cec
Date: Fri, 16 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768533233
