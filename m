Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A4B1A08AF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783345714; cv=none; b=Ql0cc5Gu6f5h0TYpbiDkdGgWPWLUmCb7uRchUedZcLx8hBKMFi8rCry84eSCPom6uZX/WP2cQyQiwaBNVJSw9D/s4Vv19LAUPRemwQ921vPQ9WgqslLpSFA5Qxr7KFE6TSx7PqBSak1Ru+H56ksdupZZC6yM511I30RQWZaZQHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783345714; c=relaxed/simple;
	bh=ajAec70RVTdeLHLQgj7vVCaMl7hSWnOINIr2eI8t+q4=;
	h=To:Subject:From:Message-Id:Date; b=ru4MThB7DHhH1siWHNg5/QU1HgzFg9u8206tRurnynNPYYTcJiqItqnmOLQ+MYwsR178gsxHkd4QdOmsdrr2O3LLAvzmZplFAV0RfJLOJHtbSx9+zW8NBj0OzgoWJG1TkMln9GMsDdrmRFH8s9DM5SpfLYTRcyETNvIKGAh18KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8ZaeQKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8ZaeQKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB56EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783345713;
	bh=ajAec70RVTdeLHLQgj7vVCaMl7hSWnOINIr2eI8t+q4=;
	h=To:Subject:From:Date:From;
	b=L8ZaeQKNLpVe5rFyNnFXrF890UevRmNyd+ig4BKW8D50PA1dlcXrjhMBDwRLv5jei
	 kXrRulVqX2kiDfA9QEutvCosmE3/hSSi4BiMnmPs2Oao0h9EpijZKOZBk7xn7Ffolj
	 x3BGcV8EbDniXoVRBTRopRicQct1/LDEmSUGd8jVDT5gyGvonvgDJxSVPf/B91vQi9
	 oygj9u1xXxRWZQl1xr1IS26rkQhoTmCKw1nDWPPBc3TOoBjPun5UYjh99McR4G0hO2
	 qRJ5fBKsbZhpqljKuFMSa+5bhEMZ8cpSIw4HlL818mAmTbO6gTD/4GWpkoewMKC6+Y
	 25aFVHDvU0uWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E8C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334571368.27174.13636368100393894584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d09e40ccb2f12fca5ab4f890b812161c2972cbf524fdeca817be483da257dd4
Date: Mon, 06 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783345713
