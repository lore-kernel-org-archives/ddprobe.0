Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1942F29
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763920914; cv=none; b=WV8FvkoMSo0MRvyQb5i/GYCeSy5bN+2WSYbBxFR1yVoG3ogG1z9qG33434RVamnI3OOyE/ZIEbn2Atj5INBmt6cpjBtn4Ndqycdovas2c85mzDzhW2+Q+X+Q+lOunnkyenKChWpCWbLInrdvAvy0UPutqB98tMCye7fFWfTy7+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763920914; c=relaxed/simple;
	bh=9rxthMndF9m9dmo5uEmVvuUZN0FWzVpz+naK0+z5Ihs=;
	h=To:Subject:From:Message-Id:Date; b=WHbKknX1qkcoHMS12qkskPAHyI58j5w1ACfXqg+0ucQg6G2KZAY5cwxSsBStL5ZZocIXvOKSZlRaFaR8tRny7Xg6cgBsR8aKC6S2tb/cFWQxNNPux6eN4ytxlYCQPMd8TTsWvnHFXQGSKZVO3aToI7nRoD++O+S9m1dEU1vQcv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiWiwqbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiWiwqbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3732C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763920913;
	bh=9rxthMndF9m9dmo5uEmVvuUZN0FWzVpz+naK0+z5Ihs=;
	h=To:Subject:From:Date:From;
	b=IiWiwqbtZJN2iKqlwk9CKgMwlTim+80+epIVx0drgX0VFzB7ZlwsV2zogTSddg/xx
	 DdS3Ek4cwO+5KnjIUmr0/lqLD709htc8ylwBhwqxkZt3t387+FHNT68ivc7y9xQbuI
	 JwCDEiGk+YsTHoP76dm0GiTyU/czC6eMXCGX+TCfekq0901afRH/1tugWEdWMbxieg
	 h/Br36zDuGUH9dHG+kaWCPNhbgrLpFq53WShPbd2fopUvUXmqTxWwtpPiofzZvTJ7X
	 qjPxtHorNPCiuzevNs5IGkvnl8Z8d/AUgv/cEBN98UYStoq2p+9f0uRhzkiYo8gGXD
	 OMGfPNCHorEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DDBCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392091358.31422.746572987477055520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd866d8e02c81a05035bd1eaf4896fcd117df9bd4eee14a9adf9ef3d1aab9a5
Date: Sun, 23 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763920913
