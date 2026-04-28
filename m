Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B912C08DC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777414653; cv=none; b=s7M5o+ilucDlHyws/XYGfbmQikjvLxpZNjVNjHnD5leOT6XjAkjbsQ/4wjUYxbGaMu7awHqQ9cZ9+03mB2vcSnnik82jvbONRMnXugrqqxgoAq7gyAEHOHggLsO+62Tda5g9tJasTGV9b4G8r90OOXZ9fALrsAqV3pykHoPNabE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777414653; c=relaxed/simple;
	bh=1a7tA/q0zgAycX5oFJ365UgY2ieCNV1+keI8J+cr8k0=;
	h=To:Subject:From:Message-Id:Date; b=n7+KUNdTSuDorQfWxYgpe1JuJtQMansI4DTQ1utzj00OaL4MTKZyCht3PKo341zlv/tUU8gOI8LzM7m7oy00ObUtLZOJVEXzIxWDP42pxWD/8f9Mpq0HT5+aFY/ZLX5H6YqAtGtCShdImAyQFlRKQPWKsoBXbvALyZoGWT9DhFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5l7tCTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5l7tCTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E55C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777414653;
	bh=1a7tA/q0zgAycX5oFJ365UgY2ieCNV1+keI8J+cr8k0=;
	h=To:Subject:From:Date:From;
	b=u5l7tCTLHllM/CjxioAEOvcs8KhQT/nBj9WJVf9wwuqAS/jskBr97U8EIBiciAztR
	 CfqkdJpn8sAYYLeMmJZplZPQLBY1xDxpQfO9UfVpyOlj46wEXy1UKcvvHYtJxFxFlb
	 McxPLnO1Yksyf6x1nS2AeI8nPHx1AGdPFWFK2IytGeQWkrfN/A7SReItE5ciS5LlrX
	 i9JW8vdRxAoYFUIYj+wrAF12JZoUeh8oC9uE+Hs5QJ4Wyle8XyffO/Fv9N7ThkwF4X
	 INiBz/qZk9Th8WE358nREagGeuFyMvzt6Km8Yf6sgzw8vuMFqSSlSthlWRxerYFuK5
	 ONGPvDVp0vz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A903CFF886C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741465368.32688.12943633397396902740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40eccd3ad13f2277fe133f03188760a224be73bb3ac045323ece786581004677
Date: Tue, 28 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777414653
