Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B961B87C0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756504194; cv=none; b=oWSdOAlIUEeOw09++YaNwvIzUTYrJlPRWmCZKnnCeAK7s1n5hhP5Jt7YVEhUdBSQVGGQTWoSNc0R6arFw7a9ucjTYC8LyTZE7GYn/tAzjPJ94ot7NnB+SMuwjVkn4d4YjgaRsJHM7wOzJcwN+N6GtfYLHNTqXELpWCVwv6FDx6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756504194; c=relaxed/simple;
	bh=RSZHywA/8aouLOPJ67l4UcuILkwmzL1KDp0kKaMpohk=;
	h=To:Subject:From:Message-Id:Date; b=qcxu1VrSNpPdo1CM0zGCw7YcAJJkgBbW5M98Kdq1U760vfJnObonC4X7l/y5WMl9AyjwpizIL+BiQY7oU9U8d2F8lYdDVWcKllX+s+SrLARu90L52+AaJ6Mu/DXQ0+P9YQENVeSHx766PzDH5GiV0PIk7j0k5BsKblkPe+jY3f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rB169Y6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rB169Y6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756504193;
	bh=RSZHywA/8aouLOPJ67l4UcuILkwmzL1KDp0kKaMpohk=;
	h=To:Subject:From:Date:From;
	b=rB169Y6SdvAq4nNjSpzLxdUQ/jZ/WCnUiBSOv9w25tmW5jLkz009lDqBORPQHOL6V
	 wGfArtIhLr4LUv97mhl4PUGYrFybx71rImnZYrCDRfA3HzUf4gBJIVMuIXoBegVXF4
	 VpNyRyBJY9YBksKy1/683gA3StngHrp4pHpBbVAP0npGD8kN23j4l4CS9U0Qe05TqN
	 l/lHb02l+xGUA81SP0bgy40uOpxcNx4bqQb994gxrTmj4X1Wqj7Ve0A43XEODr20bm
	 w2hWenjJ2XKfkkW39t8ieWBawWVlSos//UQVu/+7jTVsPOpBD5qw407zpDfoAAWJoj
	 Cjpw3iDiHnp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F6CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650419357.22922.6818697939162670519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a3e6ed8266bcea92ad969543224e3d64cded5a2763a89975b43edd57f6779c
Date: Fri, 29 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756504193
