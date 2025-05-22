Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3876C2980DE
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747927194; cv=none; b=bKKSCSqTy6hnLd+EI62a0vhMzjq69HM4j3GMEfvyfd7sT38jjXOJ9D90uMge48WdraUDKLqvWaDwowHfGrH9SHoIekwBOaYWV+aMMLrM9Acw46M2CA/0C8TLa380K2TTODE8XX505qIELmEn9gYHdwqtZlMCJ3DOSt1baYSbcfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747927194; c=relaxed/simple;
	bh=johgfK7SEYs5j6+9bPhJPa7QdPOzu4+kgWwg2rL8DRM=;
	h=To:Subject:From:Message-Id:Date; b=lHtOAUGOoJRYXWsomynJzsVNac2+KUEh6qUFhxNyvwuAVS5mr2uatrrroLwHUCB8mTcXBeJXHMPuGYgPYbyZsD1qJ9BGpBk7eIvF1Mpf5xYsYyTeXU4Qi3ZUCvytucmfzUR0WZ+/Jpm7kCtxXI/T3HB3x4sRkj+Oj4lsS86vl1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5ZUSqac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5ZUSqac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA679C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747927193;
	bh=johgfK7SEYs5j6+9bPhJPa7QdPOzu4+kgWwg2rL8DRM=;
	h=To:Subject:From:Date:From;
	b=O5ZUSqac2ijLMRE3F8lM4Q5HcNxbJuyq565AT0mp44fKNfClyQ6IC69nT/qfx9FIE
	 P9orsfum2cIN/SwBEPR0BMG53b4onKGgLu6wU5F5fjTNI3ciO+67405aQJB566fJxb
	 ZdDRSYpFSCdzOw82YJnr9nx/U4SueKpe7WqsD1GfAN25Ytb8HbfeKYGlHJ03wNcicY
	 EABGKGQ5E36OGrIl2lXm9DzKCKZ474e27PSYoMDdq55X70E7ThzEUmlBU2GP6VQdHn
	 6oPf7V7+y3d+R4nc1Gwi65X8JYaEpnDz974d1iIvNORIXMfla4jLGGzGo0rQKv5qEk
	 dhRHg0SxaDwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D4BC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792719367.5144.3169554204854792879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd3e6e62105d2c23bec1dc921042656a3f5779627d2bca544d5149eae5e97b2
Date: Thu, 22 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747927193
