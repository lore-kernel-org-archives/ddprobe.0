Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6805A181B81
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 15:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721230523; cv=none; b=RrrmA31ijCOYmkrZOOWqsUEx27mwpeFNXkeERv/nyfeu1SwKagENwYcWMFkxfqYA+1+kf8dF8s1oxiCpVTT/SbtWKLaCsEIKlVoyMUJTNBFXxPS1S1+lRQn4kv3gd0HWpJx+hD+A9IFvaQQPJ6iBk41p7bf+gXXnnxaRfoQl63c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721230523; c=relaxed/simple;
	bh=BLeL3izjrdoFEKdVUbNlCHKv3LhZwRdT7hfDT9PkjZ8=;
	h=To:Subject:From:Message-Id:Date; b=Xpyw7m6qaO00gb/PjdMvOdD1U1jBfQHw2KCwFCWQPta+1xQyg07FvhcOamLqDPkn9BOlgyXFTnI0ukUx5yZisZ54vcBSt/T2PiFE8tCpI4qETgJIxllP9Nuy/SIgiqsMzB1bKXBjoCkE2qA6djOPDYdqLn6z/rSgRRxvmegg3Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGFuLnHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGFuLnHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F4C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721230522;
	bh=BLeL3izjrdoFEKdVUbNlCHKv3LhZwRdT7hfDT9PkjZ8=;
	h=To:Subject:From:Date:From;
	b=IGFuLnHFrU+tVq4Y2wuSJLpfgnFXfpvTFPARrVnwON7hiPiKjwo1odLrkMAGKNvey
	 w78fvB738Nr7kIcAYiviSjc+H/jG8Tm+c1DlGibtPFRPyV5er/1qkAEBD+X96bL1Hq
	 oLZzZdJs2WgJNuKHXO1ouZKIFtt8gtaEIMd6uW2txgIQsMLGme8z59VuccK5WnGEn8
	 RwlaUNizrVu5rAampyauwXHdbBVTOU6/d9ylWlRrieZoOXc5LbtgXw06bLxaaS21MD
	 hwl7S82h6kCr1l43IXVv85PnGx0dILREbVREa9YGXkDo93X2bemfTKD3MH3cPa8aLw
	 4U1pTpprDs6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0164C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 15:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123052277.27643.14813667489183139517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08ef46105293c401d9851c92bc9aea93dc50e0fc0878de37415a3710f352641
Date: Wed, 17 Jul 2024 15:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721230522
