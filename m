Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A0274B46
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789287634; cv=none; b=noR7OEVVHxF5MHEv0lexEkufBSBeimhrZMZ3m81aLyh2isztkpvt1VxXxFpNov/1vckvBZhSUk6VN4z3ZyLTmQQa+s4VvVP45F8SH8jwdat4Mv+rAc/CYBKlII3mLORMonup5o1Z9ZPfms0zVvDl4VCNxHuVkIW0hWWfFyTxKJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789287634; c=relaxed/simple;
	bh=0C3W6o+EFqhmXQEg1CsBdnep+hhEBckfkzB+cSGOKYk=;
	h=To:Subject:From:Message-Id:Date; b=i3AG3KZUZDtVV2ABiPutL2m6sQgFfBm+OxrSv0/1qx5w6jFCqh5TO47O9/77a2Rhm7sXULdFtNVzwx3cowO0yfsReKzb0iv7vYe0niGqkVq8pMSuyjoIkvKQO7KZBR6X+gn7OIWTOV1eKaWTR/A3G61PcQOG78j8O/kf/jwHB18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwKsDCUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwKsDCUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F8EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789287633;
	bh=0C3W6o+EFqhmXQEg1CsBdnep+hhEBckfkzB+cSGOKYk=;
	h=To:Subject:From:Date:From;
	b=GwKsDCUS6FTFacTofbSO0HgcbG8peNls2jXqclrwJfMbNr1ZuYWSQ4aI0wqF3QvNR
	 V5Ots4CzX35WAnp1INZSow9hoSZalYFvL8PTH8Iwuc9DAdi1P+92r3qCosEpJyghcU
	 8QCYBcEDIT9Ofu3SrLq18QH31HYVqQNhpXr2iDWuT0eldC0R337Q+HR/XCXdULH97a
	 CgqTJZp7XeQm63/9y6NJdzzQ9KfYodhFgHMKD1PBxPDZCb/QhzJNXpJs5cKE88R34I
	 JjhPgpZ51b985ie3/GvlpqJtSkWGZL+yT4CLWuqMLTU+uZ1VYuHQ/L7JPFfTCBKKSj
	 +pyZog7fl/xgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A20C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928763368.1541.4692444359297134395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3351e96616907a90515a196b49861da38907f7d26a00657bc58dbc89ba35f415
Date: Sun, 13 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789287633
