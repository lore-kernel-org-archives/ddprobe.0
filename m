Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E57D440A26
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786396834; cv=none; b=Thfe+QML+GbF81S7G78akXKcCbaOatvx5P9IwRLZFsnGqCo06gkmQVKrZP4DS5Eff8iD5aAahFlIwkzXDEOLCZKQhUn2dkysbHcmQuzm3JR29Ut0/Dk32nVtVx7jOHsurq6bnSTeR1pzONBzJD8NtQ8YMVBEy0mnIqhzt5TG/cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786396834; c=relaxed/simple;
	bh=qTXVeBe02PvVk5lLeub2q3vIeH5HBqOJTlzuGP5yeg8=;
	h=To:Subject:From:Message-Id:Date; b=h74AufF+obQYZPYZsmUEEmx+KB4Mz6WRHbi0TzAsxhv8Fg1sfy9d7FIVmdQuviRFMnIhytxCmQXM7V5mstMrfFZ2LAvi+MKynwLPDhTgLv32AkBRQxg7jw2bYIuPgDujCzTVkff5VxNf7OSetvbdiidWTIMb6Tl9ZELtRw0ZUzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILak2F6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILak2F6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F9CC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786396833;
	bh=qTXVeBe02PvVk5lLeub2q3vIeH5HBqOJTlzuGP5yeg8=;
	h=To:Subject:From:Date:From;
	b=ILak2F6x6F09q9OEvqZFCMUrQecCvlkZw2FlC2cM7PShwrRohl2dh16j5DH4aK3ec
	 9Sj/bipiT8X2CB3uxniQb9CBTXnCvF/ljkYHJ8Jqi8Xdphv7GO4ej/+HQf7HHiofuc
	 1f4qjYhGterr5+OhlnjUxBkMF/yzMFbYw7Qz9vrqATuxxVpG421qHCQv+TzoD7u2lZ
	 rF8RSDW1Be1RVIXIEJZD/R2cZ6/zk4QW03c8maG6K79nsS+p/8ftlr0D3QzRb1FqWM
	 BLT54fbhoCtDHj0kTiml2olM4hU/UVu6SC5/99AIfnNWhoFWmmTBEZjlkog6h2t2Ep
	 guM1bBXZq93cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA59C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639683369.22098.4319062527171515550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf6006ec13cf01dd61702cc922fa1c6975099ff841cf949f3b4c9ad6af11f06
Date: Mon, 10 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786396833
