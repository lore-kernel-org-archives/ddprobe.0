Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEEB535A2
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 12:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714392743; cv=none; b=CZmhLPU5vsb1Bh/5g9WWcYxKPcfSRMmjsVkueDVCNPJMOjLh5jvas41zB99TaLR0jVFPqN2bco0lxCbIKbWe9TuNG3QxnscBTULyTXi6xThK7il7Zep4YofWGumCn2ETXIrGAD13385LStsrjRJisiqCtRzBvZ51JdZYPKO8Htc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714392743; c=relaxed/simple;
	bh=lYYGIH5foGSE6ypA8GQ96/vMuBFbpxpYt953s2UBKcQ=;
	h=To:Subject:From:Message-Id:Date; b=ZjjCup85dnNfJ3wzSxZk49haSRl98yJTSiFP4ZQ8lb2n0htJJiUxq/vPMEhsttvOdEHSeTxGNgaBs4p151Csyn0Nhra9ISAHgMIysRIN19n/R9KOK9k6MPzjURO1ijuAPc3hc8GOcYTYb6CafAtZRq50xFBkUd5vvjw8A0GdrBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs0gCpjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs0gCpjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05AEC4AF17
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714392742;
	bh=lYYGIH5foGSE6ypA8GQ96/vMuBFbpxpYt953s2UBKcQ=;
	h=To:Subject:From:Date:From;
	b=gs0gCpjhYJLqH1cCB4UUpXgH3RXJqhoYKtaD+v0IQuYQx5dyNL463H+Ak3FKmtzQd
	 KnPdjJOKcLi5SdHVkfDL8jNDKYv0Zvfm4tlVHPoi0YiXIE1fhfnjSPJFfo6PrIl4gA
	 aLW6r+Bp9byWYlEupAU7ucFaqIGhv3WMEq4K6LFvYaaXUxgaR8NVfsznMn73I2svsl
	 SWUaB/u7CAsCMux8U7IltlSne5GnqrO4rTanguwGuN9XR6ZMw4ZkWrgtwtrAVTwLTv
	 ZdK5yNjxUAImeIb4rvBgr4MSriu/B8U9fZ1ol//f8COAGXf7qznecTjZYmZXSgRR0y
	 P7fDHIoiaHE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBE4C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171439274276.29312.6987941395399061814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b9b23f217eb5c30ddf561878de53b2ed1500c0e3530f5465385807d88f9859
Date: Mon, 29 Apr 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714392742
