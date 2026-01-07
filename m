Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994FF3A1CE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767808434; cv=none; b=j7Ls80yZ01blgNnXEf9OBemw8YEWDwa0IWmJqw0dwgR0hSF4RqxWgdMnCEt9Pt1uxAM71yxEkQvLWbaPmf4C2XMCUvQuzRj8yhsNwO1YyuAC21sjZoUYeigWv5VPzxTfzFN+gDPb6pScKWnKAHbKzhJNmvgDco0yHig1KWUQyAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767808434; c=relaxed/simple;
	bh=bwI02tVuElpMCAg8XYybQo4eIJRUdhyZuV01ZyPfGRg=;
	h=To:Subject:From:Message-Id:Date; b=A0SsqnR2NAzYrslw+4CmJxGVO0vOjqP2LOZVcpTYenJA1ANK3pN3o6yfy6JWpNaJxEFgwCEeGttzeNTHL3ETsPdHenqhQi4OL789T3UPfnR/sZJSym4xagRhHN6dzwlJL0nTVoVmr6D1FLyL4/lc+Epmrto6lOLhaoilJVZMu/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAW+Pke/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAW+Pke/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E577C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767808433;
	bh=bwI02tVuElpMCAg8XYybQo4eIJRUdhyZuV01ZyPfGRg=;
	h=To:Subject:From:Date:From;
	b=DAW+Pke/oVTxKMuf1GJIYTz8eVOYAjvhFxK2BytqKsgkiav0WZ0SKGdvD39CNuvQJ
	 Jhp3L/5Zjb1bsalzJYv/TsF34yCjq10jjTvI/kOiHJYRrrr+2r+Ei30y838PMV5OZf
	 9hM654He1tgnb25CT44F2VCvOYDPWHH3aoG0aYyxAbmeWVb6ctXFTA//Tx/tnIwNRc
	 PL5B8o/A0cZt5KeYMwAv7/G1hGDPt+fRcnKEGkxkC9DiH72eRtWii4jH19V733QN7e
	 wMUOzTlyVx5gKgDbn2bKeCBaTOwl4/tuHd4d2bxI7iee52PyyUZTb68qUD9POU2Rhb
	 BtaMiotedYawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0AD0D145
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780843358.8171.7849810470495084626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512ea5a0a562bb1b0fcb7d25eeda4d0ec4a6ee3b3b872fb804cdb249e0001f98
Date: Wed, 07 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767808433
