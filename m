Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFFE282F01
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786235434; cv=none; b=uz9AF1x5O8l9NShsBLICQ6h/f+FSrNIB0afyi08oq58c5DVBa08gb3uohTtDrlKB4i80iXIdY48O1XqcaGHp867QrdYijJNcUwRv5aQA8Kv/dscadrpy+pIL6nUZtUMhxe6gK724vZvqSUahz22U/Psq+k44UOZX/1zJX9T7ajQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786235434; c=relaxed/simple;
	bh=NAUmz7tSSrm+TRfviVaDMTsVcI3nMMuA99dzlV/m0AQ=;
	h=To:Subject:From:Message-Id:Date; b=AT3ixvVtsqsrm6hL1W/IebG0Epjvzxmh+gbukbG3OxzoldomXf7PDTYiOoH6AeuhSA0vYmBylZwVjkbixGCYJPwoJhMFL7wDXxxLpv/IF0bRPNEzd5Rg3cRz1/jkxQHaXcQ/9oCnzqgCoy6NB8TY/j6Xl88kxYmsWiUr4VCeiMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4cXvCma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4cXvCma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E6BC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786235433;
	bh=NAUmz7tSSrm+TRfviVaDMTsVcI3nMMuA99dzlV/m0AQ=;
	h=To:Subject:From:Date:From;
	b=R4cXvCmaTqX5nwBFX5lRu8blMjB4kVMleEiyXqCfgawYyjd0vHd+DhvuBvhjqMoma
	 d3rKwXAqXCIcgf/iHihY3UtbcWxNriCEzZMGk1ZfIrYu6RxJ7EVnoKbOdOgQH7TLxK
	 c7DuxJo2OicTHAtrRB2B0i6Vkj0c1uZkqNA/ldfZq2qHNWpDT3/xIouMgSINtq61ZG
	 bsbSE9xJZhQuzAO/fcTHvFQg7yX7te9WSp6xdkuAXtmRvztbaAbsNAtMjUCvm5J2tG
	 GOeGk+Y0rGoDZGVZ8/fZgl/zcVBGJjBydRvRLD+FQGuWjnZbsNN8mD8QmDYuIgmOsf
	 G9m4d73ChsVFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11F3C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623543369.27520.10330933816203500975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efae5525a7a17196c96eede066a13290840938bdc031ce856bbd39b27bb27fd
Date: Sun, 09 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786235433
