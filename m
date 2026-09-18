Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6AE253951
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789771234; cv=none; b=Zd/LUz3HtOG76gJSoa2KLOIhIjvYEXDnXYQw7n5DzAXWngBHZ7Fsdn0sh+zVXkqKYkpyjIrX/I8IOx7MtNtINiEso6u98IriJe2mP+v3YD7zShrmV7DOwjz5Z45eDKGMU0KGlcwvJGfULRogcxlUPSQK5vwzIwERbqaK3mo3z3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789771234; c=relaxed/simple;
	bh=KnPBcQj1K0A+lUucAhhqoYA6FBCekusGsoIWrEC+SQg=;
	h=To:Subject:From:Message-Id:Date; b=p3H/ULVc4ZLqcFODwOL/Vyt0QaRRaKeXV6g4ByRNfxZsMvwrXBHIDDT+fPILxmfY7ZMcIaiEw06lBF5ZNyfIAwYoVRa3objLVe6SV+Wy+xhXG6YIh3iApwzAf3IxEMGT4XD5TLgjgbv4eQU3QFqf2mLRQYfQaapIbNTmk+6Mo2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrgTPooV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrgTPooV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE9DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789771233;
	bh=KnPBcQj1K0A+lUucAhhqoYA6FBCekusGsoIWrEC+SQg=;
	h=To:Subject:From:Date:From;
	b=DrgTPooVURysMr5XGqz98ZviJAj/PjYIsZjWQBxMb1Q+QZDfLGDtt6CPq3QpMdZ31
	 dJ1epAWGqlwMo4uGzLVDGIrttE0ynYpNbRqb8F0otc764hGB2U8fH3Joen+9aXQ/X2
	 Y1iIoHjqvHC4mMebN6hll4V/8nRPOKrZcl1TdHf7qtLFgI7Nkc+oVKsklLGgCNpmXe
	 22aYq5tz90EkRsKridAoKs6mM/fI+3H3qlvZS/TplNkdnXU2UxjXz/O8oYu3iGfRdT
	 zIf12Evy0fjFUS+m3sl+qcfyD0oISaJmh+O4otivXN5Sdb843NQMySi70O53wQEMrX
	 xEE0eFaHrBUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB631C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977123369.32559.5141770997552469763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e325cde721a7a8c53f903fe63f17039e7c81a048ff9d5d7439588379ba93333
Date: Fri, 18 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789771233
