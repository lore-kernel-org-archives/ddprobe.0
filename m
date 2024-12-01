Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7F318AEA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733090154; cv=none; b=H7RFB4gDmaJVvKim19HRF3tlrdpUbum4JzkL8A9TQ2GvFY3xBCi0/c//uhljsXRD05hI9n0EBsBH23puc0rKUfcD/ivl3zzg8AbjLbHSwuBkhBoTAItFqdELKEr3+idMyFHkcTp2TX4bQlRlCngmkypy9f4AwuyttjqwVe0rRII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733090154; c=relaxed/simple;
	bh=CaqA5swQ+WHUY/cRX3hlSe+hsUs+i/kQXdkfQ/Jgmfc=;
	h=To:Subject:From:Message-Id:Date; b=sGAI5+6kp3afmkhctxN4oo1/d9dH0EFGy0ofcqlSpQVTaGDCHAVHD4PvotrBr2YFvKxTCHrZINNYiBn2YEpam5MIfpdmIsUkeVV+GpEem+I8wKneKpN98fjVXAtgcrD5j6mkO4Bb2aXt6VWXZr2ZVZidndYClLczaTEsk99vq0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X13xxdf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X13xxdf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF91FC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733090153;
	bh=CaqA5swQ+WHUY/cRX3hlSe+hsUs+i/kQXdkfQ/Jgmfc=;
	h=To:Subject:From:Date:From;
	b=X13xxdf7rP1+zjhuKwjwW9SOv+uA3RcFLgkZ4c0nraO0sC8PQv1Rn9k7s4oBjMuUd
	 X5jSUwxsVCYvuC7bIbJZlSVr40nCUhEnrKHsV5fP5NywRGvMWUoAkEo+Jh6K5ujg/T
	 2BgkAWwhZvMkK8OS/Lru//ct+lS6Dq0rruOcfGpyC1VId9cHrThSjBpIYpFSTiyg8K
	 DD/D4348T0IClEBINWigKZ8NQ1tnv54diEDo7Yl+wvpIPaf9OmXTve5ZiaCeHpbNJJ
	 pO9S/xM2iCd17IeVvrKT38hMa9ewyFV5w/qmhIQNaUYy+e9gVu0/Z9KRftwJW621Zo
	 9i1b6G6S07TLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EE1D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309015359.9614.2859702195221492423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4447020768c37052cf3a3668ff50ab570e83b432301d340bc9bbec35fde78a57
Date: Sun, 01 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733090153
