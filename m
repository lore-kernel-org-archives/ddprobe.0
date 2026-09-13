Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF8239792A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789338035; cv=none; b=EPei9+z+xOEZtRbYJ1N6FB2JUSqtKdw6zZt8EAlXJ8RjltF7sEwEXtdSpgQi6rBn1RRJ+ZqhiAaqfes+lfJ1hOPSpI/Tkf5on+VFHcjCcTNMjLFQrtWYYvxca6Lhh13SDll/uiJ3PdJTnqreduUX6AzM2kVUE6+SUrceUc/ZhTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789338035; c=relaxed/simple;
	bh=yiSRTR4e2q0VfxhMNAsxVNuSoewDKJHKk1tDWJ5YV+s=;
	h=To:Subject:From:Message-Id:Date; b=XiINspypGLlx+2lcVV82h9ZH4u40h9wx5c6gsa7MPsLgCIKvtnlljg6aRIfvJT9GqOY3I1aGR1pF0QsaKDNPulW0rlt9o20Px39PYI/l/YLq6UNUrlhzuShdKUUhSAsgsBHogkI2mygPdRYihxKcQH39tHO9IVMTKuycZDQmWy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXvTPF24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXvTPF24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3138C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789338033;
	bh=yiSRTR4e2q0VfxhMNAsxVNuSoewDKJHKk1tDWJ5YV+s=;
	h=To:Subject:From:Date:From;
	b=WXvTPF24fLd7T7//MaNfDjZS7nSTNfo2gcDrdK3T2YOJm5fAhHg/9JaZCamdtB+3X
	 PHEX0m1a5XOP7ZJBOGQp0mC7So13AWyRxoVG/zCq8hu4DoXSKbrfNO+7vZsf7ZeEeY
	 ADBa7NIxzbZFd8GZFvBGTQlH0k/JA+eMGoe6rg8zhE6ie3L3fRgUcvXHIsYLPcjTse
	 +H1kOI/xDAfYhWjw487l270SxZavY+w2CPC0AdziQbool9PfargISidf60gFyPLB27
	 Sj/DkJkjxTqJ4PPjKDLXQanw/ynZxtFhmnUkYJMVmGkfx8KiWnTNAqUEAonGivqpoF
	 RTCkrTNOxpQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA78C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933803368.23732.12329676955473348802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13651dc13584109fbac76d59f05b1a2acc4ad8d1e9c1c690af170e202beeb0a0
Date: Sun, 13 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789338033
