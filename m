Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1CC3D6CA5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777901254; cv=none; b=o8gqTqcfbEG0rz2V3rnDj3rTgr/GPm8A9+wxVAoEYPdQUHf5WSQFfTkOtnI/KyKzP6auUBrQ1qn4V+stSHl2/XVWXVRBdieCLBjF94umiQ9gldZQKiSu+s3/ywWRLbVtYmN/WKCu+h0Am7OywgH0I4nleWAk4HZWCLDWt3F6Zwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777901254; c=relaxed/simple;
	bh=AAqu31mEOoNyUXrXSQL4Wbh6RYBMSetorpZ9KeBBwIQ=;
	h=To:Subject:From:Message-Id:Date; b=njmR0DX6FG8lHoLO02F030KJt2L5FXMFnZpWPwKmPRl7upuN7iMg++NqEz5kDwtMWX/+5yLmZRl8+SYJddSCBxJxegJPdNqE/rkF6FHiKOYyKZYRorVdwGbcjRg58MROtcbbDk+x/5pfMfsvEtY75ApuACdnyC7/51tBO+XhObI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgsvxGGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgsvxGGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FF3C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777901253;
	bh=AAqu31mEOoNyUXrXSQL4Wbh6RYBMSetorpZ9KeBBwIQ=;
	h=To:Subject:From:Date:From;
	b=AgsvxGGrlVVAjtrCf6ZSf2wjvUw2aksi47QS3USkKpli8dM55jCIYIUL75jkletSo
	 VfCGiW19ALxzLoYJNpvps2oBR7uYBH/ByAcYX3DigGyyJXCUYGPdchmXp+v41nfywh
	 Dn68CaVTHNZae8xZPSS47OoGSFzb7mX/HR2JFNcR+EB/r7GtBq3UyhpJOVUgftPT8O
	 JIxW3lX6pbDp6+hlZurmnnPtVUM4yrgrGSuMz3gqJ6T0hVNL+24I0o/J0gKyEi/pjt
	 QiAEabhxbivn96ZauM5z8ehGAS8Sx3TKDY0l2v29zZx0mhFeRXalmUxHET3Tlnrn8g
	 Yhy8JGg0mreag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A990FCD3436
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790125368.22471.896406578427057406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb05570040de85abf64bcd084087675cb5690da37e3cc0130208732c56956af
Date: Mon, 04 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777901253
