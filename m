Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C914410E5
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747267793; cv=none; b=c8j4SwEQU9bgHWOC9wf6veq9c9hUPWVz8SBDjFWvbAOvxdH85lsueIPc7iHixssQqbX1mdY3YzbhasDAMDMZbnn4DyVMQ/ZMj7QZ9qEtvTwJaRsHK2dfzDo+NAT/D6m2xEBbvzv2UehtYn9JA7v9RAsxY5isItUGcVWdXPVZ5aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747267793; c=relaxed/simple;
	bh=xEDy8AkTDGi/mp7J/TfABM4QcMyfMHWxaixllMVfvoE=;
	h=To:Subject:From:Message-Id:Date; b=ihOR67NK0GpkDSSxttN0e6RlX2Q69KHrUHXFFmYF4GhRtsV7iN4u0WLUSS3TbiAi+oIBu53Iw1+83ZhAZymmlh5w4k+msEYC2pWa9W0R80VP/zDvd+HsRu0nAUVljAKCVLwSSIaMsODjbLmNrjHliw7jd4a1ZO2vbAsR1t/byhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOHBWNTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOHBWNTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E05C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747267793;
	bh=xEDy8AkTDGi/mp7J/TfABM4QcMyfMHWxaixllMVfvoE=;
	h=To:Subject:From:Date:From;
	b=lOHBWNTUpaY8bvrYWtVhxGO+FOSdV/1sIqYHEwWpNSLrauscOHdtm2vwso5Ky2YQ9
	 LFn7j9oXLZbGP1HaEMAi4xp/9HILA97ERyrI0IKkcTlotuKHBCoWoedfFPREYSaZj2
	 Nv8rnaV4ExHw+ZVKA4tcTcMR9WpzoKRHB1mFUyKolc+mP9W0gL2dWroTJnQkq0aryH
	 /wzFwmoJBnLZPangJOZoJeTcn5VNhk18FtSoyD1JKfDlz6Qt/TxHj8WUvJTtT8ByLD
	 /Hu14bkwH5uTvx6pWAu7G6FnZqTWs9zOH7VKeML1wY2ITodNAAOEeMC65j/mrm18Wp
	 sGfrkJojr4kRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92348C3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726779357.10402.5647964843740804401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5591c83357cd226db99b593651a6542522cb10d57fc59c4edb9f0dd5e7e3c2b3
Date: Thu, 15 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747267793
