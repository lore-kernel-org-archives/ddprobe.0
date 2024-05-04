Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA5B171CC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714816343; cv=none; b=YaBQkFalKrZz5rYvEdPldrMthBmvEEh7nCkHr4EEq6t9zneDh4UGlxWdH5Ix4uPMQ71yhFbJioBA0n9yxVfn2ADwWadXp0agwxPel7T+6Eu1mJc5LpLPp0t0ev1NMf0FsV8xS99LHwPsbXRt30Lb1QFLcSQRf8/DIfFHP5g6KJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714816343; c=relaxed/simple;
	bh=Uep2J394REakMW7zyDRpB/rbIPUIDWdheq/LxKzolNc=;
	h=To:Subject:From:Message-Id:Date; b=iA6vAVLHrTM0l8yBayhIW0K4Gtl4v6ve6MVlI85hJGT7vyGIN/zz/U2tf7cIRuR/iLktB6JQt9IEp6UbxwuRQvPp6b/C9OvsdGfF6uvHwR9O8g5cqWB4sECPFsJ85kHmzZIs83FKrtvSy6OxtSsb+NdtAnt4F7DSGJm0ZRbP+eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjqZ1JJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjqZ1JJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DC1C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714816342;
	bh=Uep2J394REakMW7zyDRpB/rbIPUIDWdheq/LxKzolNc=;
	h=To:Subject:From:Date:From;
	b=WjqZ1JJnoR+CiToZ1qbj+M3tZXwKmGqCa0muZVDHPTxyfoR8vk+lYwBpo/36eqfr5
	 Aqy5Dd26Mbj84NgCnB7TVNDzda5+tlz9EtTyL7+dwNz4emvbIIqU+nN3lMMGS1ymib
	 qB7HPVfpV9BG19aKBvJh2q03aDfQTXjvB1J/OjFfKn0cdh6ZytCx3lHcaVGPI/Z7yG
	 SsiHbb+D2CyFcr+bjpSz5WPJEcBATQiEZZMjouTVX/olrsmsTp9xpAgX3S5mDZxFWh
	 q+V5BeAmhSc6DncnrXjlJTnEHbR2NCCxvOflr1PcDQq6Dsr+lAWuZxHQa8zQeTe8we
	 zZubuX7T3E04A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4191C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481634277.26825.17097344302053912519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87dc24a7b2bbb322d451cedcb7ca50a668e3cd79c1a8935f406492ca693df21
Date: Sat, 04 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714816342
