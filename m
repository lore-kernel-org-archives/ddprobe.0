Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3142459EC
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752088195; cv=none; b=vFH1tzpgGlC+5bNbqdmKmkoacjM1YvC3+Mw6a93tm8TSHP5AjHhA1nLr3x6XaFzn69VGMg14/5OOEqgAaOi/p9NQC4CwyDTSLtWCMnNHiLS4Yn/y6l600ZQIlP0rrPqQP0cbKjVaROBtEfNBRtYj9tysIWKMAlAU9/RVKI/KZsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752088195; c=relaxed/simple;
	bh=3zDdo365ccvcgT9p7ayDDuZ8SPpq0t2e3BrlEK/PAco=;
	h=To:Subject:From:Message-Id:Date; b=qLFShJSgmCmu3Q4JIYkO9qSxn6guhebSIsMuCTxecr4TKo+fayaNbuPyxd0i3QituwFposelndWeztxq/T8/gYDTvsJN0nYOZ/nCf6G/sSfZ32B1hFucAV/a39mhFaf/EP0Ac0pZ/NOLIXFXvAQtccrgPU+O1i0HoC4uy+M6LBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ+9cwlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ+9cwlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E92F8C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752088194;
	bh=3zDdo365ccvcgT9p7ayDDuZ8SPpq0t2e3BrlEK/PAco=;
	h=To:Subject:From:Date:From;
	b=uQ+9cwlSrd/Ib43Tbhh4Jj9Ftljvn7IAGU8V/cuIdbtHZeVhRDNwePRB/NjiT1e6B
	 HvS58l2oN5KWK+f4+Acy+bWpqqD1vk6cMpNe585WlCA94PJt+nFOqAqq57Lsxwg4Uy
	 8vHCgc7Cigi35eYvn/6he2hzW3936X1RUhVeFoAlRYnKvU0VRdIciEgFDijqf2AXJe
	 sbg3SWjOxfGYnoDQA+yGjjjnQPetEavQcMbYPD9+g+yFAKGQVDKd+klyjp2sym4MB+
	 Rhj2XmK8ycouS/x9zHJGWLqF/k9h5C8PA2S/HMwXwQSAgA6bNuX34TDToJqNQ/tJ3v
	 SNZiDy8CAtXZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11BC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208819357.12956.4927949563001381578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495cc154fa16e2587ec5fd6244ad3a475b381fc1cb06486f3cc7ee6617322b01
Date: Wed, 09 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752088193
