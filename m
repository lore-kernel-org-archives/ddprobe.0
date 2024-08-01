Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9EF187FEE
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722509754; cv=none; b=fTF5N41TDcOfp5vCZsBIWS+g3g7zyQBxDXgsbQ88sVQjGUgQ4Bk6Wx90HCKQN0DTFWTfGajKBxaGYCKcKIFJGqnbqqUZaA9f2OEhbHcccBYugDL5+fRvszcziJZSHQy3yHPNdHhA+ijTwA1cwN5rEp9xlKDJC7IdCqY2ouFH0sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722509754; c=relaxed/simple;
	bh=wyBrxr9Ij1AT8G86cvbwiDC9c0w/5KCveZIOAd6J9+A=;
	h=To:Subject:From:Message-Id:Date; b=ASztOmj9/y86+QUKuBuWHv/0ZnlBAsPlreaT4uq61wdmGmbhxYY8gbI0nk23TnJ7T+OZOCSOHuy8KHE6qTzJNuF3DGAREv+0qIlXPZqd6K+W3/qbHTLvNmAJNGoQFgPia1fasvtA4cFzq1CP6IXDQzZA+GQ4LiSJzmdpqVgGPeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaGRw6mP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaGRw6mP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBF2C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722509753;
	bh=wyBrxr9Ij1AT8G86cvbwiDC9c0w/5KCveZIOAd6J9+A=;
	h=To:Subject:From:Date:From;
	b=aaGRw6mPppz9z+yIIcaHoY1jLJFQfB1BAUA2g2LWAUZZfoj9zV+7M6R0H9/UG5er3
	 +EviiOghjWaxPrOUahvRNofy8vlUwnKakvkkRs6GeDDSMOf8D7nvj56bxPnMJvqnna
	 Ia1Vwq9K6iE9vx06QNGP5cwHV7S5SRiGAZl3FYgPb/wUgMk6vjSGJAUDdGi/90B/Pq
	 sg2ZV/0+cDpOFlEKBUMg4cnea6IUVO3pi3oaPYXF/aTj5OoA0owoJb89Tmc2mC8rdS
	 8YRZNWR2gYT3IxMv58qu17rTbCn0pHVhEC57QsbDEjgSo4dmcyAa7vaLr+knqHlJvy
	 vBk5HcRjs4weg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ACDC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172250975360.22957.2537157103919057472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7af05f6d50da03688c62d45b47bcdb62625b8d46b232b8ab70cf04002d502b2
Date: Thu, 01 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722509753
