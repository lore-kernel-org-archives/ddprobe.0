Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BFE2574F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719698063; cv=none; b=c2pKDAIWhyxqZdVx3jt5jGRe2XTFH3begL9+Qz13vZCx3yHYy2+mmcRj4+ThYbYNsl8HtEY8Luv0Z9DdOkDV5xKiiaW7JIHbR/RFZ1R/gxlB9id0s7GdD5RIdj9YmdWhvYqPEBsKPrtM9hzaVY48Wj2jQk7sF1oJdQunsGBUhU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719698063; c=relaxed/simple;
	bh=BXVUJS0xm+GP4HBYv8uPdituk0XOmbLno0QGK/L862Y=;
	h=To:Subject:From:Message-Id:Date; b=LsNQmGC3uqH/HEWI8bi9dSR9lT+uVweysYYDEgqPvq+DCfv7/pIh8AzR1i4tEf0vuYDca5QZv2nkmv65WbbrUyskAsFiVU6+fN6TgPC/3zaduZlWuJEbaP5x8gOuD0ib9fQ0G+/v1+fivRMuuB94EovFqvhrxq5voAKQZnwW8Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqUVmPwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqUVmPwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC42EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719698063;
	bh=BXVUJS0xm+GP4HBYv8uPdituk0XOmbLno0QGK/L862Y=;
	h=To:Subject:From:Date:From;
	b=eqUVmPwzWW9osVsXvptpWgMcCNqg2xz0NrKa5N0+gXcnd4j/63R2j6dfndZeTHjcs
	 BwX0P7mkheJqkDurC6jVOKYGuhSr8RWl4orkYhJpBhqWJYAZO3/KuCw+bBGmWcU31Q
	 OuSDTMbITaeiO7wto6P9DhF2U6uNqsfYEP8mZ8SSLMeET8ETwF7HoWDanXt5PmtDU+
	 yF4VDiC2dsmeUBqfSACuwbrpEBr9iXdbABpemPBpnMpZVbgNhi2BxdBxgRCCO4icvh
	 eZQfsV5U/HaPOkN8weC31xK7SO6W+0qzBe3m+laCS8d+Qluc0Wx0AV2m1/cmKRPzCx
	 +c99/zvku+drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D239BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969806283.19074.13525974004261725214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2c2ff9f8911b0678e4d3b937079d2765e379a5e41d46b0a31309cb97f9a3df
Date: Sat, 29 Jun 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719698062
