Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2EA547057
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791505234; cv=none; b=abO5KCI7HxJeDPlqSXNkiLn1ngGWDQsEp9vaisyyZ3MgfysZ8w8jR9cXF3vagpjKWgyhMwtT2DYHVDen+NiWKgdIwRD2imb/Mw05zLuhO+a89q3M4/hSsGg52IQgJ+aXyGPktmFTmJ+USSmZNczoYxzas72j0RXSnJ4kg0gXaRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791505234; c=relaxed/simple;
	bh=80paBOjT++ZsZJr5h50KyqcW97TCGOYwXzT0ZqmiN+0=;
	h=To:Subject:From:Message-Id:Date; b=ZjO/ESCVKkzHc1f7HuTgFffeq3pJq0ydOHgXWv5X+Wcew81eSDbns+xo5NPSB7yyJgDTijOoE1ayML65y1Re8gKP1+HVpfYO5E5Bnmd2tOa1RmAKSBLXDVv/T8KptJVNl6bW1Fcxm0673UzA7xUq/IOm9yXMGTvFZagri9mMvWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBtIw8hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBtIw8hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9928C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791505233;
	bh=80paBOjT++ZsZJr5h50KyqcW97TCGOYwXzT0ZqmiN+0=;
	h=To:Subject:From:Date:From;
	b=MBtIw8hboyIwG5gyDCJbWXBFuqvoSTTq4HylpK5v9dDEb9xqcgjYfqI4C7ief526b
	 MwZoLGSIVxkA1LtC6rE70qn3dlGYgMBSGBrGSugDaQrkl8RGWNroKCNG6Yq3dLZQ1y
	 joeDmaV4odklL4REc+24pbQfHetYOux7k0f3yJOrcd+tdFQ584N0U1VCHcenForWSj
	 28WeSiTae6uieHlJoZQ1cWsBWveYDhOzewHdDy/2AA6j9C5jJdPYShH2GQGgwMhy9E
	 I7FcH/xo53JNcRecDvjgAq/qYDAl481Ew0ZqFFOV/WjCCwR8GxU7+kTXkx7DSxyNfT
	 tm4caJeWrauMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04B6CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150523368.2475.9698684495509373303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e977a99b43becd171a354b2f78dc1dbf065259c9b2dbd147936bd296f90bd43
Date: Fri, 09 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791505233
