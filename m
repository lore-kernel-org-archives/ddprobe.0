Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166A019A288
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774691094; cv=none; b=bjnZo1RAymBi1pFBnxumROW/r/hYYUtJj3TC4jzltSrgiv06YlNU3ZLDXINOLQC4KIAGMVoaqghKt9f/4gF0GeIYmfoHQK6Vuc0pYpKg9wYmDKtYyc4hy3eAMmo0TR1QWLS1zEC5jqZU44OFVhkVXpi81eOgZ+2TjoMz4vg883w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774691094; c=relaxed/simple;
	bh=7/llwY8Ax+2VeE3AurDCxYeHNUvXa/NjCRD1PCWTs0o=;
	h=To:Subject:From:Message-Id:Date; b=dHfn8bMYheybY8P8LPIw3ykcCTYU27nd/RMv7zxv7AWigC+QFJ2YGNC68UCzGr0V+sRMXeHjut+zo7ahCMpBUEkr2hz1YiTg1WNqOK0kSkGpJawEqj2MHcXNLZkFgSeKvz4Y4Df94LgDw90oZ2v6UpyhsoY1cd/weBoXjV0nmn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/Ct69mw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/Ct69mw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774691093;
	bh=7/llwY8Ax+2VeE3AurDCxYeHNUvXa/NjCRD1PCWTs0o=;
	h=To:Subject:From:Date:From;
	b=o/Ct69mwuq0xOkBhUDs4yBdKBDtO/1n9c24kbubdomD3Kkf1sfvffxiSTimQHaAAJ
	 DTE/bAr7CmvysopAUvTM3te0nkVULaJQBqZQBWPyJ1/bsvsT4Wydpl841wGdqkyO8U
	 A9tNno8tM+lpu0GSG2QQ3zEy+uWxf1lO4YRZnNi3fTEysqs3acH1qjlLulG0Vk8yZ2
	 n2+CvlV87IFpjDhcVLYk5NiredNanDK7YIATGsIuYp9zhD9eJspcsXEczaG8FYC/VT
	 NlBNEgEuryEiWRDNprF/4XATsp6TOFMBVgtNC5yvHOZA2V9PmIBLZ188tiQaFvQ0rA
	 OwbKJdxcXmTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE0910ED67F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469109360.14901.11006394131121114916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a2712f8eba2969092d3768ccd277fb2a81490e92449bf2940c715e15d7fd59
Date: Sat, 28 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774691093
