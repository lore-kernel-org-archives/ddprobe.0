Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704A1D9A7D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737702354; cv=none; b=UKGlsl2jNimKrFJthsM28FycwlmmvCR3IeBrThNhITE4msEbo1bEyeOP9lrE5A+iAh5Ge4zcgKJPP4EXWQYrN7OxxESkJ7H3Dd5uAVPgfSnG3coOQpoZH4InVGrODMZNjsm0iI3ZXVus6Mf5Y4k7KN87+uHbbs5M69NkbLpYQHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737702354; c=relaxed/simple;
	bh=nNawnmCJhnGW1M4FdbJ8fFYcNTjGN49hWarueDLs+18=;
	h=To:Subject:From:Message-Id:Date; b=jhFmZfGzhVc7eSPUcMlVGmUd57vaKM4agYUoCID8ndmJVHNYKBrwLfNrIzVHlhvV0Xko6ysW82yRJ2exaqwJgUUV/1gQKN9Y6YkUvyFDVc2kgY/yRZr35k4viOBdfWpUQp6VzRc5VQvUp+GRed5O1dF3RCZybg+cm1rI76tCqi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtQhYfc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtQhYfc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C7C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737702353;
	bh=nNawnmCJhnGW1M4FdbJ8fFYcNTjGN49hWarueDLs+18=;
	h=To:Subject:From:Date:From;
	b=VtQhYfc4c8aavXB4yGKX9SujuPRWWOEsmtQ9UmNuN2rg9FKHTYGmHbq9tbIl1Zqro
	 Bpqa4DiiDMSwByCGbTRznFgoulJegXjuCEFzD+6UwtRc/yUg3iX++EI83frn75pymE
	 auKHkiUVC716gWzykopiuNj2tgswv7OKzW/aNZIt8CMVBQNTFsDet7yxfGUrsz6w37
	 XsQH8SixpKfMfdV4hnzk5yacpzPnRsKY5cSMuKRUAvepz5Y1O2UadRrVMzkdYzXaFA
	 m0qKoJ9/F9IJhFDYkR/bHqNG2Xpw4sCrQj+PVr0dX7bSEvpH4AAhzDZ1eZRQ7dvanZ
	 Ip1zuS88lnI8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ACC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770235358.7521.5807196762006326490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be055c9ab59ca9484fa758d96b338e389cf6c9bf92866df525df7a1fda9e40dc
Date: Fri, 24 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737702353
