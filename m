Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52335AD31
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 02:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714010483; cv=none; b=n0R+QS9VJ2K70q90Ic+Ka8h/r42G8+MBwRJfkAN5YjKVAQIOAqWIuLE5dtVPSNmNl9pUvR32j8D7wdq/OVkAsCg6Csh8Ekp0Q8fGhGYnEkXXLxHWwSHKQjI/3XdxwuELJ4rz1mLlmVTVAQdOQMKlFO2kaEpfgvriEPp4moy1VE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714010483; c=relaxed/simple;
	bh=pgojlP0v/2NCm16/2j3L5AEc8fSLAa4q42l0/OMhDL0=;
	h=To:Subject:From:Message-Id:Date; b=UTe0GyiJdr76fON1VgZZbWrp05KsBPMNNVtn881Rl2a7p2ibKDe8EljfqR5DVkKRsGfpsWnlb1v63Wxi9zXtsR2qyK+smXSoMKyJaVNUaJ9JoHEvsGU6WEcOw8dhHs+1wqRujwK0uPtBIVaC5P3d3lSSGU3xD+v2pZJpf9yTkrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyvAMmA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyvAMmA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB792C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 02:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714010482;
	bh=pgojlP0v/2NCm16/2j3L5AEc8fSLAa4q42l0/OMhDL0=;
	h=To:Subject:From:Date:From;
	b=YyvAMmA7ulW029TCLawh9WTEPY10eX9XGCjUzsLf+JrCc8yhh3QtePizk7nLVz6Mp
	 VbKvlUzb8lDhaJgkvO0LRV+7vOhP7+k/SoiCiQvYdR0Mp+C7smkQFbNgR3zM7r97ML
	 Pa9si5OcEMf4wkqCst5EDKsvihk37VFSW+WZv9k5LLqHG0turPqMb5qOuSysu/AUxy
	 FH8rTvha1YFCW1K9dytqoaNQ1LSoyTl+Kofbbor3tAaI41nqLZ/DBQNqBWY49R+kEt
	 UKD1O7qUjrZ+7dCrXgYWrzdO9UC/JnpOHSWz5EXcx7sjGiRqn3Nr35PtxwB161jxSB
	 wlDNbbmvgXQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99CFC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 02:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401048281.30264.17967150257538779045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edcb629f0543688a0be7793d9ecf961c220ed92129f2c0909ecc8d2fcdd39ea
Date: Thu, 25 Apr 2024 02:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714010482
