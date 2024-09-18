Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CE217C9AF
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726665354; cv=none; b=X1VupG/O2ujwD3v3kXqcZoTJ7inNNshmGcdjDzVCG18eJ9V/dXDcOukjFShr3vumRMil35HlZyIbvS7qnwUEojfppE5ULzXLfcfg50SI+Nrxw27SG/e9i33GgTpqfSPTJtSUH6ca4ZBl+UmxF3FctzGkQF+6RpityNc/zmqV+eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726665354; c=relaxed/simple;
	bh=7Bq2ifT2FPEpXhCNcimmW6iWEcjPMVj7AGMIK/HoCWc=;
	h=To:Subject:From:Message-Id:Date; b=sPOCuEplZEsNZIlKjkGY783VhQkLVPrx7tZBYQ0CiJ6egxmqnNI0N9Zm4Jx0R0NzuCxm7qBEIfpmnD493+RZuHhcxmtMNogH4rtMmJEInQfrKP7rjBIDF0kyXKG1k9i7u3W0NEFAV7tq2bMg4k5nLUdpEPzjem9PyG50PY+QkGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/R7TM8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/R7TM8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6905C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726665353;
	bh=7Bq2ifT2FPEpXhCNcimmW6iWEcjPMVj7AGMIK/HoCWc=;
	h=To:Subject:From:Date:From;
	b=T/R7TM8VrD8yZaiOE0gZCLU6ECxGqx3Z1LToERm6nM7mk0pCT0gNv0ZdeIfudXkOe
	 yWloed4NmkfPWyYwxP+Pw9xSB5YcreGvHY8Ytem8kL9Dm9vUxoOWOjtBRzMk+Kl1ir
	 XVvErgBV8SbN93wfbUXPPdGB0N3XElsn76X0BRgoYbaCrr3rBQiD3XEz0HW796e3gJ
	 EUGjpwRpChM7mCM+/ftMNN5gsHEWPvP7OhDPggf7mOXyzXuY7uQ/m4tLEH5LGUIWds
	 crqIykTDWzqGc1l5at8jv4pVKwhPCq11eWAgf4G+rHqBBp2S6dDsNuAllhN2+SbG0+
	 KmUlYDipGIaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9862BCCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666535360.29077.7941016200501237748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85687ab7ff1740929ef81e68b2e1127ea3b30b71923d5e3b69dd180a5537d346
Date: Wed, 18 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726665353
