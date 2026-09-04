Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD75521211
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788550835; cv=none; b=l9S/e4vyAU9FEv/NLHS9S/+V8TD0qQ+n9uSXSYK1Zdsj7Wty08XpP4+Iuv0jKgGoWO2eoSrKoCu5Iz2QgywvrsXEJ2/7DqRjrnZZLo7LpnZO03Yuyz5hwmrhj4qCWMHnT5W40lQ2tRFbemsSONLmzuJ5+uabPj3f/3XG6IPNDLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788550835; c=relaxed/simple;
	bh=jZ+76qoXysfFCpgIDzUCjf5k7SPkucjPfWaIEENoU+4=;
	h=To:Subject:From:Message-Id:Date; b=SMjmDA890ugj05k7/6pN7yPCinrSx/xk2f1txPvsShyJ7zW0UxixERx/pSzIQE+0bTk9WkmcWOIe4VYFydBojms3M2vbKBDBS0jQwip2qY+RndLzsJZaVgrQIwEYlZST2JXafd+LcC2pMHGwRZOsbllgdO6mDhVo0YSIFYowGig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4Z5aAqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4Z5aAqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBAEC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788550833;
	bh=jZ+76qoXysfFCpgIDzUCjf5k7SPkucjPfWaIEENoU+4=;
	h=To:Subject:From:Date:From;
	b=g4Z5aAqQ6X1xXgiZQ4zsK36SRQDM0Cv6lQm6SaIeP8XSDVv5oOq4WiyRzJG6wvJXX
	 GueyugwAzrkZAy5VEGt67PyP+PSxC9TNq86BMJn549u36mP6o8cXaVCYZmWwM2Dogw
	 GMbTxxQeZ+3unKwz8W0D9BrKIueQgIQLXkmLqJkFI1dQ0QdxlesX+XBY8YqdMwOtmD
	 s8P1+iJzaRQpGQUdiwkw8STMW4ipMtcoaxnZXCkuqxS9Wz0uDv8DULY9j89NsMLiRQ
	 OrTvuT8c0qDzptcFsE8cKfRvOyXot4II/7kXcNba8dxYhRTkR1SZeyHaE9JDe61+kE
	 4J5zxrxfOdDmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81CC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855083369.26734.13824587614131968043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d2d8a5ba0416909f2d1255de02c25ddf0b9af54b694c7fd3f885eec70b8bd3
Date: Fri, 04 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788550833
