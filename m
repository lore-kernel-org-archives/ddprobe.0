Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E9F33B974
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774175094; cv=none; b=iuIwhLgZbOYdRrnR6Y/X5Hbc9v2gbwmvoj41gw3flY5BluLc0dA9Xfmi73zMN/tWlJPpzqCZ/ibT5RyGA2ahSdXLwll+QgX/MMdh0Yt8BZY0gWcGenVBVYlAVCkOhVlVqjyWU5a02qm700p1Xc2EluzT+CBoJ+jsjaNAjSLUD7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774175094; c=relaxed/simple;
	bh=jcvS9yutoDGLHc/P9FtzI+yranTHa5lRW8iWt1W9aZs=;
	h=To:Subject:From:Message-Id:Date; b=KbGQk36zpuurO5aJeD1dLD2CtygRWGtGH1o6R3DiuDe1/F315jvxwsTpWflaSmjo6kMRvgMng/nq7lG+eIFTv3n7h5s4BZeoHim0Liumh+DdzX6YltilLnxv9spFiYLBUISTS4NugvL8cSG6QmETI1qe9+bNONx+1j5sMnEIaqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTwoiWkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTwoiWkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B427AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774175093;
	bh=jcvS9yutoDGLHc/P9FtzI+yranTHa5lRW8iWt1W9aZs=;
	h=To:Subject:From:Date:From;
	b=BTwoiWkOhqy9pnVBjj7VBxyoaCCe5iSppRfPkO/DS+ZN0Y+ns5vV3Xmu6PXm6+NMZ
	 34r1L7FDEABuzoJh4MN7szdBTYd+PbJd/xBe3CFVgA7xmfUFXDK2Mq7OvRpGu/I6nl
	 b8Uq2IsdCbf9GNl36CMBzKBlq/BqiroDMrxKolMk45XcaGvAGUEdtTeOQtsx3j4WDC
	 XVYN/mVfkpxfxy709APstQJ6pXGbGJa9Uenddrt/+xffa2PSNkRFsNf4Ohri3EZ/a7
	 ITC5ECRrK9y1QDH1/sasCFsBaLeHQc0hsd56fGMG4VQAoFPm8hBn9JzCc0ZY7UXaPQ
	 u4To2C34wfZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB7FC72B5
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417509359.20858.10812337251987103323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d040512ef35b40e07cc0ad1dbfd0ea50f57d43a4c5cebbdf59b59ed52d0a35a
Date: Sun, 22 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774175093
