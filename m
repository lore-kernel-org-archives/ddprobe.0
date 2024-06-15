Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2F4179A8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718488103; cv=none; b=pR7MpqGMTL83mYEbfDTTQvjSAwEWALvytJ54VtMPGLR3jOa+RQrsaK4qyL82bdIYWrpD8wPo3em80fojfAAN1oEKDHzsXJ2RKEKsv5wWdQEn4uhuEJFrxUzGlcJXYfnjvUG6PSUSlfdyBQYxDpMCn2zdBUKY1rfY2sDnmPzE8u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718488103; c=relaxed/simple;
	bh=ap9xYbFQuBjfZsSpi9YYzl2p0GFAORH5hswrAV/xBS0=;
	h=To:Subject:From:Message-Id:Date; b=s7SWaVfnGzrEaREbyIdHQimCCgcfZWyDAdGnWqVJLmaP8ekL32DgMc+74QBk3LkwHEYSB4Rcjwg0a+AlTWjFgoUzo2gueXDFdoIIvgPpgJu0o4V8lBTq9Em7NkK5KAkY/L+JBd0mna8/CzsAHQ1L6TUWgbkvwpnOAbOaM0j6M1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/68UuTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/68UuTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95BDC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718488102;
	bh=ap9xYbFQuBjfZsSpi9YYzl2p0GFAORH5hswrAV/xBS0=;
	h=To:Subject:From:Date:From;
	b=L/68UuTSMUzObcom+K14rJnis9CNeKwodClbdibwBaxJAN6cID1ugyyhX+e1ewonf
	 JhdH5+6lWj9QgoHfO176Mil6jnyd3CdNgdWP5OEyxXkUEwXx/VxKh7YAH6wug8qtsn
	 7CcpfRQFrBztJ0KiUh8+OQgJK3l6HeuTcYVzTydNjTdQWnpZBnCSmX976VxcSQ5CrF
	 JTUz7DpMquvaiNcDeyfKO7+qNtHLcyNGws0HF49m9slERZolHpON8aHZzmqKRw4v9d
	 fSLi5DnCATQ5WxFqiy+SrqbjhqOru5xl/V+Ip3V0V99Yk7u49IDqMXXI4OBXoVOkwn
	 fOACpq9RkuRVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DCBC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848810276.31700.7986660086750339366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1900c0d7eb5d15e362490227bcde8c56c5f8d1622feb52d22f16934f4a360593
Date: Sat, 15 Jun 2024 21:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718488102
