Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9653D76
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770004434; cv=none; b=Wx8SiAtsD7+OWsRMHBAkuc2ZUVjiO3fE6ByOVT8f3GgpyVAOzKyLabbZDaOmVbngH6y9MHIj7H7CCcBdnhMT8+2Jib9ro5F4PDZ/ZCq3iZwXH9fAhpTgz5Xsskrw2PBDCeXxiCxISF9vycm9YaqKyOoT8HYOZ8M96V2HhJJCHAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770004434; c=relaxed/simple;
	bh=1vUAIgFBh4FXBRrd4+D4C3+uSb6LpM4WtU5dwUEeCSg=;
	h=To:Subject:From:Message-Id:Date; b=K3pSehtYwflld/w8Ixo2N8UKtMuMpWu4EayNC0rVA1mt29Ghb6rKndYHhPz1m5pl+19gCGhYmvJZQQoFcW8mDYmLQCSZAwXHo7kiZ7dXJdtlFlN75t9zzlqLWkxLJvNosjKO0WDJvPXAlU2wkD7d6KiFj/JJEX5rsCvDLYraanI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfxLWheI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfxLWheI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC255C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770004433;
	bh=1vUAIgFBh4FXBRrd4+D4C3+uSb6LpM4WtU5dwUEeCSg=;
	h=To:Subject:From:Date:From;
	b=XfxLWheI+QCrfAx5LUjjiSjqjNFPkzVbNE0yhWTuoi1+SSbJoXRFz8o7d4wQpZWDi
	 Qc81lVfMUpgz0rFoPZbSecmbFW0eR5RVPCcWuglFARDbo+IBzZxNmOg+zc8VH84ng9
	 rdUlaKdwz4Y/kp1U6+APDc1z243kFQ+b+nVgNOgMQ9rtkrYgEW6fRlogRTmTfaqzGO
	 q8DMfIW9avKo6FFXAySW+vBc+Uz6jwwRR1JmQF8fMrs08zcqLG/mfN+BoHbK41AbW1
	 lGqyxGNDwHvRmMjexw5rfGsghGFnmWZMpmwfq0tuy5lYssFVHjJpBlsvwzgz8j3QhX
	 KhDKULVAi6tkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDCD172C0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000443359.24545.16938880771923681780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300e993a4fab5a98178e6630fd3a65ad249a4c05af7c2e56d36aab7708741774
Date: Mon, 02 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770004433
