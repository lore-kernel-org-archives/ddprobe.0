Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52246393DE8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781012134; cv=none; b=eKgk+mRcL2zlnEk3CluMlK10FW55IcBAroJely64ULC/WYIpEfMN5/90kzNq00uVppO5lEykKdufWKVGbLpjRA8HAZXTcMU2ua8FrYswrLk52BInpeBmakQZEdRD+ezpylDZR42BmZuTt3DUhG9qx8FJtYQ+80CGdANqOZjFZeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781012134; c=relaxed/simple;
	bh=2ZULp8ZyRKnot7JT5x5Y0f79VOIF0SLForxK6bCj7f4=;
	h=To:Subject:From:Message-Id:Date; b=CYtf7llAQuBaAhWU31BHzKbS7LKcHyZFudgncsQojdZq8UHAIdjVqWpSSELMDNEObZ18oUhilGhk1AUBI6wR77vDIaPBaiB3/Y76cVk8ghKYxQ/BprGzUQ80i8H5eGRb7h6h9laBAyE5actrFL8/BQbcQNGVukg3A3iTSnN9COI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuovoJ+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuovoJ+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45CBC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781012133;
	bh=2ZULp8ZyRKnot7JT5x5Y0f79VOIF0SLForxK6bCj7f4=;
	h=To:Subject:From:Date:From;
	b=uuovoJ+mkAnoUXrxw7DUGpQ+eyzkhB8wArjHTAa81dEhbA2OHFviDIHc6CglxvJN/
	 Yi+H7yTIkVEjC9d+nwk2J+SDq77tO1pAjJbgYnz6Da/cNR16PhVOjGeqDJCShGdw4n
	 TPcPD80rJUv5XAPzZE9PmRdixo7WvRZSHFctAlOBNr6KQVGo7gciGjotW87Wk2V4Is
	 eJ4YcMI0ll0oCpfMnRtd3ndFArlk38CAdyO8pw8xEFJmZ/56Lhh1R7NKTOGqA2qhJZ
	 OGtOejuaP2/ZxGXErmozljjIvAMOsKOCUZQCn3rRSaERuTKQV53RzL3jQbaZHZulMI
	 C6U4fF7rRcBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0245CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101213371.7936.8962404029829995243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f55cfc317d40d3e80be1d1b536f7cf081997c8b7602f2bf369162737995bae
Date: Tue, 09 Jun 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781012133
