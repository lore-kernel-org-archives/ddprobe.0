Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0B28640B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770821094; cv=none; b=b+tTHZ3YNyZzvXTm4dGhakUbW3tGvSiJi9yxysiDy2q5zC3ZMJYbyDMPg5M5DJC2OTQw0xJ2+ut+bmTh1ItfSlQMaqJUp05/zXVjGy8HmQj+lPVtSfusfxI496j3F4OK0tswzxYI0HfwqCQRc4WntfGE3ERavF+gxBDp0gaATCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770821094; c=relaxed/simple;
	bh=D8WGdrj69/RyYc5tm9qAEtTN/2kTg+lYZvw0z0ZH8NI=;
	h=To:Subject:From:Message-Id:Date; b=rpY+Q0WBLAVtGjiiF1TtnUiT59z54QedrwgApHjJKAPUja2vdcYqKY1VXE4IAVykyXPGLBYzeGoOkx+0f0LfwLsHwn3qGY7QDGy6Bq3CqRBc3rGqj+/Ic49dpYNbA6ntOIa3GVWuN30ylm8dLwBRI8hI1jwxOmZl4y8CCMO9G+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8J5PTO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8J5PTO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF090C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770821093;
	bh=D8WGdrj69/RyYc5tm9qAEtTN/2kTg+lYZvw0z0ZH8NI=;
	h=To:Subject:From:Date:From;
	b=u8J5PTO3ZUaDV7jpGQ/F98H5AD3ZkVnLp7aIg6vo7ByHxhioRBdlp0Y0C5fUx5evc
	 bqj+U10e965PDYBot1k+owXfHENcgRbr8q7LUbNyxkficonEPo1LW2eaiK1n3FKw/W
	 U8JGtJnQUNJwf/w6E1Jp2ktxRaUtmfNZaACWJgxtG3Ep4jF8SZKLqOPmgQE8SOVDWd
	 3Y3pp156nLhvXsDitd4TtkRzAZ9rj4thC44D1bZ7caGeMprR77ZgyPAzenU7/iBRs0
	 4j9iy5VTDDB/oEs5BTRftHHDXqMLPL4ToZtZFB7nO6gBKrxVm89FFANoPGoLllJH4o
	 7TJxt/KU434oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21E7E9E319
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082109365.12066.3903982242433233266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a64d3b6749cc864125469cd5337dcb2af7085f11ae5712b7cadc09c005079d
Date: Wed, 11 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770821093
