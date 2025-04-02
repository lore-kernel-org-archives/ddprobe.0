Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E50A1F4C80
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743634194; cv=none; b=tqfCSzp0HQkZPsprK5uqcrsFbnzEo24L6QXDYFiLFhAw44m3vrDryd4/3J/PX7j1F9aC7eBTB2HPnCD93qzmLY4LyzumCU6gJiDuazhx1MaeTM2Lil0U9Iv0U0eRHUebokVHa21VDBq3qzjrVmynHs/utW5wSTRf/8FpsPukV+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743634194; c=relaxed/simple;
	bh=u4fOh9LU4sfpvA08q9qC5l/M7KC8T2BF9cWTKzOt6pM=;
	h=To:Subject:From:Message-Id:Date; b=TP0kPLKEB3O13JYeRbkOd8mWOsL+0EEOkljlUQ0zj39pcofDL35CR5f7zZX7MBaEcfo/TIqy62agT2Vpf12SNgNGNQa2rz/9bFHnms99i//apyMb/mPM959cGx5amdyRti2aseV153Quv4oSlkBdfb9yJkF9w6L77odQLDeUQOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAPhKOrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAPhKOrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE493C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743634193;
	bh=u4fOh9LU4sfpvA08q9qC5l/M7KC8T2BF9cWTKzOt6pM=;
	h=To:Subject:From:Date:From;
	b=nAPhKOrq49pzwKI/5Dx5BZQwmt9BoRfCIAG0W+uvh9b7/VImCBKM2kkqQb+qPvbEl
	 5fUHbhhd3K+oBXaGIFtGmYZrMi4iItyocSjUVLtrrVS0OupHkL9Hr5bPrBfdCtl/NY
	 otD8AMJ6k8ebOTJVOSMAddyyAiPGKfdrbFa9rVPo84vrYPQQUOET9HXBO2/QweWzk3
	 hpOTvlA3lHIvi1ogpZ99brEuepPOV3+voIom99OJIrQm2Y5/iKs6czPe5ZcJJhMc/l
	 VV52L5S0ryYpdOPTnQam32AD3c+Gq7Mz4y6cVmDn+hMgoaf3q7lyVLSBm6gQcwMqLB
	 DOWpitUJqPnxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C6C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363419358.17117.7172040396220482961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2125913dee3cb1aed5b06dd7f87c2f62add7120ae32940fa5f8a37af5cedf64f
Date: Wed, 02 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743634193
