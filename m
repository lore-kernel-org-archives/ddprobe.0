Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32057274FDB
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756893594; cv=none; b=dik/e1vHBqsP89VOopl67kfdWx8AypBpYqr2FK4NYkDhlqGln0Lcl2uP7VRbYQTXEr4ab231lrQyQpMF2KAYs0rlXz7hybvLpoKDaBu6D1ZIP0BL7KYCxUc3U7dIqyBY9dFSQv6Bo7kW1SPaxZ02XWXZEDxY5I/8UpZKX74BaeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756893594; c=relaxed/simple;
	bh=7pD/RVsu83kckCL+WZqKxkckvJrV3jvBsMd+ZhAfhW8=;
	h=To:Subject:From:Message-Id:Date; b=ZYET+5GfwonIEx6C5yzYHuaD5yYekHtvtmnJeC0e7jbkHY1ktBHBmP86kKDhUiruVnj+4mcbPxQ8WQoxD0z0uM30WAWbBJlyvq2ZYKekP6IeM1gvj1ibYUJ3piv11am46gsQ33ch2TSOBGt5xQEsobX/E+VitlUb9q9HVLgO9Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9vyqeX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9vyqeX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7386C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756893593;
	bh=7pD/RVsu83kckCL+WZqKxkckvJrV3jvBsMd+ZhAfhW8=;
	h=To:Subject:From:Date:From;
	b=U9vyqeX+WSYe/HQEhzVt/H113DjxhxRpankw5Tqkbf5oCSUCSZcgWr/C6moR7F3Dw
	 zDximqb9vlo9+6SzWuKc4shb6OL4pHeCcYQ9qCNCYp+rtZ4FmzcybrvbNfbglkC6Ix
	 +Awjqir+NrSEz3+FFoXAZZeEvitr269NtaRAPCy7rzXIaBOpnEedkfXEJZRkI0Sta6
	 Y3/SknISvjKjuVJUuSPYM+MmwISm1kAtv2TYEzvkFkJ+dW80SFM5Lquhum+/Qw1yVl
	 ci6A8Dgpv7kF5StVv1IDlw3N/Q5S9WT3kxstDSE+17pACYgMoemvJ4mCGxsazYHizl
	 sYGrfHR20Me2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BABCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689359358.32560.16583685090015947644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99133611371e6ed8695d912d9978fe7bcc4f89f51140b1c2bdd29964d6bc4471
Date: Wed, 03 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756893593
