Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EDD274B42
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754653194; cv=none; b=UoEvhkf5FZESY4xrL6JV6yZ3IEwkaHdK3or/3Rc4UPts68maqapCardeD6nr4JGeHi+Paid5DUf4VSVPWM2Vi5ew0PxiKGT33Q00AFiAaaopdHkLIJdquAVayxf+jYtTwA/x7sfN5C2ifAbLxS99X6thHs414GZyUTVzebeSS/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754653194; c=relaxed/simple;
	bh=QrWDrhqK/t3fsAj6EjUseiUPp0dICfZ3oNuEW4pvWFc=;
	h=To:Subject:From:Message-Id:Date; b=Y0WYkgPfpR3QvQKqeTBoShZ9MZzdkZb6sujoOgYsuwycjTLbpBSWh+9V1Xoh72CfxOoigXqGHw98MSi7miiBXtS9wmIsExS0c1YafF5GWJEoaodrfucOhFQ15vM33jgh9mQgg8fyhYotFni3BxpJr4K1v1FlyVNh/e1A+ExvYi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1JzJwW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1JzJwW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFE0C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754653193;
	bh=QrWDrhqK/t3fsAj6EjUseiUPp0dICfZ3oNuEW4pvWFc=;
	h=To:Subject:From:Date:From;
	b=t1JzJwW/q3HTK4yR+9Y8DOI1v28G7ENOxr3b1LBeavd2E2N8z2EYyUJU3QCQuyOf7
	 q06Ea/9kOSOGHirm4qjGJrRhBB64UTdA44DRX18TG8gvJ3urczY9BnC9F4vK2jhofm
	 Mj9nmB6N0Vei+10bqC2Yre9cxXTfHNFuZBGJ9X16TH0g6A+HWAFJitr+PZg2Ltp6gs
	 RmCVoJ81ECGH9vHnD/8fS2t6zIDfQGpe5t09UjS0oPxE3B5w8ZoREdau+XNO/UeJIN
	 trdGUkP4Z/maqedVqv2lp9E94TM7CEkdB2AkYcpGXN+GqCeP4WDT8ujqbdQz5HwNch
	 KESPlsPDI5mtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E6C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465319357.16614.11156516221369145958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe50528b67d1fc39feb5524999bf83394526d6533fc191d26870dd12b11c342
Date: Fri, 08 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754653193
