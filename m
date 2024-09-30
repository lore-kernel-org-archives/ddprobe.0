Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B28D18F2FE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727690154; cv=none; b=lNbpmt9qXheCmn+bmSE71/Med2yBSHpSFpCgVPH2trHWEmJe36K7WymPcgVGB/3AuMdcKTKxzHcR5Dggu5gueXkwu9WgL09vR0vLji5USbpmmp53VA70Z4KtxoHDLfYU5bSxOC4NrFfye0DRVqwZNACQKENAiwsbEcx5gBv03kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727690154; c=relaxed/simple;
	bh=ZZXtzwZVsmEUkVJNl+CSSs50WTRTnUgKWqZ4549AQTk=;
	h=To:Subject:From:Message-Id:Date; b=qN4xyh1BoSWO9EBgDPn5LxQfcdsgygGS6oaiOoR8VW7D8TExQpQBRDfszpFWNDSRifbt30cnyOsKgVu9SKK8UWB7OpTvmgP90v2wwNSVC+qSURmu3gBryZRVlMfpw0ssurZ9MNrbHSzFNsGlRb/3MVFPefP5eQdPmfCJTSe4I4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L55WEuCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L55WEuCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1325C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727690153;
	bh=ZZXtzwZVsmEUkVJNl+CSSs50WTRTnUgKWqZ4549AQTk=;
	h=To:Subject:From:Date:From;
	b=L55WEuCSNv4DMEulXYzfQrMgO/sCgtA4Rh1xK+2DHWfLoCXCk2JZyu5D2oyRr7AQv
	 ZxRn8S1yb3ImAjb52VnOzBXVWUdavDivWc3Hojy6Y7DFMjRsp0WsTZdydtndxoMKPn
	 7+s0LxdtLsWW1kcOeqa7qoKYZ3r5MFdJyEvF3oUfFQAZ54wtDT+qHpoUCgXwF9AEom
	 HDS8idYptMoIh5tbJ0dzpIMfxXwBxmsLQTWLCSaY62mN7jCf1kbcR9V13iD3ukYtH9
	 mVSHWOJr7EKcDJIVA7EPERXe8XIzSemkzjAuL7Mp5VVfRn9sEDnJXe/S8Vhx8TL4L3
	 qsC7bY77EHGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCDCF649D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769015359.14283.2551172511537261706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ecf7e1d14c653197a66d2a96554681a0c4e406d0e415046875de59d900d5169
Date: Mon, 30 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727690153
