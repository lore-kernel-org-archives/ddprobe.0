Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5354A1BC063
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719933323; cv=none; b=q9fi3jqKUDv8VzdYX2gh658F/GJF1dM0CjL0824QXVKxAaXJWIadWWCh/x9H5J8StfRp/+ukOZNLddPnaPl1Hu+hgRF2hZ5EyOEmzh80Bj+Jd2lb5w5sXNmk6AleMEYb77plPPHt8iDS9CkWXV3Ojnl5xuiH8u01jJvnZwm0W+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719933323; c=relaxed/simple;
	bh=OeB23G9IWDf/FTUSH0btSp1O82WfkoUS8OB0wOS7kl0=;
	h=To:Subject:From:Message-Id:Date; b=gh9VP79+AO3+WvahLf0rp4HaVV+If6FbcS4r34Q/160cggGbMgnEYF3M8mXw+5+3OCC4+sLxN+u9qQwIgy68ZtNdMOsl/CuN2kFVLY+BUflvHU6XNPDFo6cmwbGSvDOw7IBIUdGH3Pd9HbVrnsOqDMNd6W1Yi8doGymb3FN2PRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ai2cu9QP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai2cu9QP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D515EC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719933322;
	bh=OeB23G9IWDf/FTUSH0btSp1O82WfkoUS8OB0wOS7kl0=;
	h=To:Subject:From:Date:From;
	b=ai2cu9QPA2FzVQbPd1E86a4lebQCQ3Le2ac9KAFzaG61NTTHy26FSxeo+VioDMI7O
	 ByBHumTUjWoSsJgDdyRiQdwbuO3CbDlbXf+tieJXyZJvRYhPpGwecXrCKssUnWsB4r
	 CxmhFcuPjyiewciRdXGR98fSprFgpSLqd1gMiH8CmHI5Qh+AYOipQR21n0kAtjqk7K
	 U8z04G+N5vZZ7SWfvAspWWTjoULvowWuOnig3ZwrkyeYNu8+Y/8z6BStRxpF7D4UOo
	 5j6Gfs+qLi3hlr6MufQWYMWLLsqPA4z67xxWjSFhy+vrzCQ+Rj67HnuHz4iiIL8jik
	 nV0pCk7DZxpOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0524C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993332277.24839.10512829965120345141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d9c56bbf40f0b75fedd2f2f1d67bf395a540b7f768ead5961df8a64fb3edf5
Date: Tue, 02 Jul 2024 15:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719933322
