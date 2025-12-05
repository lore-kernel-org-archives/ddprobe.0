Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312FB2FF65B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764924176; cv=none; b=aVS5iEkrhL5l+ZGixdP3ArhW43S0GEYfM4NoMhX4D2ci3F6SR4SMt1bTcLYixPH7LKO1P8wHNPzSylliKixmxWsVybqJgUd0OY4qTKrrHEWKaXA6hmjgelzfDy0bRIKpxM9s325O6zNMEqWBbZrzqWO9K7FrwGwYnWSCS6ZsFkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764924176; c=relaxed/simple;
	bh=aeHsLM7rX/D0NY2U5yj/lm1Kh47lO7kRUyhoCgO3n5U=;
	h=To:Subject:From:Message-Id:Date; b=W+D30qVR6erR9KykdM3J/cauKukCYcT91qVkZNOhaJcDjBoI5+dDagR7sLsihUFvBcR5wF4HTjv4jbsy3zaZVNV2gEwCr/gGQPse4G9eGnASAGRYipUVpsg7yrQslJUZFWoX0r6HY3TfthupsXoCpndgxRFYJ5Tno45GWk/WLvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0XQJQFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0XQJQFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764924173;
	bh=aeHsLM7rX/D0NY2U5yj/lm1Kh47lO7kRUyhoCgO3n5U=;
	h=To:Subject:From:Date:From;
	b=X0XQJQFOxCKBiRKcSOd8xPW2UHPLEqIDNY3zfjRI2AAtxmJWGj2QqLuCc8jXXTpbW
	 yX/2DTBmlytoGya6CTCgLb0OW9oL/QyDWqWxKBvsSFXR3Pa2afHvd9OrQHUYeZRjUH
	 1cFZquf6Sc24+y9N4ybpLcCmeHiz6wpr+yq2dadPnsd4ZApu9DlUyopUHd8A9ebwfK
	 BzrGaX8b6T6oTYo6gaIBvADhH8zSeczYu83fADjZzCRIrGb/dVEQLMNaSTs5Z9vc0w
	 EmTFunkyud9ikQnfs7ld8HqncBJwP5nUCInIrNjneFZsZyml7Q5OmQfWW3PhpQv7j6
	 bWLQpqP7TwyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA4D2E03E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492417358.25151.8850971789441613086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdb589424cacfa82a406f4c5f0ad07109ad90568be35f00598519bea08837f7
Date: Fri, 05 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764924173
