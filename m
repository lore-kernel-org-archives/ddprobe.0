Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B6A2628D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752220193; cv=none; b=bRojk5DoImoOAIpY5s1Q2YV8fktZFZG1dvSGWTdHyu9LKVp6pJGM28kIiHHPpE9mFPzkaH77KUoZr2zon9ZJUD3tpHA4eScSgiNF5haIE1m0k3wDooxdsHTln0c7BRRlljEBpr735jfpq1XD02D7r+1n3fjYXaC6rbtukPlFPb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752220193; c=relaxed/simple;
	bh=PxdEuEMgG83k0HFtOX2bLvE6ZiNWAREXrxAKLPESbLg=;
	h=To:Subject:From:Message-Id:Date; b=mk4QJ+MpOE9poy+OQ+fnNre4F46QfpoAz/nvqtq2KuORnoxOcAb+BgBwL2cPSFwJuEFOQlCv1RZu6+IOW0dE07YgBzzlvrlhLNHfaTTHBO2Zd+qQ9FCSp8UZ5yhuqn++zWorwME7NUAHBxHMYRaqaPwsFY85l4AXndWulFPUXdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJzUfbsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJzUfbsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752220193;
	bh=PxdEuEMgG83k0HFtOX2bLvE6ZiNWAREXrxAKLPESbLg=;
	h=To:Subject:From:Date:From;
	b=UJzUfbsxHkiK/3I4O/OzFWo2beeEeO0OxPLtcBBz4DOOTyA9BGidXQt4/RttWaCnG
	 2rjIb+GWNFlNRsoYeAfklS4zxHUmAYscLY3vekzgjxvAW4RUINeceMjEYOc/Ne+URn
	 TzwsZkLpmvQ8QQXcArQfGmdhvy5nUKZIbi59KyOtZ2JIT3unZXrLJO/3D1PXccoixz
	 I0dhlkl/S6yT9W3odRaSMhxV4E/vVkpoNF88QD/WfTioCttaZFFuVUOUJyR/8+yjJH
	 Z+mSidQTOL85o2T2nAYarBFZA7qpZ7vNhEL2qJRZS28AEEV40XeNvO6ScP+rVOM+t0
	 yS66A4VmpufUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DACFC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222019357.28112.10393559627610342613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbd8cd2e6172370f9cc79a188ded802dae592c15bc7acbe25ca06c174ae9927
Date: Fri, 11 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752220193
