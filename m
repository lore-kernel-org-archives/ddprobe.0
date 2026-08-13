Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB85351C31
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786612234; cv=none; b=a7X/z4j95DDrLpxeGr9uv7cla28DxdNNEdauLcvS6wtyXNoECLY1+/xcWUraPN8bPUwirvjOcleRTMH/j1yohZOOCsUmd5MQnZEtB83g4eS9iwQLPjosPLoLIqlv/JS+Y1/hhGwcY4eFUdyAZ5Sd5+gfWWfKajbK/y3asoFecAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786612234; c=relaxed/simple;
	bh=U7bZcQeL5mVm/99DeeUnweXeXutd54TxXIc+mRa+zoA=;
	h=To:Subject:From:Message-Id:Date; b=exrI1XxDtxfI5t+ONJEHXnA+6LP7fRXMUSyY6WSUMSC5Orm1n1hkF8NsDxNVYu1Ee+Zu5MezZYhbgZxPQCAOaJudKLs+SLwqKCNrBUU7Jx8wBrZfG/ZLKTsJcadSfD4Q1+yk1zOzEqObjnz8FLqNHeG5LvXS/bbhumOw/SFc3U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd1fVaeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd1fVaeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC64C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786612233;
	bh=U7bZcQeL5mVm/99DeeUnweXeXutd54TxXIc+mRa+zoA=;
	h=To:Subject:From:Date:From;
	b=Dd1fVaeH7PISjEVOrCEfy5jr7fi5nzQ5REJYZ9CALS91ll7Lh2xeyLrnfuR0Lx5wk
	 cqEGKqoM+pCe/y7rLmVcZimV+tyRtkdYqhX9HfAkPe4V9Ol+YwNh9hsWDfN0s56N5i
	 FPA3TbWd34U8Y681fLXxVoirEISleKyeSJaOH2Sr/x7SxepdmVhRJKB1aD2tsJx/En
	 t5gO8Vm8RSiKObhzM/eSwwwgM3d/LSjl61huCUkRrgTA1Ym4mj5PV13F3ZKE0Rjnlq
	 eRGbgQKXdJN/acJU4QswWJEZlPc1Z+gwkMXFbjeM2tVE5YLT2p4JkcwiVGtnB7ysrI
	 i0EmgQGrlyWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C96C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661223368.17219.4140062254263733463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f00a325ecdeeb86c63ac09a2e90866339ec692f51296d073924f0750a2ab2c6
Date: Thu, 13 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786612233
