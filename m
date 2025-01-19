Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4623C14
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737247554; cv=none; b=tOKjptWRhEbDlFSgW14XeZLq/Dflh1j+u8yEVg0VkLDPgTk+HZnJ0832goHWxRBrNoGyZuHmW2FvvMkUZJBAi/yKe9YZh1HhOn0DkMuQiYmpiktVv1DpBAUD8QWzDa6ckVGbBrzF/A4LzLcG0O1d8qFSF6ISiNTkRBBX8qP3ep0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737247554; c=relaxed/simple;
	bh=G5Vj8vRdvBnCq2z11JPOH4CakjmiQKD/CLaY7xKHdRY=;
	h=To:Subject:From:Message-Id:Date; b=bThhlHHh/pL9vScON9B+xoc/PpBTHhyDstU90sHRhXq3fJKBvyaSHCriNn8839IBJ2PpvLBJPam3erRVtBNK1Oq7ky2uHGiyHDtRICn+gn5iZbXrn7HCpUTsFsxYdUMqiAMEmdsGGFePPrg6pDbELskv8vQ4oFy6hsPj9gfW1Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN2pCdjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN2pCdjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C2FC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737247553;
	bh=G5Vj8vRdvBnCq2z11JPOH4CakjmiQKD/CLaY7xKHdRY=;
	h=To:Subject:From:Date:From;
	b=TN2pCdjdCDW3h23aDZErtcg6khne7Lg0nsKy3VydXyfWbAY9BCopNHRl4eldB9yg5
	 1y+l5bJFLWsLBTxN/K+iYBTl3EXTW6T0c+SVa3VE6qxjouC6jn6Rc4uHN73cOdeqbQ
	 XKEW4mqO1n4gLT0Cv36H0RV5NPzJz4Liy51oIAeu84NqW4Pij5KjmrC85Fntq13cP7
	 p9oNnbmV5htkXsAzGpvK8nFWhP1pDnRoPozXzqpsCwLktQ+LFgdIUENW+b/QCTBC/G
	 jnJQqv5liU9peeWOT6jK0rzmNT93dbqNzOeIep+ujV4FH5M2+cYO9R08DgL/eZ4rFM
	 xnBC+dGOMv6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F453C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724755361.17726.12526286782244772533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0a90f172baf8054013c5e179d76987f6df7ced6f33a5ce59397f217e2fde51
Date: Sun, 19 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737247553
