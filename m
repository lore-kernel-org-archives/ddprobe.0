Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4570E231C91
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788754234; cv=none; b=j2dgKi9po67vifG1V6uBq2p5r3x5k7G98BTD2CV+TlwOrb1mwPTtwJG/POcv1OBgmy0V20Wy93e9EpFtgW5JKQ665/IdcnfTq57K3OHSVMwKzl9skJDUb1F77mS7Mx2jc38BPcjqsDJ0fPB9lYFPxSs2B2k9bt8fiJStN756Y6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788754234; c=relaxed/simple;
	bh=ma/qQXvbwa8CsLEQAhP9RUEyEaVcjrXh0cBoprfWVsQ=;
	h=To:Subject:From:Message-Id:Date; b=UX7yrZiX4o9XsNYdQwvl6FOKPAQ5bCLnbryHgjmJD3Nw2j2nbQ+axFhA2cMYOC5FD3qg8ZcqzoSWc+bnR7CYJU4QVktrfCG9ie7fiX/9bgvvLJ3/3AHtuIKJaoMWYut4c+O+sqt4j+P54JPbEnwJjsuEQ/mZ5VDDqLFJzztTqaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKBwzKfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKBwzKfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C88C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788754233;
	bh=ma/qQXvbwa8CsLEQAhP9RUEyEaVcjrXh0cBoprfWVsQ=;
	h=To:Subject:From:Date:From;
	b=gKBwzKflHnnKJw8ZoUH9076VvVJQ6IDyByfh7/hWYpN0QPCDo8C3BJ3We/HDvayR4
	 wr4/chheWp7F7JsDpx3YHvlrkGalQB3HcEhprMu7pJQc4J5WljGPkoZsnetTIXJV5h
	 AnJZNym/wK1ZLzcGu7YKDo51qxGP5OM2Nq0AD6LMJlVyfKcHSVYkdylnijKq7szSn4
	 nR6Kg67lhOCQsfhmLwr3Z2XTAqRtvMFNefQq/6bjxs2N6czlz7KJwRJlofRfP+Cr4R
	 BQKRCr+szRPNKfZrVzsJOmQmWVC7ovpPORxVsM+38S/ol94AU2PNzhcEgNyXmtf0ns
	 +Um3FD2sBFQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEB3C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875423370.14894.13987170903514889016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b2285706550117d8c2f91ad6ffe3da6151bd104178f52117ff043c58f462de
Date: Mon, 07 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788754233
