Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7C43DC84E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780604674; cv=none; b=ZBfBbeow91Xv5SCCbyVqMc2ER0NbhgFUu3wOiicW4z3Cj7wAnuQ2gn+9gPPJNjFQ+4CMcuiKaXjS/2R0I10zP3ax6dsy493VSupoW2x/fQ5UUPFBWeNnJpyXwl/Mc9J+ka9vrwDOHi7PTr+rEYYYivdRE4eTy8BlJtQMi8u9MyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780604674; c=relaxed/simple;
	bh=t2Po7bODv9ooMfhkeUl0uPw8DGP5prC++nGHxIvkh/w=;
	h=To:Subject:From:Message-Id:Date; b=Bz5YIopdqYKnLsJv1ZAC7Lhy1gks7gZuj3BAvnQmU8GezUDxH0SRPKnObXf9VfLb20qiWcFe3T0OUu4/jNIbK6D7197z8CzO/P3clNrvr3NcfpoGgebctvQORj3zJ9U24H6L/XxJKpCVVD0Y9gzmPSs09ADoQwfinEADD5VFAS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FV2ldI9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FV2ldI9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB85C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780604673;
	bh=t2Po7bODv9ooMfhkeUl0uPw8DGP5prC++nGHxIvkh/w=;
	h=To:Subject:From:Date:From;
	b=FV2ldI9Kw1wy3V7o4efjlKXRRMitRCH4yi5ySIR0QXkY1+iL/fm+OO0LXIQbNx3fq
	 Ck4haFU5qHUncW3jWZQ49D/mLYO9lYG9SWNraGdScxWKqUgdcLh/h7VyBX3WPE2NbT
	 oFfhLj4Lf+Ti3hdjuENFmOA5tggEiIhbSPEr9B+qD074uenxRGwdHg/DfOXdC9VbzP
	 jUKS42FMbPtfTtQ2AeKb6Hs3L7/tbNqGGGsbaLSCm1Pu8Wcu+XX/v041d3EOMMYSOS
	 maYgxsZ+7m3gbvdkCYqDkFe4TkzmZFHH6mJBQw8Xba26DBi4IGxzj5MCVUSo1Guha9
	 /0lQUfHs3xAvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0942CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060467371.19000.12374056462399334794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa5531a5bf52711c525f2283f076aa4a180830f212825db378aa82bf3acf916
Date: Thu, 04 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780604673
