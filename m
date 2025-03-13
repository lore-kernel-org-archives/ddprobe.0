Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235B2E3391
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741828734; cv=none; b=IVXQhae05gjnoOX7J2dcL1dsrzE9/52K70cAnU8HZ8cpI0GqASgFS7eVnSHLU1kd3c2YTv2HWeSIeq0N5swgdFcVXPGzQ0uHVIpLd1Q14Npz4wwj0sZ85SV/wO3GxqMYiNIYL5RFt3jPMxi0jKor8+PbOpGN9aYOcHGUapyim+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741828734; c=relaxed/simple;
	bh=30HtRKBz8DuxzV8FWuHaCGT6XpZ4vNjfh6LaEi4BxDY=;
	h=To:Subject:From:Message-Id:Date; b=u/6QvtScIfXUaOj/6QHfJMmd+8CUiVgooGfsbIoevXP575mQW6tpr3SwnaOqj8nK1mKsXnngd9VooOv27V9lHKS068hDSq3KWkPxvzUGc9P66ehEV+c8ebKifv6S6DmhqCf1HAXdPAKh7Gs3UwB7/LapR4B5g4+SwMogGxb8GkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoHUMcGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoHUMcGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741828733;
	bh=30HtRKBz8DuxzV8FWuHaCGT6XpZ4vNjfh6LaEi4BxDY=;
	h=To:Subject:From:Date:From;
	b=YoHUMcGyziFbUkDV8+hf0g8dv/K0SrNBmQczUUyB+bPbliRPqhqL492gaQezbVRwg
	 48IqKzJtvUs/XQO6aqaz6clDmW9mCvCBcCFjb9rRcEcBNaSG0G433UaiQTb3wyPMSc
	 2AYRIeZCuVlb4P+PsThB4LRrMmnwSS//rkzqYnzGcMRUr+4Rc9M/bXHrBWWCvCDjR5
	 QlzIxf4YFUj5FmZtJR2mWzlfZh2aSyNDOI1dW0rIMKDY44ddZDofehRp26RqkyuLbn
	 2G2mMRQwrIn4RwZGFGdT2e0tDnz12t1l7No/0zkVNSkKV0B6Aw+D4p11TfrrHmD4h6
	 I3FsktpT7n1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586CC28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182873358.18390.4925264616969422452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d07441d1ac1e3964c89bf7e546e9058469637a6d33401cb9b8213d70926ce7
Date: Thu, 13 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741828733
