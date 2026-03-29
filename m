Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158DB27707
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774801494; cv=none; b=XD0xO7jyctUMBEGlYD6QWJxbFnrD9YX0TYR9LRDxVfrMMCTo2rNthbaZWV1HOqYML8Gfel3vcBUrcMeec+cfldmZDp1IY3WuTzcoZqeCR50V48toy0zYIB9cZ+DY9Jmchzy4JXR2LFTwOT5gI7Ow4vPOGHuTwaKXzvx2JzcNYZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774801494; c=relaxed/simple;
	bh=2pzy8DvlMA2coIwy2h9x1W1wzlMtg8tKSJzzK7CtUOU=;
	h=To:Subject:From:Message-Id:Date; b=CHU3RJ+pGAX8FOvjptSm+3BUreC43U/odInFPLM//burn15vgAkV9FZACqqpgJJE4dhxtinJZrdEfakuc5X1wUJAJK1uC8Jo9GdXlEApQTr/ma93UJDK1Ghhr9s476TcjhpMf2Zxx0kAXqkemtiFXuyKjRvQRfH5yspkbSThnnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhtiSAJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhtiSAJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA290C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774801493;
	bh=2pzy8DvlMA2coIwy2h9x1W1wzlMtg8tKSJzzK7CtUOU=;
	h=To:Subject:From:Date:From;
	b=uhtiSAJDLt9U2o4bbziV95U3D668eDEl5/yFpu7ypGcgBsukzCpZ0pS0B4+yI8uF9
	 aQa80OrLMSpCQp5glGocXmRW0hGhrmDKTmYGADv6v20OiLAlfdBxZT0UrML+uKridH
	 RVuffpXFSVPDFNpwaWxgHnM5pY4+2k5QVBUQ7iNkXbzOw+Ioap/jcxcOwgeXlKLQyw
	 HUGoHlIgwOEkBNp7l8245XUW0JVUyOrYtO4aSY1VubhDF2eIavm5DafCgcMOLefAqn
	 8r6naisxgpFgPi7qyQiyeYi2JmzxQ5OBOBtCZM1zA45oKtKP/VIoNuaoyP/vlQwrL7
	 fMnyDsbv9xNzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F01F3D610
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480149358.13445.3825966485747369303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2e1b08d37b61faf1a621d5a7987cce5cfd729e8c5032370e199aab6aff7690
Date: Sun, 29 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774801493
