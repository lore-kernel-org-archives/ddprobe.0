Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6F71F94F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787187634; cv=none; b=ty+p+lH6mf5AOOz9FxOqm/7ZiQix2ezLyAz+IZqx3cRcvIQHsUORjsQe4HhkDSbmFCo9oczZKNuehfFl5ifRWcd8sbaEOcQmHo4htcUNyqMD4H9eK3wFDkCG2HUflETv4KqzYoeZO+FLl4sHmiFf9ygOkgXmPAPMiimRRFK4tUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787187634; c=relaxed/simple;
	bh=ZA64a0Ek/UySA8Ky1xNDuGsgr6tukl6IDMwUIVP+1c8=;
	h=To:Subject:From:Message-Id:Date; b=Ob2qw7YXMksRlt5CVGdcgu/6KKw1hd1sy+AN2gS/wbpnYpHVo6LazH0lSQOoqxO1S7VwoSnI4QYezmH0Jgqa92wTJC+ywLfCyCpQdLlaS0RNX4GMHaZetbXTRoho9dLjl+IgPjS1MRvFumAjeDHc0IH46zSZfAP71pRgN7nC1SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6ClkI68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6ClkI68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E40C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787187633;
	bh=ZA64a0Ek/UySA8Ky1xNDuGsgr6tukl6IDMwUIVP+1c8=;
	h=To:Subject:From:Date:From;
	b=r6ClkI68KKZV651kNsUshtcKZ+eoRdNtlApW03yo3AXU8JKlvxoy5+jp7sP9NJqDt
	 /rOnjgGg9T3PWp44rEM1hwpb7Tn+7AHswKnsm++1FvupUmr5jgH67P3ATfd1W+mpSe
	 38giLORSLGXYCKLUhXoGK0m/CledFJ+SAbCOEIAk2MRSqNuZ5Tj6MgEQC+kDx8auOY
	 8szL4OkO3GMm1ZTBaJO23aTHxC9cv34cSJFEYgYN8kKa34zb84akOyWIBHGdlRI2aP
	 0KO/1UoBgF1XOvcerYasdPsSEqQBgSDZ1IeZVS6TXA5N6Nu8k2CDkcx5WeVhdpAAOM
	 SyW/uLOkayQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C78C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718763368.14560.1208243278005989590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7195a16cb0a5ec0d7e7b688971ef05e6310fca7ad6f4a17f8d552c7a26cd9e97
Date: Thu, 20 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787187633
