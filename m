Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48422175D53
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741577935; cv=none; b=LLvqKVKQUdyyPlJtAW0p/Ys54LSt3wmprHPgGXlXPzhwFLvpjh3SIqo28NXSE0NPCqV2fZgUbf//xgcTNUJlODf+eEduGxwc9ePeA7xgnVW/SCjGPNl7NMrX8KA/iZwRwJS0mvrnlz79ZKm/tVholbSqnHO1cq3SA4+Tp+MioWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741577935; c=relaxed/simple;
	bh=DeurhCjzfssGw51efjwGQiq6f0h6K6awrcRKrmwdMZA=;
	h=To:Subject:From:Message-Id:Date; b=KvTStgJFh5meIYQsAZGG8zuoGqip7DxxzzX11nnURzT0WyLavu7pNeuJg40Wd0Jv9ndj2gV2tzOFznl9eA93ZLpvjaYlPbdamjKoYixVO7/OOqde9qASz7pSQFcDgvkzH7VqMt1RZ5aJXdB7/UBgMnLSoN0xMqSdvStpFJzg5Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzWjKbsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzWjKbsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2556C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741577933;
	bh=DeurhCjzfssGw51efjwGQiq6f0h6K6awrcRKrmwdMZA=;
	h=To:Subject:From:Date:From;
	b=jzWjKbsuNkw2OYlET6BEdvd3fjPnG/OHPeI4QrDnh8jtvHbYrVh5Qwpiecn0iETJB
	 jv7+CGwPgFMEneFmjfgBWfaKozrN9x0EwqzWvZsPr9HSnCGnrk1Z09ZS1gfGLe+KUj
	 0cymtyccbLr35PkjqRw0gWrKc2pSMyWdTw3eJ+Q3iPEW3eGB5iLaYBpcaDGI17xAxX
	 J9eFzHsx/fK6bhjBjYQMAdNtahqvKOKGQKMIqafVcl0uei79wNW0xBgvIUB0n6vIt2
	 /AgB/QwzZko7DxIdsl2xZLxKSasBjEoDXs2BY0mMpvWp1Y2tngoSh3M2taiSXsV/W2
	 xJeh6M2qJ7c9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F3BC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174157793361.14815.13436429953500257581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d349783228b6c0eac944e486638540e5f6e762dd13ed33974ea011b92bdbf4
Date: Mon, 10 Mar 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741577933
