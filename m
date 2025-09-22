Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32817192B66
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758539994; cv=none; b=SSbeSaQinRP/CD0T7FVuw6sX4CpWYur56lu71m1jgIhj1g76Dc/zxB8HK/LQMBnrBBXgysvjP8YicKzJnsxU8s6x+A2cG/HgRy1tprPe9MA+4dC39Dt1lYwnAZRT97pIZozIcbnq5L+3HDBm94sK1bZv8s9gIUNLRtb0+ThbXPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758539994; c=relaxed/simple;
	bh=p0DKrKbFcFXNkLLuN/tJZq0l5v15EGndpXmtmuSjcZA=;
	h=To:Subject:From:Message-Id:Date; b=KBVUWRbkw6svEyqr/0XxAKpQwJizcP6jIqLySI6OkE0aowyLgp6PPjw0Avu2JfWwkXg7obS/p6C5+CszL1oSsuak1IiGcyk4PGrXExb8ESaUcloIuESm5S/FLqkBOQDLVKxRSYlRhXx/nFqVEM9Yvy1r/47eAuElXNuUkGucZTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXohNSOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXohNSOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0374C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758539993;
	bh=p0DKrKbFcFXNkLLuN/tJZq0l5v15EGndpXmtmuSjcZA=;
	h=To:Subject:From:Date:From;
	b=oXohNSOJ/ST8vGRRpz7VkdW2Ft+bmsfZN4D+YNBxswaWP4+bwz42egteePobsAGgu
	 mPqCq7a9vzvVF3tR/ucRpJJto5BWHXvCkhlizrbpidOxa/Wds7j2VZWdBkOKeoXzR0
	 dmzSkXvJLyV3IusYAcf6qryrIEHemUot9AXV55imfvfuMvrSE9rogWns7J45nj8Ycl
	 wHDpMb4xssJS7HNagXtcHPZ8KnrT7woOLXx1Kb8uU39V6zOW8O7s+I2lWKrcW6BY24
	 LZ5GJqOr2CGU+P2sNGaay9DhnjQzn4hhtEY5trCxrAYLClH3/0tRb4rJUwDz5r4sxL
	 Q+vbO9+bYRScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF83CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853999357.23970.432094711976509406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7be03f6dc817f2467c786c7f167a54fc97430dd81c9f2242c08f29b165509c
Date: Mon, 22 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758539993
