Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EBF2BE7DC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768457634; cv=none; b=UIYWZJC7KRYddHRE3T9+ZlyrisacvzdMTNlLFIJ9OvwPRCCfJXv5AYiewg16TZ+G9AA9YJ8slet2zg818um1KdzmZIDT2Tz/rnariL4aoM0Ul/jiLxURjtH6ee9OwooqTUHDNldrdY6z7tbNhobPhlnyKLJfqf6D+pTtmqRgRnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768457634; c=relaxed/simple;
	bh=Hxe1s/+hBGx5KV+zcx0TO5wa4Y6AG+1/9oPNExMgVmo=;
	h=To:Subject:From:Message-Id:Date; b=HUwRUVJIckkyTET/4aEXJHcLyZfqbTw6izIQxUKO/FSmpnXDPxGPePbc6Jp4JgGCIUtDlC9FSAvNVndkRvx+d8Fs/d5vQmtE+9BCPqRuZIcOUw0tCJgZclzZDtOhC2eT1sV6iyNEo2rrGCObhRMtLPwDp/Kd6aCUfZTeG8WsCdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J07FWaqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J07FWaqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA23C19421
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768457633;
	bh=Hxe1s/+hBGx5KV+zcx0TO5wa4Y6AG+1/9oPNExMgVmo=;
	h=To:Subject:From:Date:From;
	b=J07FWaqdEd4oU7250eCJyZaNmgzCUS3Thex1jVEhK1lcIyJYzzWDwqifwnlzhKz0e
	 sFXzkUS6tU73RvIqQk+YRzYCzob+daY/Dt2k9sJpt4UjhYJDWcq+rwxDIBQX1sRsgt
	 /XChcWGVY/N7BbigIdhMLALMnc/ucvIAJ8yjg3jQGnSFxeAz+pi67UxHMeGG77Jc+K
	 FyUtvLF1DDnBtS7cHXygwCqa49nO7fRcnGZetUb7ua8Aet3vaycQFKQpGWouP5e9qP
	 0mIaKHQ3HwYwbjN8KCvrt1vL0iQGGIwlE7TkhWH8bmOEfcC1xcdST/mV1OGE55Tf/6
	 knm+p+J1jBLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFED3CCB3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845763357.12556.13503668287089043421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1636b70c4ccf14f4d10b1678f4c5249e3591427b50309f0ede06cb69cfeb368d
Date: Thu, 15 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768457633
