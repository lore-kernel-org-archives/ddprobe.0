Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8627932D
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756967994; cv=none; b=sN1n8BtGjveZ3FVior/kFz7zjqFlJ8qVvTZk+YeE/18eJ481JagzUYB5cXfVlatMp9QiSJCkF2X5jpdHL891LkcWneVbsE8NUBrpSjaVewoJttbFR92ERRmdTOoOpqDylsT/9vJBc75fIdCMeFWlz4Xfza0KVHw62Qde7AcdP74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756967994; c=relaxed/simple;
	bh=CoFnTf22ZtEh2AkLxB7Vx4/tXLzRoPpHNkmwa0zfI/Y=;
	h=To:Subject:From:Message-Id:Date; b=sX8f7KC/FNIigqitVoquiEw2Xg46MdeRNCxk9953GxBKLoYZv+6HypaDZHEYucL7jUF/at4vL1M/f22R5I+hdortaoGAlu9SdKA2XvG6Kkqa2unD821No2tFSweyCflssh0E+3WuK/8/9hcd1GavVxDaFOUfYYP2WhQepolNOtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiMp2fuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiMp2fuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756967993;
	bh=CoFnTf22ZtEh2AkLxB7Vx4/tXLzRoPpHNkmwa0zfI/Y=;
	h=To:Subject:From:Date:From;
	b=CiMp2fuunLCpcEjcXqAt58zyxbg2Mck3Ijt4PB341uNATUL+Cd/0WfRvlyVXc8siz
	 9bY3UHRtuvcHMxlg+hqfg6hykVMzerLdFot52ZzzXkv/w6r44CdbY0qwmb1Cl7z5yL
	 dOoc6m7dY5oGZuI7qSNcGOANlfkZBi9PNm5hhAFAL4gWA6Q7pAgsCCDkdNH3kEZ5XY
	 olqIG1GXzGym4inMzt3yKr3si3gH4pxVBWiIXU1wub9BgEVj+BIT4ecX3wX/ZEJouh
	 +7I+ZHOUFGa8DDtypiLx/WPoXaVKQjm68/+gGhoDNwPE/ARkX9iWYBWEEzrRHHSJ65
	 VMd2mc94+9yOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90226CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696799358.19469.12243573841800467703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250834af47dc0b3eb5dcc69098637c550e8cf2c3862a1f19231ebc1d5a60d613
Date: Thu, 04 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756967993
