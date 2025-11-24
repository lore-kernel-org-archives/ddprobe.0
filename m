Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDC638D
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764022974; cv=none; b=Si1luqmTPtsu+i1lnG4X3mqphzk594LDY3KQy6Fl7K0Wdt1BRuEChmVG7Bcbw9nltWeBHIbz231KpHnwX8sWH9xNOIifjWjXNkju6zaXuWxTg6XmWU3vzjeII52m0ecBkbdgz6jEr1REGKlW3QkOkPYWBkRJJB3sUMuIbn2dxos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764022974; c=relaxed/simple;
	bh=kHwpdyuYX4TsquRLFjhfHsFQFukdV8tIe4Plajd1cp0=;
	h=To:Subject:From:Message-Id:Date; b=Kr9g95oyH05cJbZN8nfhDEaHBqfn0xd4oF1W+VCq20/M4ByL+8ANqqODVJdhVs63cEFnhA0jYMv8Jy808v2/Tz/+aEwccVdvg0OAXllEX5kZxjcGYmjEYGqogFziKvxxkRTEf0ucuwcd4UEeIuu8JbC9YkUd2mUcBgLT03RARDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmnfnlMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmnfnlMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF40C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764022973;
	bh=kHwpdyuYX4TsquRLFjhfHsFQFukdV8tIe4Plajd1cp0=;
	h=To:Subject:From:Date:From;
	b=QmnfnlMwHKYZqnCAKc+Dhqu2ceRsD8rYtBH6VHX7C/+YtGq/Gxxvl9AxtCe9WIDw+
	 MmGvu6915B4X7adolyZHzuEYEkjQVV/+IDCbiEAsDRaN94R6N6WQ+N7AE9Soj076Tn
	 MFr65NyToC+G/a5qxPCcboBA5Q2ZlKWRBG6oWj7t2DmHYvI36tqdpXuVr1BVIsmZUF
	 w6ZGM8V9QeYoS3LnAw0/lZosDzwhi0fVXSDJyScbAQnuVI8Ivh5LMVz0y5bOTiaBtc
	 m+19WAswv5yx3OlDLaeJyJlHL0lX2ONdiu32fpeWCpvK489Qzqp/gal/QGH07RSX76
	 m/FkGZSoBpKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99057CFD360
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402297358.12780.5680986751989801938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be263f7a23e7ba80a48222d75e7033bd8cce3b957651b0963da989a433748b8
Date: Mon, 24 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764022973
