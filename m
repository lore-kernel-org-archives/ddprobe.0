Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305FC3594A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777697854; cv=none; b=MIq5/SVPUz8E6hBIxY5dRJkMOdjUrxdFiX8ejKiz4FtVxUH7N8xCjPJZE5clgz7jH/6im3gESGoY/rEDwgndysZd23dnOi2VkKfq5ULfcaItPIv5hu5lGWKbTcuOjhg2ickkjiEq+Z76paeo0wTvtilv+GJsW4n55LAny8uq6SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777697854; c=relaxed/simple;
	bh=KS/0IkBYLGLVWNxTPh5GR463skyUJppxVf9fmUztemA=;
	h=To:Subject:From:Message-Id:Date; b=tggxqIVGxfFnAk19eSFqoJURYmFXaOoYG+Got873URTPyPPpVYOpVpqTqzHSvX/fXNTcA/amomwtqmOLv9XLszFMmcuLUkFo4u/G24szwsE47RqTSnMcKHCI/DCCLjl/CC/3UymnPIpxsz+EMFCo6HjC0iSdaA+doh6y1hodSUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEkabhNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEkabhNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC451C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777697853;
	bh=KS/0IkBYLGLVWNxTPh5GR463skyUJppxVf9fmUztemA=;
	h=To:Subject:From:Date:From;
	b=UEkabhNPDIKS2cIU9Mm1OnlmLOl6nGLbna5hutd5vHGG09q/1lsM8nAwf5610cWV5
	 6ZmbWwx+L/z7x839Kalcz2cwDDXi2HUD20ztDVMd3zFSqHNA1CkPvKqshk99CsKv9K
	 lccYoTwgCM9ZU0HkTAMdOf/uIUF3MTOYtuXWEsuJLXimIBW3SbezrAEmzbkRccJLsE
	 LdA2hsICwL8a9vG5GmHK3NgcD8Le2Xr1LKq98J9gemEt8mi5eqTXYt++/pTbWNy/Wd
	 QxP/x0Jsge3ITzBGa7ifR5BDzg5ZLNqVRxfFV3jQUiE1dUvsDDeHzanUupsTDKbSsz
	 bVuA+cUNOz3FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC99DCD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769785368.17140.16510634407937165299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50e33dfcc273643286f598033dc9c66d65188eae380bda201b3e645be593cc8
Date: Sat, 02 May 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777697853
