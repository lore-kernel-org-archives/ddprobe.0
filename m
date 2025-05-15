Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC7F253F3C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747328993; cv=none; b=c0GAkGED2MYwu8QgMi1rcZXq3TNbSu9hxFYDozHjHtERonEActpPcqH6I+BDglFBi1HRTMFFS3leV+37E30ceyDputk/pnzq23NJWsGI17y6+hPLsWgfRfCKw2C5vTDEHblZMco+MaHS59cLX7C/nDiqhdEGTkv1RzpyqpqYHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747328993; c=relaxed/simple;
	bh=JsfYifVgtlJ9v/OTAZB33gJoodlbXxR3tge27wfqfRc=;
	h=To:Subject:From:Message-Id:Date; b=YJbyN+t6X0Obc5EXpWI4/PovaWoeSO2pjwD7XLnjU1eslwUiVTgVcsCQeSLY21SeKd8pj28iBgUuZhjo45AIflYE3PMxkIRNKcjOuRc6Hw2J+Ew14vFyq0zHBE6Qi5xmgTHodgejSUu0xXvJvRBQpyS017btlXGdYcE2BmpZ8rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR6klx5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aR6klx5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747328993;
	bh=JsfYifVgtlJ9v/OTAZB33gJoodlbXxR3tge27wfqfRc=;
	h=To:Subject:From:Date:From;
	b=aR6klx5PmZqC/KlPPOaPM4ko9EaaRL9Npy+XyIYm7uZr/cUT7rnAywxdthzUBrpGn
	 /1koWwpOvqPMxLTfsTd9R7T6yTgLmyDeZ/9OPqtEjfFlPZXm+6c+WH4NIPHKRMORhq
	 LR0NqMPlAzenzMFy8psk53AWXELnTBoNOrdTaAGJVg6p1GOfUwHFEJDRZc8jCOl/zJ
	 sBXAEPlrm5EFHa3khU1RZiT0uYBZXklBWEU3IFFQiw30dbtWT5DGygTGgxfNeOiaYl
	 GfquBBtkFNBXSNw3mdGAINPFgfdEFnkBDaRXB9FS4cPGWqYyvdL2NpPWkujgv6tvtZ
	 8LDTUEHAAi5hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732899357.24682.3584914243702961873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0754d31edde2c7d5dac4c2c6785e2addc28512180698c20ec02dbc1b2f019d
Date: Thu, 15 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747328993
