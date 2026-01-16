Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0982834D91C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768546434; cv=none; b=o+3nXVpdrrcIR2nHjw9TvdQSm302GQoBapHoNA3Jo7zi1GeT1ANhQ+eEYrqk8/nMIXamnwBSiMy3FdG4aHYCL6VwxIDFIGJB3cbzkbXrgN1iVL4W9fq7yKqVtcWLORL2R64JS40bBsrclQ71zpAQRj44wy6b3slYwpNuHOAxplc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768546434; c=relaxed/simple;
	bh=aHr4mfONbbr86zknMXu5atuP03BwEx7CrwSBgTLnAn4=;
	h=To:Subject:From:Message-Id:Date; b=NV+2GRjRfXJvGSHojmD9n1UFqLlmmrKnnq25KWocp9Rvk3M4EI0QmF6s6/ZihWl4glw2hA8K5OlxUaiTD62VkawCjKEjsKIwQEixI1lR9twZXraWQg0faLrg4oEba+/UpUUAJMUEKWOovoN7mJt4M3EQ8UA3pfj590azzj3bcaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qstZeOpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qstZeOpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3497C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768546433;
	bh=aHr4mfONbbr86zknMXu5atuP03BwEx7CrwSBgTLnAn4=;
	h=To:Subject:From:Date:From;
	b=qstZeOpwhzxYXJXb4Fpe4jvki85kELrjz42bnM5+K4ifq21kbegjLQxNc2Jn6iDFk
	 vTnWtvfAZ41hLnK4gz5xHD7b3CiQLuaBq/qxewHrHsQXsMiFc8LlA9scavwi1VBGOq
	 t20bCcdOH425iQBw17bKexO2IrlIQ3R9ydsBXyGZmM2GA0W8F/2vWNyNsIklxX9xjs
	 BCrS6XWVdWMxgPV65q4n3OmiFNadXXNy4xpgdep/Xb7SW4qxnRk8Gl+pcUJKxgR2RJ
	 0oXHXAXkKson/SRmqn1cMDw2FMebwZdBG3WzxbspOGNTIMD3+HsiHZQiMkphBRup/c
	 vradu9oXd2KqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF2D4A607
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854643359.30758.9987701660611937313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3542d8e1897ad643adbf0f7c5ab227e7afde1cbaf9d5ca5c471baf4c92226deb
Date: Fri, 16 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768546433
