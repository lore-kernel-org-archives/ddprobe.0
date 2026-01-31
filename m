Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE40314D13
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769875434; cv=none; b=HpyigZvXtUO2lGTMoY4xXrTE8ygH7ZcWuKHvxnOV75WSToKTrE7pAyDLynvAtKsVcxGeVrcHBMjLPRisKKXhIfHrSgwMZ3njBZF4He9tbsUjsXl4WgcQORqyeoFhUNqHynsJ7gHORLIaI5PqqpkDcBfnFEKO7+2Hb15XaYdH0TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769875434; c=relaxed/simple;
	bh=YS4nE00G6Fq57F+7/ESzBV2JhyjCn3R6zexDcLxmUR0=;
	h=To:Subject:From:Message-Id:Date; b=N4mvg620qZMCPuy0qs5bM0h7ejOkoHvknmbJ4LuDxUP8273a9hODFLmQ+ATkc3llkl45s+/xLBe7/OqkpI+Vmr3R96gK1okjeGwk7hWp6RPF4ngfFY7H0jPNGbBcD5wNlClzUJKakhW09lgWZ1HSTWnOkRN4hq7dWZMgSPmWsIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glxYpFVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glxYpFVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4031C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769875433;
	bh=YS4nE00G6Fq57F+7/ESzBV2JhyjCn3R6zexDcLxmUR0=;
	h=To:Subject:From:Date:From;
	b=glxYpFVJjrbFgHSybsawqsKcumzC+D3uZIhlkMSyU3PqjjrCA/1AxhqU/lh29//eM
	 jetX3YU2URqx+7zw1cygiIB6BurxJ6rnYynpMZInWq5VWRgrWj0H4jN1jXFYBKo21N
	 blsS/GY62M+3yyHgKguiCwOONRGuIs3gFtrswpTj6D5ko3lUGc41idviGlbmDCgVHA
	 iMwO70nl8qlcNjKi2bwGKYsSVSQHip/viIHmTZAkUlEK1hu3v6tsg7br22vn45vUJY
	 6cKCfoW6lsw9zdG31dRGwgpjWo+lszkHKPhFvl+BdbVWjVdDJ6vR5MY+L6h76qJYAH
	 ruPJF6iVcVDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86DD7977F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987543357.9631.18219774660100149103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cee0a6995681fdb9eb5f9ed168798ac95ab6701e2fb2c683a64afa8b540615
Date: Sat, 31 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769875433
