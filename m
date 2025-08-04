Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230A417BA1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754281795; cv=none; b=BfQO2Ln4QoEk4jVGVe8FbdnGfUS0jA9BPyKdXH9B2xCzpkWhJUoFDO2OTxsxznvJV786xhUEWiNSfURCMXafcdcKbxHCDBvA4VcW/Lp7MLksOAW7pnCnuirTooLTebcYQNOgBRl4lsqwlht9gchLC/BCb9xDJ3w2DOSADmq3SD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754281795; c=relaxed/simple;
	bh=LOhpGsm9yFRk5ar9LakCfgOHXkTxzMUZp3JGgM9V4jA=;
	h=To:Subject:From:Message-Id:Date; b=UOjDVHdTrEHlKMdijOKnx7Gw47bt/+RG89rSWXFnA8AXqAJ4ENLyROx58OTchPwCe82cvRLX3X3taSt+WRelG5P9Jqib8dfeQczDak0yUQyvlN2aeTv5PajgncCQsjMTqrdMQEbUzOFQImORYKPHh1S0w2olxWmFpgn624W0cC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgOspHzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgOspHzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B33C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754281793;
	bh=LOhpGsm9yFRk5ar9LakCfgOHXkTxzMUZp3JGgM9V4jA=;
	h=To:Subject:From:Date:From;
	b=XgOspHzjRzg0Z2iBGMc1rtkE8DNGBf+sALl6+OFgRgH15A2hh6nn2Hgqvy/pRRdAF
	 F6AAfOHUgVtLBbJvytFjMyQ6Ed262F+lmmn1tqZW2F9jm1G6ahBEwPpGUaFZoo5tfQ
	 P38dq4F+xfysbHuslWpgZd3r0w+MQyNCW5p2k435kE17MXJFlF74lUsR/3cTnSrWqh
	 BRRlUDB7UfM4Mmzt+R/dWjwv6atysr/dlJUEJIBEm0JJGvI43XHvEPITpJkas7LoWo
	 fc85FjwhHl6yPQ3JOrFTUwvUXwIDVoz6LqXnL1WigrZuh6rOQqLCmQRvABJeKXSmYz
	 9iCjVFCFyL2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95990C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428179358.21236.5154369996189397415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ce1e40662fd3c2a035566448c3851a552056a2d28d4ddc70493ac41d306457
Date: Mon, 04 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754281793
