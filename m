Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E6A388890
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787601034; cv=none; b=oCKxtttSyzCqYNE9PhKBXs0kpjr9DQyPdPrfDwRs5Qtkqh5aFVipB7T9eshTndCMCJDoUAeuoFRyEO25QRUD1W8lJSkRzriVdbitt50QbwLZlMwR6p/6+LQC2J853Wh8JO9N/GbowS3vUMioqFy2+r2TNnbixPX50aBionaHfbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787601034; c=relaxed/simple;
	bh=xF6aHEdQpt5O441uRgTVfKLSjiM6uzVTeHkXnLQgTRk=;
	h=To:Subject:From:Message-Id:Date; b=HjYotxBxS3KU2qmswHy9O1NYGtjow+goxexkGjtXFPNMgiUT2XuCZOE+Kf3LhoEFWl22n5U5tdeMLIwY/yK1tH4P+KnDxiGnygxil926xLQxVQadf9Nuo5MPTCuRmOIbgxWO+Hosc3SNLKPsjBhaZIkBdeNLXw1zOcJ3Q8zhDes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQleMmKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQleMmKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0720C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787601033;
	bh=xF6aHEdQpt5O441uRgTVfKLSjiM6uzVTeHkXnLQgTRk=;
	h=To:Subject:From:Date:From;
	b=FQleMmKhEpjXo3AGJ/wrS66oTvKJV4h7hGS9kZMIcN3dPiDjXNBkDvCUHQNurRVgD
	 hKX6/qkxodLK4Oo0lKOqh8tyw9jM3A1S3btKFt7GwNeRKSHn7r2UCxuyRmcSgGKm7Z
	 cKZ3IKA6hywHusj95Gilz3tLdsz/Y3yraKjjJ6wibPypVogKOyk83r9O5QmstBDgpN
	 B1q5RKA1Zr7WwNxWwrOdYv+x1QQ5306tnkG5LY5vOFb3vdzvlJtJeArcgNiC6JFnzy
	 tnob6qDvVYQXvJi9Iqg12o2Mukanr8l5gbNaL3tpEYF6YypcOWMpsMucsTmXA995j9
	 wIpZMw8AvQYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE28C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760103369.21481.14010929873829510156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f58bc80307920044ed6117f2e7ab6da64903c7cc7c9153cba605b398575b77
Date: Mon, 24 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787601033
