Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55F33B979
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769436834; cv=none; b=NiLK9O0Hy49TnZLOc2WkWqDr04s6qxBOOAlHhEvUx43E4sRaQO5fT3L8BufS2o544GTWaW5H+rhLBsW1glFqv6FQSn9LihzZOW4EiPJI3ibG1kCOk8csowZv4Xh/9qU2J3jcKbKUKuwfpWJGw0zZMgQBRGSFSmpqQ5T5I8KgnQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769436834; c=relaxed/simple;
	bh=s7ExC+WwbsDK4XOP55cazIfMHO80GjxHv5WilfaJa40=;
	h=To:Subject:From:Message-Id:Date; b=h/7Kve4eqaTW9V/VWZqQetOq6Lw4rApHr89TAmJSgH+Kto8S/Lx5NvDEn2JXdj3aEk9L5HylPsPuXMY9+6YEyUMk6an7CNU1m0DsdPPWfTdxlGrmskWg7PthR0hSoWtc0d76N19TUYYcqhv/L17xaWWYnQx6SlMQFeHFQIT8jCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpi+nbI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpi+nbI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A467EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769436833;
	bh=s7ExC+WwbsDK4XOP55cazIfMHO80GjxHv5WilfaJa40=;
	h=To:Subject:From:Date:From;
	b=rpi+nbI1gmL845dNIfYM5M3HXTlszkwaaNbpQ8OdrInFRvSgTY4BtSJQqQ6X8vhcD
	 HZiDn0eso5zm5Gaba8SthG1Y1OSL0GTlWc3UBXAD6jlUr99Tir/qMNHtqLA1rmiXLb
	 pjfnkWzsYBJeY0r0UOgDkORwvjvxXRAtO4ouGPy3tcH/XvdInC6jtQPaIQk1lWX98o
	 0CQ/0+FcSS/0PkEbCBv+Cid3c6lL8ww7bHAvw1507VnYmsQ6ujU7eCHS8fta4ebq4i
	 ewQ/lk0HltZFpxUHF0TkXfe0h2R532haqRK605bIs4NECh2Q4pqyLfW6GtmiAS3nH3
	 SfjMadq8KwmDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96557D13C17
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943683358.19306.3178300594189598099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1491d716aae27f23e90c9f38f61fbf8e0453fe3aba63acf430f472c1a0807485
Date: Mon, 26 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769436833
