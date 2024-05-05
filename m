Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BA45820E
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714933343; cv=none; b=G+/uxpAfwBWBWiJB5Mv6aK5iYpmCYTOpC92yUxCeLDNJpJstotSsIwpBuUEkqG+7kPjtipHP+IbUEePBTNxxvUDs+HLrIawR9CeDCXtZ/qjjjgyxRDXEJB+fvB6Rhn7PkGu3Yb1aV3RKtUYV9quSeqJQTT0vcvYoiCaIr7wDHuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714933343; c=relaxed/simple;
	bh=nHWBL4rI+Qw3GTfsj74z3GZyY5Ok4+wQxJoxJljvW80=;
	h=To:Subject:From:Message-Id:Date; b=NMQPKqbAwDfTaReFpzGemKaS3eMrWUdZ/En8RqXeKg0TYsge2mEIm/a/Z5KQRm7HYN1a2GH4hiL2vzZROonBymfGuSr48mOKCUnqyXUduHoTsQN9g6gT1v1iMONlMXwDrUBNH7wXiz6oqopNuAANMT5WjXxYVTLjEzNXcMJfXgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJTkGgUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJTkGgUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEEBC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714933342;
	bh=nHWBL4rI+Qw3GTfsj74z3GZyY5Ok4+wQxJoxJljvW80=;
	h=To:Subject:From:Date:From;
	b=RJTkGgUOeDVVlPkw6XHOf97uRjuCRrtSlRK5JMO68XjVVyIEZI1jV5/wp4Bm4mDW4
	 8b9hgjKlf/COsZuFAjH0aBgCbk8oua1W62wmlofYxiX6GO0OzuF8hfaB9YwKAhmxMv
	 l2RhR2azUoueb6M5a2cyeW1Zvee7mJqrcXCteqnQM51/ZUAH3og13lr2CArQBD/Y5P
	 x2dHBk1TOzTNeiBhfgwC0ezXv6fKS33p3gmyyZYqDqH3Rh8K40hkWyOcjvfTs6yIWw
	 x2c4znL5UuAN91hFwiZdebIctm+I8sxBb1reZuhsm3AwoAuMoxlyedOKFxlch9/USe
	 KacbtekjNfPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDFCC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493334276.1405.2579136143323361855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c508411d51d1ceb76045cda4c1073670460b7a2e39e4df5a2b33cf5547d2a06
Date: Sun, 05 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714933342
