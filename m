Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E4F136E04
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714945943; cv=none; b=rAwjvMub8MeNXcfQccjQHhR30hOi+5I9Q65zHBHt1CrwVMz3Log50+MtfHVoW9KV2yWPs/2lNCR0WbFyA4WBCVvvyMA1OFJHTuLUbPM2kturL2nap0rAy5mnOYz4na/Bw3K0+ACz0vl3FWOAcyWSMILAhoOCLSjhW/oH/TNk6IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714945943; c=relaxed/simple;
	bh=cWFMye65CxmF7g85djOpIGNa+s1jIPzHAegtKrHzv9g=;
	h=To:Subject:From:Message-Id:Date; b=rRshcig6/gwCwpie+gn4ZHef0sNM6vigZTlar67Bhd0ARBjyhk5+VRone381IEAXa2I56EvNOhUa1iBPmZ1PvlckGLk+Y/3InkREhbhgtTYFgTGeDlj9j06xAvn+FT9aSrVDsVH0xheU/xVWhBRj8J6D0KBZrkWmf3ExDqgAsgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxZ/k6Ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxZ/k6Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FA7C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714945942;
	bh=cWFMye65CxmF7g85djOpIGNa+s1jIPzHAegtKrHzv9g=;
	h=To:Subject:From:Date:From;
	b=jxZ/k6YsbS7xD6IGHQ5cWy69UZRyWj/f7Jv4MotXa8CDfVQEvKMceMvynH7KkUqvu
	 MwN9CLXtzGjPnkz+lPUfAXUBJXAC768YP28HklPVe7zRXDdqZ3hxR6dXFkzahXrX3Z
	 ixpai7fZX6mq1IXWqVl2PdiRu96KT6F9AAolAHjW2bIidvV8bGgQzu7rDy5qWFnJFK
	 qtiqtGUEA6hmP0YySkRoQJB/KCEdQuTngOrvw67ukBKxHXnxEpjNFC4D218dFZxQuq
	 XEPMbp+BR67C9K2YjHLWBOlMhfi8FHAirl6XJ9begCRPCzgsS2Bw14athSfj9ST26N
	 xm4SMSCVwKMoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D6BC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494594276.2245.11308954968355148923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9891ee4e149e634ae3f71570852a320f4fc64dfa21ed1c1baadc695f7d7f61b
Date: Sun, 05 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714945942
