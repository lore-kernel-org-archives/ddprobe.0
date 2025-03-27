Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4105C322B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743079194; cv=none; b=bvBFA4SIXuzsazO9RV1cs3IcyemLyBXCHv4VomBqxmsqNCm8WQxNvwiqkBwrSUcyEHwc2TqT+wJknsYILZUNw6Yk6JkN2pRbrEKVnYWDQ0JxIrC53qki4VSWG9Q2yV9j2YDjtxvITAvzaUC3GOg+x/qxeE0L+gJdT/3Dh9NXoTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743079194; c=relaxed/simple;
	bh=kKIVhgmHTv/dKwG9yYKsLe7oIyKkqbguzxBmk0vH2HM=;
	h=To:Subject:From:Message-Id:Date; b=g0TTTWXBm1p4FyEarUWXe0dY6XiI+1y2/Kle2CXo1XApRlI5bHyYd6afFFKBgMxd79HGrMbjPXBmTyG3LbOzggmMC9Zc6PX3TZ8IlEclacxJkJhWe3pRKOhXY5Bo6Xb86EC6Ed2LQyF60H0dOB4x3oSzw+WPmMADhyrPAMFh0aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig/z6NfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig/z6NfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE732C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743079193;
	bh=kKIVhgmHTv/dKwG9yYKsLe7oIyKkqbguzxBmk0vH2HM=;
	h=To:Subject:From:Date:From;
	b=Ig/z6NfYYdkZbBAlY7HweJwNj1V2XgaOCYeWikVuNkOLgdxqKnmYvt0qvti/Z5ZyF
	 gw/BaQo6J1XIpxdAXhfYtaVLBFuwlx7z8gfwJAT4coiBV3dDf764WnfxsWk3cOTawc
	 G24cnsOoX2mOi/H0HmDyuFFxkONacE9cQ0k5QyA8AeiAXvK4E2w9BQdUNwveQetI+Q
	 1LfioPRW22d3sPr29JBdJ4NcWbH+ouXAqBndeDzMYsYOYaix51afDdjv9TR2d8r198
	 TXlqOlTuSvkUSd6u0r6J1BZsVoeqcpoj19S4TJs2/EPhwskaAO/Jn3CY/5ZqyiwM34
	 uaz9SlQB4QEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4CAC36010
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307919361.14978.14942630721792034874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83f03e2ec93ac7abc257b381733e662c3f0424294098bcf48b3c26e3ed89ed2
Date: Thu, 27 Mar 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743079193
