Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2BC42AB7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767532434; cv=none; b=TuYZaDgsOico5IdhhI2ZbzhpXjcKbwRtN3tOVYiQk9FnQ4iZyRANsrGoW71W7XAsS/yuvBWbA7UcuUsyPiY+wbIO7WxvqXvv8qsiX13FwdgtrDCFX5HPE9qWCzfj2rcS3j0AoPML7ZdbNx2VYPLel0OEqQgFPz5/aAoHYQ0w3GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767532434; c=relaxed/simple;
	bh=HgEQpJ+LwrkVMKwB+VuKtAciYUK7Pphx93klDqXA3G0=;
	h=To:Subject:From:Message-Id:Date; b=VPW9lFqBi2g8er2xvPU3vpgKA0YxDl0Dwl1uidMYoWrP8s9QvrrZ/wzfZKerNgeJjU9OlmNhf7IQsOyBxcAxUzFgmxdjiL4JNOmO9F03+mCX3yzhzFyPwwrBaPn0CwbYTgYdnMErOLIrDkNErRa8rZ3ZD91Dvxt+QmAM2awF8vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQDz5REW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQDz5REW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767532433;
	bh=HgEQpJ+LwrkVMKwB+VuKtAciYUK7Pphx93klDqXA3G0=;
	h=To:Subject:From:Date:From;
	b=oQDz5REW1Xf/Nk73xp0j+EETQw86MNjD8dKzkpx0OyZtKwpTTB88X0v4u5PF+Z5O/
	 4T4yd849Ux7bfmnSwfjHKl+lfNadXHws9FK80Cpyxor84bP7DAQxfAgDZ6RCvsI4Z6
	 1mv1mbGALzEDe8TLCGGg75paictMROIUkdo9J2gAgjP639qTfhGsXtJpFUDvfzDzzj
	 wLwopmHmq4jKwrCejPhWx8LLztjpUESgJFuPcVU514QqmONvja43QCtP28661vFOpF
	 2wIbLIqrSu7o4Tf+m8Ru0f2FhVq88/NtOUAPKf5juxeJLvXZseeBs9iBAeK5mnBkqV
	 qUe3Tl6uqr6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91998C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753243357.7118.12882114836754213631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f09736dbb015b35de77027fd00bac3ff899d51878dd0457b0b86f0c8bbdfb2
Date: Sun, 04 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767532433
