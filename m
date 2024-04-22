Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8C81391
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713749423; cv=none; b=L2YK9Ny5B3Uu33/M6MuTQhLc3zAkSJd5i4ciey+yVKcnUjj/wcRAKwpwZsvMvRXug78hZufWClVtwt+0s8XxE0uTDx7Hd64jHoihuqcEGsBCQ1HwkmKOJSojIe9NBU0AJXVNmLqIzthu3arvnBQSh/zlH99aKXSO1O0YeIygPAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713749423; c=relaxed/simple;
	bh=KJLozmgZxbJhP62C9J6tm37LZ9m6wqWbDxMippZUkMw=;
	h=To:Subject:From:Message-Id:Date; b=Q1G+bIsQ8IFUAO1r36G9TltHFzDcPK3ZiYPmUqW283Xl/pSURC6u36Hc0F8cdbLlUPjzhPbyHFEqZBz3hrNmrWJ3iF4wtoLQShOHuxOQ4k+szX8RuRJY+XiNWs7P+8wHaSa3ufhrCajQj1azCMztHhj6QUPZeFuPCLJX1vRY770=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmXWdavV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmXWdavV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF39FC113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713749422;
	bh=KJLozmgZxbJhP62C9J6tm37LZ9m6wqWbDxMippZUkMw=;
	h=To:Subject:From:Date:From;
	b=HmXWdavVmlP37q6Qw0E+Vy5dzmoJrcgmU1Qbd9tMevJkx97yxuRzEWROK4RGCT1TU
	 YpPyZpRAYAgyvXAUyua907/jXc9gsu/t+OxFeSQ5/pfKDgtNnDitrQItBz4w5wVqFA
	 3EKe8zEY9KunI57qm5KMQvPk0Ew82joVQnm0fZyKeOSp4Q7X0cep5YTrT6hQ4qB1kC
	 InYwY3WMWbm4bfP4j8qN3/+1vVQ4+hU0NrZzKFnDYu5yHoH1DTYaBDu8dwkJLHefbr
	 sefZTB3fsQoITicneBJuBQpAnr1dHJ5xTv+lxnu9wGivQrPlnvWxn2PPx2X9tIvHhZ
	 GJJfuIkyA80rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C200EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374942278.4598.14711547222438579938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537925104a2d650ee2804b645f097e7aa369aeeeedbecaab9c8436a3f31928e9
Date: Mon, 22 Apr 2024 01:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713749422
