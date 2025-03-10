Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFC1170826
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741598334; cv=none; b=bWTEvSYDWSLtks18kjGKAJmSYa5t57ZOAfYCXHDByTElH7Zr6vI/NXTS6Hmak+jfAc546r4umb3/1LJCKKJHU/Oay2JnVM6bQL22oyAmVDMtzrMnrF0MJ3jw29r1b6VLeL/rmX02UCi3zi6v6G14SUWPaPzXZjzAn7cgy6wwhp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741598334; c=relaxed/simple;
	bh=0deO66jeAbspMJIbVIr/i8cGVTR92vmahArxHFL8mnQ=;
	h=To:Subject:From:Message-Id:Date; b=tPypaPmsL+UB9kZXluoGUV3JG7rdcGs8pEEykc7gFusf/2eigmGI7pv+CL2V35A9zPTEtraLRSTuTHb6SouTNvh3fTU7Y65Bzj/JQDWoEhqn5YaKTW7LFj0NlKUOVm2KXaa/NgGcmN/zhZUhGzoofOMCZyTPdFP+pABeyRr9U64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ/wQZz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ/wQZz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB34C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741598333;
	bh=0deO66jeAbspMJIbVIr/i8cGVTR92vmahArxHFL8mnQ=;
	h=To:Subject:From:Date:From;
	b=hJ/wQZz80RnwsaucljcAl20yfJTU5z2JJgioIEl32ZbMyZIpqbiCc2qEDdqCceBNY
	 8N01ASzgM20wk4HiRpo+Pjcgtp+MfccyrF2yHcUT4H9OGXEZ27ioue53kwkSNB0IVU
	 Qb8U6rEFMiR5B5EO9/dHszLDAMwg3dMpZLHrMHWiW/8bid5C/UtTaSzr0pMG41WUz9
	 VhHopP3+RYmn6tzIJVkfnZmdcf+eRcHiGGmrc9MBM3K3y4joGB37Q9sschoPdWZl4Q
	 PWpqN/v7XCR7TZp30XvNjbP2ak49A5DEb9r3N9WnelVujaSNEkXfh3nmvcLmh8SVEg
	 9Dt6ZZ7CIwERg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8EC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174159833360.16381.1817492145435015529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e41c9a723707bf3cf5bd9700118da99b71595b13c83b022c6496201431271f
Date: Mon, 10 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741598333
