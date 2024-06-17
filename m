Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50645F50F
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718613503; cv=none; b=FGLqSJAKIibEHIiu3jkMh/QH6I0iuhVspV/TkdDWeeTux0wX8Un6sZOmwrvDoaBaPCr65Ka3jK0/vnFyKwD9jNcQs9OftwdKDmZNEVjbiNQokTYWFCDpdT0Zpy9Wk0BbG4r54+LwqlON1WteBc+vKeG+S7Xv8WviPr0ogvQShrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718613503; c=relaxed/simple;
	bh=8ICtNHHqNDvG6aO9XZtNIS/AWih31to12kqo36/w8wE=;
	h=To:Subject:From:Message-Id:Date; b=nhWkv/7lvgQYNPXWWkHQHXWH1+qHPRDmptR874hW1nTargbc5kHSiOiXzgTG/+p5dGq85HPEYv/huy5xmFWdeCd6y6KbUMSfWeLKUpAnVIqsw9Sddz5k5I0dGhQd5m+Bv71gTKD1e/LyAXR1jFr9sjzzQvQ9DJ3a5VDOi1Yrj3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWEdZ3nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWEdZ3nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5532C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718613502;
	bh=8ICtNHHqNDvG6aO9XZtNIS/AWih31to12kqo36/w8wE=;
	h=To:Subject:From:Date:From;
	b=UWEdZ3nHLN++RUWEUudyzljKMHp/kvIuqLVLVW9vsN4INXG20s3b4aMfOPdaE/2Zz
	 LsL0pO/oqYGliepkvfJ04M3z7b5ZDxMdwmCshTmokWFSGcLhFmyI2n5kPuYUu4SRDU
	 OA8j0CLJVhzyi6TQRSfjLJsk9MiXrMEuOrHlaBH7EZh8DMxeF9ok+mIYHWQS7gl1kT
	 9G95JO29j5cg267VaL5Q5sA9/RTGvKhxX32AfZzqD1aJ/jHwk6vDLyhsM+jEM1ejEU
	 p6UHm0frimemHxRQG/qrttK0Dd9MDoJ8PhXr6m+MCBk8fdchV/0xMI+ovJxIIlBCT2
	 ndbFWCauPnNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEA3C27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861350277.18599.12944502775864064870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207a8c498b6b3f705dd6e6c9645e46488fbeeda396751452f8668a1c7393db14
Date: Mon, 17 Jun 2024 08:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718613502
