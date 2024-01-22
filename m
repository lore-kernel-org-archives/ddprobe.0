Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7C6482F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705961297; cv=none; b=oJova+jFpPfM2D+c9b3CN5/2qVf1RLFr0sDl2lSTePHfeJ2IYXtZvS8tDcDgeNCs8UEOBRaprWVczNmxCw8r1Dq5tZlzhiDyeIv0XHDw1r5ZrMPmLZYkxHb4voWbzVK37fiEc4U/232Z6Btgg6iCS+dbQDut6z8/3+WkzLVMSmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705961297; c=relaxed/simple;
	bh=QCsk1QfiXFdOKsIWLMohUX1Q+RzWi+MQPA4Oa+2gvUE=;
	h=To:Subject:From:Message-Id:Date; b=XLBrSpO8pbt86Z9TXIrCTXVDxsjW/kOUKFp30delqioduGrVQgWV6B/DbdlDPkWRGrWHcYSYMsWFdbWiZ+S5TSrFZfKpL0uJ9rIu4wLPffJNh3GNDIuxGQP+5hz801HhQSs9+IKqVfkuD/GNEVTYIJHqsk+eQzSALdqgjDgRhTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTJRrBLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTJRrBLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E39EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705961296;
	bh=QCsk1QfiXFdOKsIWLMohUX1Q+RzWi+MQPA4Oa+2gvUE=;
	h=To:Subject:From:Date:From;
	b=rTJRrBLTYsbj9wFGyrmclxcgqhqS3uVU/dljn2hHPrzRvnq4MfUjokXHc+DSFiDsw
	 9PK9uUZtqEqYI/3d64icVr2aaIXeyjmYGrc11XFpwuPzjoxKqiF6M+A6svTwkAgQKv
	 zqRxUZv//4AoIBOFkx99K5omnrv8aQdPTGQfaUjK5qWl3MEMjjvzoLj+dM/IVQ0KP/
	 36oFGzAztI1qXxwHga8izVaXbuVDCvDPwnram9xMcRRLgXmtEMe/sCGwEE22nYZMtf
	 7puWLql42wcevBItY9hxKwwcIpgpRYRYmw1hFlORt0YFj9pPxZ+XEJCiNk6QerKE+F
	 i/KwavkhtpPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638E8C46CD2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170596129639.23007.2139312806130087124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c980d829616adcc4cb6c45c3b886a2754b48f5bc6d4e8f555d7aeed649b50a0
Date: Mon, 22 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705961296
