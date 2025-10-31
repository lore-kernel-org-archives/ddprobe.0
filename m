Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27514326D6C
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761920994; cv=none; b=DCR1wsnaRC32pc7t3q0X9mLnOHrFej92ah/LKVaP5GGAbgOzRLV9SW9SlXeLpZwBMpBZmar1D40oCOa+TBoXVXBdJiLa3kbOeL+yHGCWN9aYThMpZn+61EbCRnqf2nC9DdCZ57dI/OLCcNmhELPNZ0+dFU1wiZDVLXkCg6xM1uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761920994; c=relaxed/simple;
	bh=oVpe+KyvDt2rPAIoNl5rV9Fr4XKgrtAiDXkSTUxTPPA=;
	h=To:Subject:From:Message-Id:Date; b=WC3fL0MCgIE3f7cCJGY3+73mEJR0XbyE2RhlA+H4MLl2baLb8iN6+y/A64NkwkWyX0pLNPRjfQaQeo27EBZkrtxIAMgoVGQEihhdwFHMiA3IZLYIEsx0GtxneQOeBR7/kwAQ2RR8Tucak85SWfwgNZldUVVfVggNJDYhV2sLplA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l35ydsif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l35ydsif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2E1C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761920993;
	bh=oVpe+KyvDt2rPAIoNl5rV9Fr4XKgrtAiDXkSTUxTPPA=;
	h=To:Subject:From:Date:From;
	b=l35ydsifFTyFLSkcSrOvNi6nNwvDhZ5KiXTNdu1ID6gDr1y3tr2nV5SnkeCMgIKj1
	 PslJUMGmkdwO5yOregPHqCEzRojV1OpnAjMjS50K+vKgjq0syLTBE/mf248vBwEa5T
	 xNnn/ftekVpuQzEzt8Q4qWXZRahBdLc3I8PjWbBj9l9LjRGks/kmHuGJJjtIdRUDDH
	 q2x7AWdlBhk1GaALKSeM4B2iCFPa61QSS6bbDSZyqm4yXexZksJB10M3L5FFVlBrtX
	 PGn7lzWCMxuQbO/SEi0SkqeKwB3N+Hw6tjLkg4wl25YDU/Vel7dkYnGeUxNKE4/CBb
	 ElixQZemM4RNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F279CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192099357.552.17209426115887319905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eac7757873a5877136b7ceb06eb82e1e245c66883b05e6a380589d1956f851c
Date: Fri, 31 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761920993
