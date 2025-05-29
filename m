Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432D518DF62
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748507394; cv=none; b=ZWiOOvLOrYt8evRU2IQJR+Lak3zGDzFpR6Fb+dbUJTS1dqRjadbpsm7PyDlyV9VG/st/m3yCTMV9LOQlaLcxk4iSkqFdeq7GYxwmCpTxeJu+zWMIPCc2I39vbvCE6qcnCWlLd/0+yWot52QK/F67eoNOqJVFDVdBG+FIm+uTeuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748507394; c=relaxed/simple;
	bh=8CmxQB5RiypOkKYWnPQ+jPKssIApeikIo56LgPxRkzE=;
	h=To:Subject:From:Message-Id:Date; b=IuOQszirTO+6y115qY+wQXw5S7VHPk9s8XUX8P/AJVsxsaXBeKBQzG5PQ8RKXbZgWDsvmqXGhjl5CzFx5tC43oCqFcGALG41xvGIHxkhLSWLxLMN/eCnV2Jrsr4LEit32flpb4wUe+js+dmZCR9yH+E25jwCNulO89dR6tzRupw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/S5KRP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/S5KRP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B4CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748507393;
	bh=8CmxQB5RiypOkKYWnPQ+jPKssIApeikIo56LgPxRkzE=;
	h=To:Subject:From:Date:From;
	b=I/S5KRP09LNx/5gsJZgxwCYfpiNs9/ocOp143UagPtZ/8WhDeY3vsO7TcU5p8I8bX
	 4ZSrM8TK66sO6zpOvO5pzxgEA1usNOHgjzW+ZM8vONRykE6hfE9ZOqtGiaCtxNc8wg
	 6Sqv/xl+CzWwy9sYuOxeNQ3jLGqAgVBXguRbHgPA5mNjBvvrMDOXl9HSzJxT94TKaw
	 6ZD60vrlH/DEf2wTc8Odut39szMuoBzOttuS5HdidlLNYC0MLaQEuyt1NXNB6twvUF
	 cZ6uyv7pNLPnpwJUUMjJa7pDN+xxxvBewLknrDXvfjJSQ4QqDS5SOIVhIOZChWe3yp
	 1i+Re0htEFoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C0EC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850739358.25237.12294528207458497832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ec870e5dcc2772fa7a52596d036cd77c326b4fb30fa7039dabf1b200d1c396
Date: Thu, 29 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748507393
