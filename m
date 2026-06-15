Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A903DB338
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781517394; cv=none; b=E81eFW+beiHss+poTg08WdOOEtrRkLHQVc+GsV7cdeILCZaNVdWQT7MBvJkVfYsPMcm5TVWKnKpz6ST28V7wtA3gcNxngjLpxy/67sJmni5oRWpwlgsRhviiUwvjhSibsXq0HSZlYBpkp4BrwXQRTYjoqRA4v31PgkomTzVMKRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781517394; c=relaxed/simple;
	bh=M4wycdXmcGz8O8sBSFFbAcofJeezs4lnauoqhvtaEf8=;
	h=To:Subject:From:Message-Id:Date; b=tSy09a7X+djVWvo7cQc2bsMbffqUtoGd+m/+SpjFeTBl8MHHds3ygkmEvkTOYLmZl8/xgsF0uiffNW+fI3AX3WYpy0FcSchn51Qu5M9y0Coi0No8yBUSgR7zwSZgd38D5A7IfZnqwD0wuwEKmy9SsqupfQf9mwqNqCrNaCO9Rek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjVSE7dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjVSE7dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79EBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781517393;
	bh=M4wycdXmcGz8O8sBSFFbAcofJeezs4lnauoqhvtaEf8=;
	h=To:Subject:From:Date:From;
	b=SjVSE7dvwKxZdhsfG5yr2uueqXFb7MWUFfQN5F2dXhRnIPs1U9ZbWBuJ6btN9Pdco
	 PcQ0SpC0W+4XyeYj5eDcGhePCYRfxxPCJzY3ETDCVSAuNha2rtNgmyALRWx57RqIY9
	 dTPMM0BFg6RO7ijlcZTN3QHZvrlpqtFXStapZFqLHYlhTQsq2+5V3w/ZZhvtF3T2Bb
	 2RSl9Io2tIrdBqu4tOTZ7KT90zcUeCtvuYXgu0bQmViY5l30amXuSgXb6XV3tfA2pJ
	 /Nv/WFaH2a/HfcZCHiDTEVJ7jPFeOPJRepkeqm0YegjXU0firBx3LvsxyvBEUVgwST
	 eDQWq3nhFAceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B811BCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151739372.10272.1755930252887078190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191810a140dcfef61d4d1abe76ca8bb894a81f8c456f33302c9044074a81b3a3
Date: Mon, 15 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781517393
