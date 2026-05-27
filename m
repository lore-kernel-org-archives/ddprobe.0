Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191B01F37D3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779845554; cv=none; b=qrO6j7fRsEnMeKWlupjD57y5c5MONKnm5VGCLc3Nr4UYQIWmq5+7onMjJl9Sbr2MQdqaJ6zt2HnasrVvASvB90Xj6gd+wdCbO9h04zo+/gtFbb9xSxgxEOdiOnVgN18w9SoaJQZtqDCsBAQJ7hScoNuwqZmYxb3jlBinUMz/mZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779845554; c=relaxed/simple;
	bh=PAJlrTr9IzxbTNs/F1zLi9KIxkl+GditLU19hfCsf40=;
	h=To:Subject:From:Message-Id:Date; b=FossqKSrTq09b7ati/hWO7JWidlrGjzFU1Wx7OkxEuPpQ1CTrYX+VrUf/57GstdCP4cVzIlM08JfxU6frZQ4Pm2wPWJlNMw4FSDk9Xlx34UMVIMYPBFGw7t/t25qk/lL615/GSBZb7JJPW/Bikk24uBG/MLn/0IMxys2MRoIcuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATgXD7o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATgXD7o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9518C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779845553;
	bh=PAJlrTr9IzxbTNs/F1zLi9KIxkl+GditLU19hfCsf40=;
	h=To:Subject:From:Date:From;
	b=ATgXD7o3i5bml5quQGKsqNeduHCysw88hgzU/fwNuA4HXYUT/PO4n9gsgOGyyOhg3
	 zlExpR/aHLQwD3UKzXnOBttXg84vcOCZWrNCmVbSKIIbV/iLqH1lqTR34s0P2txiLr
	 y0Ogs3UFXRMOx3iBgCB7bUgd/QoEU6P3lGyUKdhkIvPHRsBiugv1hEID2fWa0qd/1N
	 KbGoBZQTniRE8G5uufc4YDC9bM6HwgD84EwRDUxD/bbsxNH/Cj04sUYPPwPJd96i7/
	 XjYlbLvypuMoaNXDS//TQBQ46bz1d2hbDtj3Tt5W5UgtfbL4UGrvkWF7YXxIhLu/KP
	 laTWaebNVkRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB15CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984555368.20401.14864208249686087291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b81d0a5843530f20de2c376ea34baf3a9826c47398aea38960f795c61cdcef
Date: Wed, 27 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779845553
