Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC841E521
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722002154; cv=none; b=FTbqcQtEeWxI+89gU6DlAJzPqAzuCz2ZcWe5RaCDkHdXiIraREMYavQHr3K6k4q9ZZPzxAnLcaweXhnuOghsSIIJLY4AqAjvsL/UYsIoFwEi16W5PlN29Ogp5irOmoJGCQcpXnCgRa2MO1cbfERIR4bQfGwkp8uMoXMCbA2PXnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722002154; c=relaxed/simple;
	bh=r0jDmvkF6KxMEqbReMrjwry7l1TbGofNtMnXvsyHgaA=;
	h=To:Subject:From:Message-Id:Date; b=Z9To1BZFvMJqIFZLEAZAmuS0QuIhBHtBW09axXmXBdSu2eOoHjsrfJtU1cHjk2V/hGjg5dQsrz7SMduWoviSE1OmD7HGvDz0mHQvl272beOf1lkDDWnb4dFg736TXCrxQ+GspPLIxSqOK28ofQtoiytwHaGCvR2MlAgELEkmccA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYLtIk2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYLtIk2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8076C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722002153;
	bh=r0jDmvkF6KxMEqbReMrjwry7l1TbGofNtMnXvsyHgaA=;
	h=To:Subject:From:Date:From;
	b=GYLtIk2en/wBhsjQwJZlCaUsKrztksNWEDdizlCAlcEk2kuqiSXXuJ4+UYCz5zz1J
	 CtpyvS2gBpgZuzDwYYcMujVFeoiXQWP0c+OJ2IrvYfX8/ZqW7LAvo5Pz/NbuMy49QH
	 mADSS2i1PUaIGjy/qVOAUjPQdh3lQ1NDakVJCPHmlrBfDG++VJqvQGLtUApmjCoNk7
	 0U9f7LPbSY2rgYm+CVAzJR8821yfSugGufXJlzp4xrUMRlPrY1ryKFhE63QNHB/ALp
	 lkVQVej+fHGQNnIe6Fg8yTl0zWmXRCvdvvrw+PdfonQ4l7zdGdXzJUcs9fWQ8a8oOi
	 Wi+oiGrOvreng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C0C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200215359.7885.18116012311570399109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb06d502e3931e44cb706f816aca76c46166508e99dc5c774a022ad72d2ccd6b
Date: Fri, 26 Jul 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722002153
