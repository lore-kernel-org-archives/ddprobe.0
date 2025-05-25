Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485A41F582B
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748201394; cv=none; b=ANB1603qv922qRdHw+8J3cLb8paim1iVAN5ApaKsHHKD/Ntqxidbvp0WElXGP+wZO+rLIM9h9uPAYCX8FThZNXzZTOyoKpU0Ht8o48io1brUNw9I6DDMKKIz8a1XlR9LQmPS0Qtigs58xd05s5AJ3VYTj8ctrTQy7T+KLe1puJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748201394; c=relaxed/simple;
	bh=XATLWsAzgY3kSCtCvFT7SpwQutlttI5EyMf5Ew449jI=;
	h=To:Subject:From:Message-Id:Date; b=QzzhxioDu50FnJUBDeaSfhP1nCbeeJxB2T5Lc/3v9bt/Q6MDKAI2pWW9dBHh8HHB4x2atSgJgyFB1aKOPh0nI8vMFsyDo5KcuE3hH6OPRsudkKBxlXqFoI9vXQjS2s8hnebRUSHJfQOnKvKTdJI+a3Ut27Gn0fVIITzwn5j6CuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPYChdfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPYChdfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CFEC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748201393;
	bh=XATLWsAzgY3kSCtCvFT7SpwQutlttI5EyMf5Ew449jI=;
	h=To:Subject:From:Date:From;
	b=IPYChdfb8CYMvdW67xywCbHhoBFKkvGwYvTa3BSQ44FUd6WCGWEstjUgf9o+BJkB7
	 S4Qu96FVqF+G/adHMChqp54XWDBYot+q/fzo0hx+coer5saInqFcz18IHgGUlpVgGh
	 cDH42prQdFefgwk5ZTAJ0NDV9B/4VCEFyTHwAyArJBgU1m4a60ha5Y8lcTkqzkQR2Z
	 Z0nr8+zDtGQ6oUfmHiVfSkHhBbzZbp9zgIBPDVDUsSlGK5qKJG70WXkGQjrGQox2Wx
	 6HBZ8gVXgAPqSEju6k5WYG3Ah/E2HHFH+lLEkilzKdtV5P+WlzJnhnhHozj4jkmn6u
	 7hPCWMsY8KHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F767C5AE59
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820139357.25168.17725690794848332606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b3f61dc3a05be2e727b0fecb97fe335ac573db24e4754220945710e38580f9
Date: Sun, 25 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748201393
