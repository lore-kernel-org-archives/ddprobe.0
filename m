Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5404C34B697
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787904034; cv=none; b=lqa5Rj+qP8vJM8NukeIXCoTjteN9mGssbDq/L8mcnFNdZ9MTxiKRMr2b3yvzGxwhyOujmgm9xRdAppwjMASKpmBtFKDMveZx+SLy7nn72eqC9pIONxn+YIEIzTmqdipMegzLCdoQ1wLmNBXr/dUnjAlR3zafBO+41jE/88wuW6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787904034; c=relaxed/simple;
	bh=slweaTEHPo7GtCOOMWFD8BZcueIIvN+5z9X0GOgB//c=;
	h=To:Subject:From:Message-Id:Date; b=h3xaBFdoD1LOfIJlN/nqnGlALE48EWQwYYjDroaipdw79V987eBo98w1VAO+rEFA66pOh3kg1rwD35RcqeikARBVuqFP+QlJL+aFQOK5pOv853d0EkCV3Un6bMr+j5truQWKP6P9l4AmHG9pYLMkQ6zNRcuxcdT5zEBdgdxy3ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTIQGxii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTIQGxii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AF2C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787904033;
	bh=slweaTEHPo7GtCOOMWFD8BZcueIIvN+5z9X0GOgB//c=;
	h=To:Subject:From:Date:From;
	b=WTIQGxii6ia/igIjnRIwkRIEfyPNOA3HC9ekBhBn4ey86gPsshy+2vGTW1+2NI+eG
	 VhD6AhqY4o4GmXVmo3tomz1PhcMVK5SfVND04LLU4634VcObdT6cQ8wCSl4/LPT1lh
	 rSOqivWFgT4ETjTDT9mnZFXRIHPtBC6TWXWcrMnvDiVZ3zBgARZ9sO+mqmJdUELkog
	 lMduec3dtKBQws3EisGoEuuLz9OqGvDoI6bLDR/NWJPO/T3lvS2REvTXiA7NdoHvWE
	 6GgXeE5bkF2gZTWycJidyMRND5K2ofdtTS+QDEHfl4F1E4Xa2cUDslKVh8JuosFof0
	 VjIVnuAKNkdCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD010C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790403369.5721.8428560124610006544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17ee2e883e4ea343f5399d5ad1a818c700d4ce510fa69e987d2e237128cd73b
Date: Fri, 28 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787904033
