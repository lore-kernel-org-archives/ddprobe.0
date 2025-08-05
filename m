Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9BE20F067
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754378394; cv=none; b=ajhk35mbIu6GnlFFlsUrWUORXl5jem9gHLupgLT5Z6/92M6poVSpGbs9giusCZrpc5HJaHlnnQdUIiS6vpSkCsTpRp9NfGqOjHTy+vABYRcl5WQhnYPVXRcioIEECmjoXzv52C9IAdgs6KPyWMITowm4VHGus7hooX/Wt79wHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754378394; c=relaxed/simple;
	bh=QfLrk8epDRIDDR4ikv5NZgDtl8tlt9VuOiHXYtwTnaQ=;
	h=To:Subject:From:Message-Id:Date; b=aUeeakC7NSfTOLVmgOS2QF8kODmIOa4pG3nOiTdDQY11YagcSrKeIh6tVvCDpVJfuZe5/6x9+EQc/tBCW7AntbgwmxBAXhFAugxK3yoAcB6QHd4WNf/xn7y2gba6hxVHOM786cp8q60JBVQbEoaFFnea9yqlBGj7Bha1DQjX6Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsiOPvPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsiOPvPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCB2C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754378393;
	bh=QfLrk8epDRIDDR4ikv5NZgDtl8tlt9VuOiHXYtwTnaQ=;
	h=To:Subject:From:Date:From;
	b=RsiOPvPCId6P/2ZrYBOkPTo4cj03dDvG2G28DU0T9vnWPaciGV3rraKotv9/uFflF
	 +tQyRhKLCJPpuh2anl+L3qF411tPbMIA1LUsBeMsu2sB+dD3gmtfTYAuVf/dJ2+9x/
	 ICRk6cFZEZcwhBbYwqyQ+HVoqTlHiQJsSB0VIHobzFCJuxTQuAnVy81X1ptzKDj7Ue
	 Z4Nyhpi4w8StLx4rZnzgihx1L02Xx+D64PHBaC7se4PhdQZAvAy+xJsI0+5fnx5hT2
	 BW2+G5tyI+MyJNCCOktwn8qB4ZQVRT5ggZ7x0BmnlkcF95ogZD6Ne4khp9xGg75fRm
	 FUwUG8IweNFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19BC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437839357.14436.184165328573299000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307062233c2cdf42d10d0435cd7646bd7443ec45d1f721fe44142e04b549a8af
Date: Tue, 05 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754378393
