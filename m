Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174BD290092
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752067194; cv=none; b=Z3C2BRsRrs8+XtSYXB0OAEIu+Ef+1w4WenF4xOSxdSU2GC4h1RZhIa4c31z2/62heXMIq8yRpvKkPH+lM+xulMrsd2oCLgUTWMdHUm9Z/KlNcG18GxqxnTIhFFItZc9gbMzJUtl0pH6NxI+sz7U8pzlNMZX1uPmq9lNwWKkybFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752067194; c=relaxed/simple;
	bh=WxxYI4RM7PGWiz5wPFfoH5upaaUGiFBVJkxJKDBbjS8=;
	h=To:Subject:From:Message-Id:Date; b=FJBl1W0e+RzUOsKQy6FQce4B0WZgU5hdAglcXgJsWriAR2s75JIueAf+jaLkrLgmejL2Nxq4ZNyXBi+k4AmArCXZXTLk9n9og8z4DNKl/lpUw4nhVcCYgDK4h3Gwz8QFZOZkzItibktdskcVOz89GbleooIr+mSXAIBrvVjCWSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9kdp0DM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9kdp0DM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F831C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752067193;
	bh=WxxYI4RM7PGWiz5wPFfoH5upaaUGiFBVJkxJKDBbjS8=;
	h=To:Subject:From:Date:From;
	b=O9kdp0DMZdxbuOAAPoDZee1uFtnGLfReJP5C4hd6fsm08V7Lmz/nlGHdSjxFaO3Y8
	 k+gKC+f2YkyBYG/cEtIBrqyHcVDvtJ049UhItCA3CQNW+yZmxETw+8aixx5s5/q63s
	 Y56apPnRmajqK9neKtclrVKDMfG8tVkJSqSSRh5oS92vAfVyj6MbnVaiUjqQlnnXDh
	 w6Sulc8AvJgkNHbhqk7+DmvFb60/SfEjATG+cwRcIfEm2yWOI5vk4X6OdaxjjStmYB
	 fKizEZCL9ft43HA97vT680hQsHXV/FFaS6u20AKdsDN/oAW3E8ctH5CLddiKmvT0mk
	 TT45Hg+aCjCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E39DC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206719357.14020.850562415721518592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f928cc4ed7fd64fec60deb537af6f5cc286479bbf94c11271958ff011d50e720
Date: Wed, 09 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752067193
