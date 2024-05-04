Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F0C80B
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714781543; cv=none; b=rFCxMwVk8E9KYSQZD5IlDDyOOvzntcFmNWU0PLXhNDHdEUastevDkyYmVRRGY3aCW81JgvrIY0OuMsKRr/vd2f20bTcOmuf2DJUp37NBded+eRe4kYnw0PlYT4BFWZP+3zAg2TOOuxUO68WRtxu5HmBgYWJ2KnKMNm3bWZBIOPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714781543; c=relaxed/simple;
	bh=uqb2sSeiPqxagkHgHdsFsrqD+4jdTSqUqnCkCxpV80E=;
	h=To:Subject:From:Message-Id:Date; b=aoKWd+9Zbjbwj0z0RulqNC2uZt/1+yUOxmim2DmZyKkGF7xeXez1QCbc2dOrjli33Ja6WZsT/GOkzkvtrPN2tNzKZRz1IYgkepevf4DMUsUrSLZ/lEiCMAHMdrG0CktsT+6Hn1lxSclYvbO85ABdtLNYDbPr+6ZbMZQFYWr4U+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCwa2rpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCwa2rpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF73C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714781542;
	bh=uqb2sSeiPqxagkHgHdsFsrqD+4jdTSqUqnCkCxpV80E=;
	h=To:Subject:From:Date:From;
	b=SCwa2rpefdI7yfpjcrqk9Y4muu3KgzNntCih6s8+gbRbu9PGxOTsl7t0lc5n7ZEbh
	 t7vik7DUU4U585iTJxG2bQQVm2azv7W9CJfcFdwdH0OGcqvZVveDdm9qmfPH6cr9Dy
	 arL1dEqRbcLMvOWwsbCQAd9lvyZqc0Bxud3FsmjtTJQO7ZXD3uRPSuOvrIANTYuFc6
	 M58FPvzvHGAsuwIIJfOV5yM/jFd/Q0y9RRAxOzISBUkdVqvA0B9/i0PToZgsMjFsz5
	 IkHV2fHlhdmO+yMw0vY4RjBwq+J9ZsmSf9z5rSej+yWMu+K/FH6E2XTtmR2LOm/HzL
	 fURDSHwLpsFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C090CC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478154276.11216.4450641907090073023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac62a93d15fbf601d628f82160f2ab52977b4fb71891b1b755dc49c02f19e08c
Date: Sat, 04 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714781542
