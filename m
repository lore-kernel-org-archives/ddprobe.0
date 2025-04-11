Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCFB2367D9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744390194; cv=none; b=qsuMILiU+Rk/xyvVfFukgl9ulwWlMzJ4QkdELS6UZVvz+AIRsrjbUOtk5XGUCzENoT0Skn98qrDw9t3FEXnyP+pwfTYcPUJ3SaUr3/e+emKuk174QH3Ju1v9ox0ED4gA/ExoQ/YUqA0mpyX4wePxO1TDDoyKSZ30p6VIpqa8NR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744390194; c=relaxed/simple;
	bh=1xgnKeaA7VsBWviwlcEmPUV+eTxBVljPI2Pa2obLsyc=;
	h=To:Subject:From:Message-Id:Date; b=qAPoVqmBT54LsJ6puR2Ex5dDevQVljhKg/tw2DIfBPZ2H3ZhwRWToiE0WVlLMiN64u7nDtCKU4SJg/UaUToQzv/Ck9awqxtFtk+hkdKi1GC6NI1C+JVIqp25+KB0riJtOEtNXGXMst++wMgtDLEaGIhfzs7WbtqxUWFEbC4BNKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StV2ObjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StV2ObjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744390193;
	bh=1xgnKeaA7VsBWviwlcEmPUV+eTxBVljPI2Pa2obLsyc=;
	h=To:Subject:From:Date:From;
	b=StV2ObjEg3P86yMjHFfTR5mjpLmekYJEnPZC9quWbIhGwNLS8HmQHAbWaCzMT33Wf
	 jWs9LCB+gLdOFKgGCUfbqOSPTv7waq44/9+RoHspVPtrJArYZO8/WRQv8DoHzZl5hB
	 5QCAqeHh/5UZx+Uga28dTT+Lz1/bawCaTHq2MwBzQ7XJjGvZB9I8Kd7CQu7EIC/d66
	 zc9KeUusKEwHtfxrfoA8l6hXhCsY4MBW7pGbm6BispR3jm59sAatKsENDwhMbx+6iM
	 ZvOph7a8M3+R+ndUvnQBCWZX5opbwd4EleD39UXkxKmV7lpUKQ/gK6hb9lWZP6Qxdg
	 5ZWCwXAgvrwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A2C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439019360.17364.12015116295287537922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128bbd2b07dba3d282bd2882561a6e46a6e21b5eba045685451be4ae2409727f
Date: Fri, 11 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744390193
