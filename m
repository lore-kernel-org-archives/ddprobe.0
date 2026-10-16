Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961D83909AB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792186234; cv=none; b=pXQ/mN8eE7tNYqLixzrS6xa7ZJKfv7Wa2wKwGF9LVeKrE9egv47DFiPFXzdFrOIGNAlpEO2UqvnPEjqwWYAZFRyEq4EIeBrhZERVmZniHPSywjxFOrPdw6T2aIgk1/BFkfFNA0HgmJi4JMuG229WbRTmpVtimUf+QvQNOhsWUY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792186234; c=relaxed/simple;
	bh=fHYD2HofeBtkqdBEd/619WUHNGLexpNi0ulqjslcdzM=;
	h=To:Subject:From:Message-Id:Date; b=cKM+qHPnKB++OddF/50hDFxHrPfQnIO8iGgBhl2UaNnh3Z0GBmUlDjldjDgnw/kygzaMXGBmhI3cVsIKHPm3baLniTtneRo/CaUbSHKZd6zXmVzOM8glOpMhI7vnpuu6buh5Aa8GrhnGCMsgHWb0RPzBojFNzsNQZ1laIFP2Ojc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWlFiapq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWlFiapq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0B1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792186233;
	bh=fHYD2HofeBtkqdBEd/619WUHNGLexpNi0ulqjslcdzM=;
	h=To:Subject:From:Date:From;
	b=XWlFiapqb/pFk7adb1vWmhQR4xMWnreh/n9rJyTWbwpJifwk5Habj1ri28PkPPjsT
	 ++pIiwLlmoTTZK/KllkiWv+UQF+kDOK3tUzRriZLanUfXvsgpPjwK83EQbodqkDMdA
	 uzcWJnznNaE6KyebCE1OYkt/HrpIvBH0RPFuljrTRimrJrouljIjlI5hpGe2V8eaZT
	 LZQojCRvqsz7CgJomNb8YyzivTTON8OEAR0hE2uC+V6q6KLAn6/sIG5HL1C2lhGuU2
	 rWnfzXvSPbiRy8X1muCasoxf9CG4q7sxi7338aOzfD+DxIKO4oRthXaQg70QS8G8CU
	 FbUOyARf1VvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64C9CCF2C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218623373.27772.11972807290682600872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5624df18cd58e18ef6e3a734a8a43e69f53c0a0641401f05a024504c6436dc89
Date: Fri, 16 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792186233
