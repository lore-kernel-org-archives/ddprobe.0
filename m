Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD8F3515FD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788971434; cv=none; b=hOEaha5E6K4kpC7GI9tV0e+ernzSjFm8xW91r8nVrhSnRinHYdmo4CgWL/lsqehUscuXo3SjILLIrcwng6P/xnupRE25p3W+9w0lfd2mgEFHiKjdB1tZ3lOQoV2jRDBkM69Q19rdiLhxs4YuKs1wfgEeaQN1Si3lJ9Nt3tFch9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788971434; c=relaxed/simple;
	bh=ky6umaSwChTftisa5WhRN8gwjx9eli7rN4iBRqor3kA=;
	h=To:Subject:From:Message-Id:Date; b=Pb6J4acgPyO7+eyIglPhfkjBQtN1ZOCnwSMzBmcZUfYumKniaUuE1j7UGds5ENU331sg3WmmVl5KCOi2d7ZxkyrIdi8g7u6xZJPQX6FmWCAMDAgQ6zkXju1x2wGxu1i3Hblrf9n520jPrMrxHFUfh7CKa17DVAdf4Dd4KyAgUXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pazVWxJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pazVWxJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB043C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788971433;
	bh=ky6umaSwChTftisa5WhRN8gwjx9eli7rN4iBRqor3kA=;
	h=To:Subject:From:Date:From;
	b=pazVWxJG+bP1jNE9jZhLqn0eBVvI/xduF+tjYmJBAXr4XtRCnDAIjSdREazx9CQ0u
	 Vl4RvIioxm2DrjiGF0ymm/pELP8b0GvaJCYucYAPISoYiKIzf+ISU/c9NlC8o4q2lH
	 5xUClxZJPDSR3kcaD1ZLsZ4jG41iyrm+ETKYChPluftbzTBpeFLHpMQ9jz54kG2rhY
	 66HFsOHp8d/LeTUwX7hY+zivRTwzNNpPUiWS4ta0NJZi/ZKkIygSz/kkf+AGfxXAsT
	 QtSdPnzkLG4F0So4Uq5q2/KjMEGFysbydD4fxBV7hTSFLgQ0b+4wKWwhlUqNsoxNtd
	 TxrVxJoaDaCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54BEC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897143373.6562.17991693711312361765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083267d1b5b0e002d0c490af94321f78561bcfcd656526877c99a88a32d5bb37
Date: Wed, 09 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788971433
