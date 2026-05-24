Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2530F279329
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779604354; cv=none; b=ekwTjSw1qpSe55Z5M8bnTcchXCKsyizy7wTX4BTdxNJBmJAx7dxsgHetqRJUKIITSYfDoG9gnbwGCglfEaEgcDvSYEPg9hiSgnBlSmCM8Q05++HlgybSB2PANT4M8wHz0ZKRLOav2S5mQKwSq+8wxm+q/s/Qt9XX7u/clMoiJUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779604354; c=relaxed/simple;
	bh=Oxua1mX+ZwuytvSbYkeQ8EsgsW6aF0v3Wi9F6pE3RkE=;
	h=To:Subject:From:Message-Id:Date; b=hiEcDVUQvRoK/yrGhMkaZj19m/vVBXtzQYEvn9knlGyaXP/Wvxt9NwKjIW0p+Redlf49c3Lbrs+8RAh90RQpkL1qG4U8iC3yTA7LmXzZPqiScZkrqpQS6BcouAXapFli6Lu1eJs0UpgHFf3Fb+iTnoEEwPSZW7Oa5AS5Msu1r7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRiAtHQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRiAtHQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30BCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779604353;
	bh=Oxua1mX+ZwuytvSbYkeQ8EsgsW6aF0v3Wi9F6pE3RkE=;
	h=To:Subject:From:Date:From;
	b=WRiAtHQQKbANSiuMgHm+EbFgbQUAgbTTVKTwrfld/tVD93wGVDz89cy6eSMJK+zW1
	 Vw9L2jie/J5FOLby22P3FpWg7iihPa4P9RiJZPuU7Fgw3cgxI9jxYNA9mmdwAY5CrD
	 TWaVbL6UsM1tYkVhfJtYOGCQD3d7VQLxRJ85aO19dJh7iOUHCpRkoY7rU0/ZmVlHMp
	 BzDOB4GPzzDOgK1/+NNScnt1bwP2H0j9RgY7yhpZp77iSlqj5jf0wCYoYlmZU3+S+S
	 rRbrf2gY59wNKbX0fDDIhjiri3BcZ3T9y3UgB7A55huiT5fDTjI6bCh9L+GlTy3SeJ
	 5/dtqFbtikReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5F7CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960435369.29496.9776085584851858968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b203bd1c9430aa9e641194f409d9dde2569814ea715e9110d9cbb6c630a2ff21
Date: Sun, 24 May 2026 06:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779604353
