Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261BC430BB6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772405694; cv=none; b=YhO5QiFlPqHFgYmF1nQgNbvsqBBQAzTnUcenhJONzshxCRODblTAn0bL9dDdE4jwJNpwusnC7m1bDgm1bIPo0J9bBkEHIcSA8RKLpFUpAVUKTtB+xbhY4LsyLQmjpqQUfD+Sp566Yz11Duyy5h/cvDtRvYkkDlRh9jswmWVEHMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772405694; c=relaxed/simple;
	bh=16iDcK823rrnD16wVmJ/r+TtPFPrV0rKzafghDUh7Gw=;
	h=To:Subject:From:Message-Id:Date; b=V0mLESJ0gDlPkGWOaOiccwMobTqLZcmVh+nmRz8l1549cfaPQbfnOlVH061HHfOZe42jIFJCvqckIdvVlZg2Y/G08eaXsCKyQ3UFxlblRibTleTT+BoBsU+CMOkXJ2Lsi8I9rnNO2QSKsF77vLmjBETZLkoDe0W+OvWgwZuD9bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGV3aL2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGV3aL2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60CAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772405693;
	bh=16iDcK823rrnD16wVmJ/r+TtPFPrV0rKzafghDUh7Gw=;
	h=To:Subject:From:Date:From;
	b=JGV3aL2q2pqPO084xl71eBOOiCeux7WmVZUGjDNPyvGEt5CfN+BgC8GVszWgtQhAN
	 lMw8eVhMdNWWfPR7amexltGfsxGyBvRT6PQ3uKvTQxuAK7cSeaU2KNXyj/kHNiXray
	 8X41F7u1FD0jIM0dLk4FuCQ8519xp9NGs7KhuBxiJQr2ax+Q5ie7MZZ0tKD5S0j9Td
	 mzahEwU23/eq9Und5RBRr7ZTTMOAIqhLT4Sc5deAAAvrfWUYipa86H8L6ZLhxht/9z
	 paZZK7jxK5jYtY9DddfD78gsyDwQEJJXsj3S7T3VWV61FNXMfIMCz3jCPbF5vTAWU/
	 WrOL86OVIpHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C562FD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240569359.24737.462186853620643334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad572f8c09655316aa1713c1b5f464b28ad76d9f721bca2b9dcc0b5abe7306d3
Date: Sun, 01 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772405693
