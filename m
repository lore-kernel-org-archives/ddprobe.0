Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BBF2F1FDF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782728314; cv=none; b=U1mmMBdKiVFnGHLaVDigz59Q6O1p+4a0p7G8WzkwovYRcM0mLhq43QiD+tLocXblt9WNPclkT5CAsULyU9snz0jFLjm1Scd6crZBiZNgy2vAvHN/gHqqGFI3wHcW0vDkSBKo3zho+FeuDGd7qmSlU/xKxEHV09lr3vuHvTgGJ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782728314; c=relaxed/simple;
	bh=ppGLPOwCXK55q3xH8V+fNRsqkTDkMosuNwLx2nAESN8=;
	h=To:Subject:From:Message-Id:Date; b=AxWOeq3kZEdBW/wYXvCIqc5TS0uEQ/dvoaxYsECDJ3CGpWugFjGwJWxzVetUwEyDKdAmHrNx30dHft6PD7GeP66201nG+HDPT0fTWV4HLzTj5fMRLSPiRjFEG/pMzkOj+3BHl1TPJGczKNFIkubFmt5nRRTvEyTBgzWfmRz/AS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EK1FT2WK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EK1FT2WK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFE7C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782728313;
	bh=ppGLPOwCXK55q3xH8V+fNRsqkTDkMosuNwLx2nAESN8=;
	h=To:Subject:From:Date:From;
	b=EK1FT2WKRCJ+nlAI1GMVfRT2w88eB4/DWEqfY7d1JUfMLNgNDUUIDSI3FLYh+6L1U
	 mEgqwHiUu/KBRMFLZ/9kyFRW+KIQi9EWWyfEXe7nlpyJREpP0pA2h/qypwVAqh9502
	 tXdjnjoNfcI66LaaDauDx5nYzlgzSPwqzfY7Z0RH0aOHAZWOhu9j+p8iFwsqiObFoe
	 mJ/iCCkZs2OMkjs6hifbFMMqy3gfNPujLW7evoj7q1O2a6WTFB/UeHOVtbCxnCv4hT
	 WtcQFRTJ+4EQRIYBYRr10VcGmPTZ4z/5z3y+wawhA/UVjxB3JKSCxdU3hxh7SUTGPY
	 SRYgsIx/c13Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC9C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272831368.19552.15263213092261230730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1177ed3a4adfe0c5c1a85e4b44e9b4e373a4bfafe7043fedc0610e34d2362b05
Date: Mon, 29 Jun 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782728313
