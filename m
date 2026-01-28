Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F7284665
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769574834; cv=none; b=SKVFqbM5z2GCJ47Nh7Nxp+k3yiUjxujWM9b+DhExkDnYQI5cmh80ViCsmKHSkD+ipBzxjUwvvgRXwXsFETM7wzgfEFKairaeNNirlqy40pgEJA9G1RM54uJB2u8f+VFs3b9rOsOFxU6t12FPd6/iYKCc7nCIjeFLBNVQ3k1UX9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769574834; c=relaxed/simple;
	bh=EQB0mCQMMfLgPDaSv1Y5YU3R33kThPLtwRzY4BYiK/o=;
	h=To:Subject:From:Message-Id:Date; b=K/Whzja51I10hBRSV32pRerCZ57mUOHqHIo4bIjaJlYn+geJfrBQ0iQq9o8IyXbH1bIoHHaTXOecU02h5ioIjCGvxxkd90sxBmOIV5G6Ffi3cUi++lcc5p3xr+uHii+ACAB015sqxabkx0JA6SUw6xoohjwqEAy2wCMDB3tf+hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8mQZ2pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8mQZ2pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA471C19421
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769574833;
	bh=EQB0mCQMMfLgPDaSv1Y5YU3R33kThPLtwRzY4BYiK/o=;
	h=To:Subject:From:Date:From;
	b=c8mQZ2pks/YZunQ/MpqacNIWG0nzpWdiLpKthloGazcnBfpLyyg2y9H8bIX3DtGUM
	 MlhDi20byNtNlShvgjZZw2+eaDBjPb2NF/lL0rV3wLfDGHtDZIN34kW6wDJRl1p2UT
	 uUP3d41lO8CuLqdZz7TzUN6Lo/4sOTF72W97MLmeRsJAejdIIyrJkgQhQbaA0qrnib
	 e69bJybRUQQaYtHm05GrScPidw9Fi5wFmcczXweA9wGF6gt/NBEWz4sYb55/qxuPiW
	 87wRbB8qiHJrLqBConWfJEAey3kiCxXB8FSfySsT6auTui7CVjqXxObmB1j20yL33h
	 CafN0Q63DM1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99040D35672
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957483361.29059.5166250240389129079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b026bd91a531b8b462f8a34cfd7b07e54f56d5767c7328af3349fd85ece4a5f
Date: Wed, 28 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769574833
