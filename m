Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D97E2C326C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753967994; cv=none; b=SPy/5k0BLdcyEcnwFOg0Acky1lvWbgPAFk2WpCoZolXSriyksyypDuJJfgJQcZT7APV6MSRMjSM11v+0LWEls6X+gVX6uQ8BNlxr9DfCowho3hiM/osT2UIFfi1MktPZg3Ix9c8wkzzZGMBgHRAfi86J88z/0pFF4EIljObsFTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753967994; c=relaxed/simple;
	bh=hIsl4LGQshpF36c18odhIxaJots4t/uVjVZFv9q1LCg=;
	h=To:Subject:From:Message-Id:Date; b=c3u/tsLM6R76NjXG0D0LayAwUhIrnMIVD9B4qROWOH2NDDioEbUZ+pCj9VJxqueDfcRO0T+FwYtdtrv+GjTI5y5mfPPyZA4C526wF55uPXmj92BqrIT7p9h7y4rypdLAWAgGJPTmnNZoNQssDBYF4D+xaoc7r23wEY0z8dSM0aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opAPm3cK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opAPm3cK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F0C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753967993;
	bh=hIsl4LGQshpF36c18odhIxaJots4t/uVjVZFv9q1LCg=;
	h=To:Subject:From:Date:From;
	b=opAPm3cKhKvRgeDvCWMj+sil/IJ75c1ACl6n2n0MtI6FPmGj6gW3v5kj/1RQ81dDR
	 wcPTR0bOC5a9p6iN6LZZDkhYiwiHTgz1GFfI2TTdwkUdrZKGH8yHKqVUq2SIJR23CE
	 8de8EFJNP1UEMzcsUdABhTUli0s+lmYSH89dYB4akmvrulJHKTdP3uEJjN5DTIHYOz
	 PsX5R1Uy5TrXE+hz/v8H6R8/mgcTtAMe3mfmzABTW6YIjFb5sKBFh5d7KsWPfsa74g
	 RYbV4qpCgzHC9cprfAA5KP20NZL+12rB4Ltta9ox1JKodhjaHKVKCKD+YhdJSAToWZ
	 IYfbXKB6WOC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5EC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396799358.28197.14447588500462159349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8595660d195b70e9c3807fcb071ff1090279a254b21e2e864f056dd5fedcba1a
Date: Thu, 31 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753967993
