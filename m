Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218A627461
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756099194; cv=none; b=NrdImP0qyCEq1x+anpSp4NbKAZl2Yu0IZ3njydYrNxyjij6c4BnFDUBRhe/LGMlWv4znj4nWXAJEh3BzpQEV03la1On+F/aA9YhFNURQF4marYqrC9bNjK+85Bpm575Gg8N9IbDmT6JIyUgcghCWVZsENYGiXdncc5bMG+5EcPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756099194; c=relaxed/simple;
	bh=aMcbNdlPAKTjNHEK0QMPxe8VDloxgRQBFWZK1tnhXVA=;
	h=To:Subject:From:Message-Id:Date; b=V9pLIGGQBc439+GQddA0hkYQxgL30vH/V39x59XBoXKOOb9g+lh8h99qk28ZSEycrZ8XYxkGnEATgc/Oh72e7LDBpMCqYY1iYr9l06HVkFo+Q97CVApXTX33qAJpclp/NIGey+1th7Dg4bw0bRvTcLg5MpfSgqZ5SbhyqxSA4Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roiwUbjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roiwUbjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E67C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756099193;
	bh=aMcbNdlPAKTjNHEK0QMPxe8VDloxgRQBFWZK1tnhXVA=;
	h=To:Subject:From:Date:From;
	b=roiwUbjRcjwHJhSeVUIPdymWmgkQMt9GRRRvRB9kvDJ3U/pJTB78ibJmwtaqp84jO
	 KO1kaFvlQAEwgONbao4MIPgXvm2nKTnB/K2erR+w368ccsz4/yWNvGXbkB/h4CHJ/5
	 UV2JjgDS3gJrUB7fC2Ef1l9F5QSeoXbG73+bX3jCTtIGJLBZkuCYYDdusB1Hdg2XXD
	 SlI2vPFspR9mQiv5nHHkcm8CtIKwLFEedfp93fNNWdt3WnRRezMS5Xyqszvx5NvJa1
	 ct2A6dcD2YCOzgic6OEelIBpNWNpHE4o+WQLR2I00yRv60kVBwCEPzF+GIAavvL4u0
	 XmAS6ffjr/wiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196ECA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609919357.9450.5269762076665598240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6310b64c96bc651f76e66b151e70a864e7470a17900253f20b427b4f7b09f3cb
Date: Mon, 25 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756099193
