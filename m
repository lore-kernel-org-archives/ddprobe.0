Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0631A145334
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715856143; cv=none; b=RfIDA4Sv3Be0l/1AfWYNMA1BNC1oaKVmmEJW31XO8BR5fF1uHbZPeGO0lbBXf6Er5KZ0GNGjDAGlrBXT0+ghJPSV7XqpJm469qRKUlgvF3oNlbQK3bilaQwMHajgz6fleEe2vY1eTGpXyHS9s8WjshN8KDR1E4fRkJXKjkL0Fy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715856143; c=relaxed/simple;
	bh=rdg0Yg4TDiV7Enug9Lj0yvmM22civAFrKJowO98gMAU=;
	h=To:Subject:From:Message-Id:Date; b=ZaVJ2XWRN+dPawL8emrTSKlCDg/Cn4VR5nWk0n4XRh4DxxEb+cI1l3xSVjDpowC8quaZagMTvcKzKiGuuP6VKaarTkDsCLYGD//Ok5ItomzDXQl5E6ULiTGaKTjzI2yHkMWrnCQYG4gpgpBjlSaZqFPLa22BuwC0ZaGYYaSLjhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyzvEHSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyzvEHSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1210C32786
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856142;
	bh=rdg0Yg4TDiV7Enug9Lj0yvmM22civAFrKJowO98gMAU=;
	h=To:Subject:From:Date:From;
	b=UyzvEHSXx8RR/yWLCaObXjvtyUcqI5pusz3S9xPCjFYmdFCQjihF4xeeiqAFBcdDJ
	 lKgecwTFupOfaLSgsexC7UEiBTIP5WXKNVjg3U4ArP8bki49m0RU6zfLNFIlHWxsD7
	 ZNqEADinH7MJ7Pts1TvYpOUI89jpNcLGiYNymtvejIA/cU3gIJzImhF83nCmP4f85/
	 A0Bf8Inxi4OowDQC8sanuG5mRuz2SptIPD1RbQASy+aMh6e5bNatYpelyHa1blpTHA
	 NIzAB4JMY00G5uKHdCUgZPREqpSCoh1mGH3PLT0PmENkONUyhedMZE1j7mQXqD8ATw
	 dXFH5bmQ8PMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6E0C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585614276.6502.10042526141527668166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba54ee2b02aa5026c5170aebab5613999eac605950593fae500815b333bbb4c9
Date: Thu, 16 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715856142
