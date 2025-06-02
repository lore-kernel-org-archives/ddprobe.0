Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4378D2C326A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748831994; cv=none; b=bsjUUNWcPtcrKmrILYztTY6ZIIbHxH2Agh+FmveeGLTEwLg/JCLg5ZX5ZZiT03lLM7p+ryGD9LEoWPalBeIwOCEnBY2Rmo8SGuA2QvGRbbKSoOceqkLSZxsU6VWR4aieiQDNke/h6t9/mLkgc6JDDqy1FGGA0nyGHGjWJlhR9Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748831994; c=relaxed/simple;
	bh=0NGb+a8s7APc4wNY+tx4Gyn334izXjyrUiyj361GZjY=;
	h=To:Subject:From:Message-Id:Date; b=t13gYE4M+RTQgW7gLewIeks2zjjEJsAHxZlrWSo/Af4oZSuUMHFnsg2fIr15AklFBxT2yJRTwD5Dt5UYD6jAcWlzOsOan07mV5mM638PHCN6ZIkt497R8xCUUoiOOppNbRrDKF4u9oIzSkfgFSekmHyx2+zEEFa52WHcAHNG9j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhyrMmaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhyrMmaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6750C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748831993;
	bh=0NGb+a8s7APc4wNY+tx4Gyn334izXjyrUiyj361GZjY=;
	h=To:Subject:From:Date:From;
	b=MhyrMmajXni36yY9+8egmNO6FWrKv7Eccy2avveAfMzxFKy+LL43/SXDwtgq4CyTK
	 VgAFFUgvy4iD8AdUOVZwCIVZGdwCfKBr1JbD/O9KvYo7tk+LZcCShBARb6MhJY3Rqu
	 /fxmswmTLDlvo/V9ssNUxE3s/NL6vsW99aQTmzj0vw7292zCATDZZOUtBtuoNdBtAr
	 nguACujrLPGKMKBk/7mEC9N2GUPtHpEbR4FD7CNKiH68JnSFVTP/jhmTG0lqqfEM7s
	 AfJAOijPe4bku3K7wdnMb5TnecO1r4/kA9zUANBwv7WHfQVrFxZ3erylNTNtTSLBoY
	 6yil7DKSrRISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93578C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883199357.13270.16204222786994495892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d931229de1c2adae967e043021f3260b64b550181f945ea8fab42d3a99f602f
Date: Mon, 02 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748831993
