Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32521EED8
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763833914; cv=none; b=f2qds0WiDWq+SeWjCjAomkeokUjKLAO3l5OeFDfhSXARnlIpDSwMcVpURuM2G0EvUs52sLYRL0YvNnR4E2jDZ0Xd+UfqBdVbEmuBgifp8p9DZ18seySNT0uyGlp5sa9Qy1h3Sy/YoukRMDy0z8bZ1iooO1xAqkmNnpWrrcm2YEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763833914; c=relaxed/simple;
	bh=s+mtxhUMxH4kJM6KQ9kFEFKQUt6KWSvISHalYEWBkmQ=;
	h=To:Subject:From:Message-Id:Date; b=sY5lZYsxz06XOI/tfQLBk8zHcONvDWFLWGbT6iDB+ccAzSTENH/CYsHjDmRCcGSOrE5q/SckxByvK7lQga1veNmkX7E0qKHUi6b/AHVQnpKAXw78UeRjwNKT10dPhYwuVDbo6AbXC8/M/SEJ05hggsZADNTkvHCrvOzCB97F50g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrcvGbB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrcvGbB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE76FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763833913;
	bh=s+mtxhUMxH4kJM6KQ9kFEFKQUt6KWSvISHalYEWBkmQ=;
	h=To:Subject:From:Date:From;
	b=JrcvGbB9l18bVNgUOGKJICb2HvUYMLHoUpBAmmzKaDso1opwgFYlrvL9tYUIHEaN4
	 iAzS4H/jnz2dp0+6ZBbX+05J4XJMne/uifWWLn4AdyWoWRVmP/HrpsYB/8Yi5LwjD2
	 X4+sJGb2cHqf5bVUp7dsE6wJXYGCIbn2dwM0VSqd9SMaawTPSaWH0lcM3E4jSIfqYA
	 j6OEByAngzFPjJ9Zqt5Y74iquRTCJaKYOCmGTomN7hYh4negxY3fJf2EkaCAozDCbF
	 DqonX6QokEZhr5LRYcsztYpoHhehfnMmF0BSZztyE47rhTYPHtsKInEkvRvQTxcNvh
	 CAiFiSWJfMFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6BCFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383391360.7623.9181806048400719577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f240b9ae936bc6b9900c59acecd054e871cbed79653a41bbd8786c89fa6bf7
Date: Sat, 22 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763833913
