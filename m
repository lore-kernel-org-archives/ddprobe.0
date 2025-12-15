Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1896D3009EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765777374; cv=none; b=CK5VTBIfMjQNA6DsipJvB4f9Xf7b+AZeGXR3/CgiZSY+TNtzcxAaRGrjt9TH75S9idkIF5T+NoUlj4dzLMDA1jFk1edkp3X93a9j6E22Fx/Bp7L19KpMApYZGmqwzq+Hdiy0pFlkpeBSyyOEZppwp3kE5LkKx7tWKtJNQOucZGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765777374; c=relaxed/simple;
	bh=GUmgO28ErYgGxaDXKwtWJK4lDVcSAoaRjK6o8PC+3qY=;
	h=To:Subject:From:Message-Id:Date; b=YJzqPmqJOrxhn+PxRjsLTVK5v8cdLMFMHPpVqockFUeqrUmbPwl9qy3TfHZOpqWA6sfu19W6hpGxnF1SRuqfAoTK3esF+FQOcpsgYg+FYXa0/OdxxytdJbPrkwTvDPv2k6s5llnmlqXSRn5Zm2ziOHajb15zGPrtgbQuKJ5EA74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX0AhG6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX0AhG6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C02C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765777373;
	bh=GUmgO28ErYgGxaDXKwtWJK4lDVcSAoaRjK6o8PC+3qY=;
	h=To:Subject:From:Date:From;
	b=UX0AhG6sX9twZBGZ8nkKYmGfzD1fI6w+myay6tzqEYVyn5tjFuYo24DG0X0hWCnSL
	 osqkUxdNDih/YMFTl1JSnxbngbxYQ+qasYQLl1ivIfBd8e+j2PaQRXU2P2VLiMSoFf
	 0TPM4CWXiSu2VNeNDe2f21vFeMYJ7yYUJ21KhIrPwESgegYhtRtk8pmc2VqeRGymw8
	 Pbpk+FkX/1BE499ZHQpXDiD4p9wBoX8tCHlj6ZARWDOgY3IEsytFYB2jjJ+CSDjRjn
	 C4bAJ9+llInBwleSc7sPb1S5ToZmNBb7jei8ZyIjx0WAZEcG4fc+RhQISfZFHk+pDY
	 EodkGAgVHUu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F6D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577737358.18843.13275841999618877801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad364be3ddac51eb867bef01b85884e27fd62c2cde1fc8c60e0f35a92ff4ab88
Date: Mon, 15 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765777373
