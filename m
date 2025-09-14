Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343CF221287
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757813394; cv=none; b=Es4jYBMYIxTUn20a9zW+yl09qEwGOmuo/cSX+I0HwJAsckbLaJBL3dfFloYeMGca9B78Goqge3Q/nsbquLJmuYqOPEP9g490i1Uu/5MeBIXAEwlQwH3x1kLrfJv5GgFkx65sDtJ62KAi+JAq1OszZHppDVJwGoppse0/dnjzinU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757813394; c=relaxed/simple;
	bh=gSNUftmYIplD4Z/e5r55LYZuuKv36J+YweFl2oTq6Qc=;
	h=To:Subject:From:Message-Id:Date; b=Jfx7q92fisrDaoUvnRrbCFAXQ3sUxQsjC/U0Vn2sb0L69Uq8U3b4ZVjAaYZYlDxzfxqrfbEXDpVxsTlT/x+BovU0f1MayLSnLTsNCHcX93JrKRM6WlABdq+O/nRTVDV936hR6ZgEZj2BRB2VdnPFbJ8n/JQGBrd8PFK5aGGa3qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYV1t8pY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYV1t8pY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A05C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757813393;
	bh=gSNUftmYIplD4Z/e5r55LYZuuKv36J+YweFl2oTq6Qc=;
	h=To:Subject:From:Date:From;
	b=NYV1t8pYhxEAh6u9ETwb05f9t+aHfTnB0CNJCv4KNOjLksQO8u5gR2yUvZ7UCEiWR
	 wteH5r5IOKFAbOz3WeOtEH2tJT4TMRqgHZ1kLl0sVvLFPJsd4dbMmbNZp4tk0vzckC
	 mLYdZU9jSYEcCohEkf9gTiyqXhp57WrJVYnrMuCHPzUE1+BMFqFVK7rBIOHqP77L1G
	 Afzvqz9prXQwYSzNs4LEmYCHYNQqtWu2X812pQOvjEzZLdNj6CJqhT0v/yb9Ex/ExG
	 Qi2IEsjITQxabx8fmrWzQNwdJo7AW3/jY2er1XpKZgx9FCRTYesAryzGCG2bDSCkew
	 a7UQOvZEF1/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95553CAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781339358.3014.9211064310560649957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0725c91a3a6a67e86eb96ad8f3273aa8be35eaa01236bf023117b3bfb3d684f
Date: Sun, 14 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757813393
