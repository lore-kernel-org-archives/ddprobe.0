Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BD92DF701
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765029174; cv=none; b=VMKbmkL6nr9A+xAJkG+tqBmx1cYZrGWlRmJFiBR8fv6sLbF/3vNSbmanb8RuE7QgcpKALb8OOpJE0cPV0TaqZXNrG2CrlqMev+WiseffOYlwjGu9sPCR17HmypKcsf7yIpWpwjECsLjteaaL/Hd/Ia9kaFr4LC6gxNHhNfhguC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765029174; c=relaxed/simple;
	bh=wNSke9y109/4N8H2XDr5lvGfUb/wLBXjnifdcF0j/zk=;
	h=To:Subject:From:Message-Id:Date; b=SvOdlXZ/viiPHujgFzL0cFWCYb5Ylp2uax2zK4YGSCGvecT92UncW1B1ux5inv3TbzN48Ohb1TKr0oh7+oFwRT/QA0+vvOSnDte1h6A28q4NiKlN83FLVG+5eEgCKl3lreXsn1+TSHPgRcxWDUufDRK4bJiKkwm/IBn1m9YtlUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjsGOkYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjsGOkYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C85C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765029173;
	bh=wNSke9y109/4N8H2XDr5lvGfUb/wLBXjnifdcF0j/zk=;
	h=To:Subject:From:Date:From;
	b=GjsGOkYtgOyQ7Vsggon/k2SvkFdeo7SqDi+kxiOCWteuyq0LH3K8YFwXz15oYP0Lc
	 7PkodfeTgehDJrs3GBjb3IdKjfj82dzEYm5EbNc3r8hAStsayrK1YFLTXE1ukds2IF
	 QWgRgpoMmlr87aO+DrPN3f7v1xpfCiaPMPen9TUpJOf3yv3+9uIY7+N+m1ANcaBGnU
	 VK72OIFn2hMQ9XjdPkc8QBB7w3Z/jjJ2aNKCW9KGVu46A8zssRmozCp8yPu3IfTJol
	 d1YYZKPPNZR7hW3czeqnS/5DZAy/wy0KVl+wJNHMx/CSz7HSw9lwAky3C4gO5csC5Y
	 swat1XorPKFnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91757D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502917358.4546.3893175597328718960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6f34234249ae82119f7f7dcb1cb85397700086284c38adec34002d03e62394
Date: Sat, 06 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765029173
