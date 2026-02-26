Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263EF29E0F8
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772136894; cv=none; b=UcHe/HRjx9XJD/rt3zwGcUrICh3rFP2DCzLSOc5ky/APVNx4IJcBaIzn+52n+dOwIqCavq2jtY2baNcE22m0VntEs7in/oHlDGVIvUHvcEauosus3rrdTyevRCndKyJxy6VruqiJTiKYAy/GLryJpqOssxY1FM/f0B+sorv/i+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772136894; c=relaxed/simple;
	bh=8jcgL3oCAkDEKyOGxWR78xphdkXc61dGshnOYeg1T+o=;
	h=To:Subject:From:Message-Id:Date; b=OspK8zNQGIub7TIjC2tpLvDYVaxNijSvQ/KBVihY6HGNHKNjonpSDPLsE4umM6kd0ymb7pUmAFmBpxg9G5F8DUPiIk4wAfGBCjmelAMQagKt/ildaRPva2ayr2/e152PvjAhxKyJgq+IdLYxo+xD6AWYXvh9lSPxJ0pChyuQscQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhPPqD4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhPPqD4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CAAC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772136893;
	bh=8jcgL3oCAkDEKyOGxWR78xphdkXc61dGshnOYeg1T+o=;
	h=To:Subject:From:Date:From;
	b=PhPPqD4MaiA3Y3iHHz+EZadPt1pRVIbMkbWiwX40oZlWFiQDQH++lf1Mk6OnLK3n1
	 eUv8OEpwHfL4iSzNnqUKb+k0dVavGe5YVjQkVf8JnLtKP8wo4dkZF4hazq61J6Ag+D
	 q20EuDvw4QrO8rKYh5lKDZCMZJZRCMPsrPaKVhnMAGyV/od1HCuAuD8Ytj1Y2Efccx
	 Vqy5sJGUKm1JhQPDaMA9SU1HPmoKSW7zKh5cAOEUx8ElGFREPH5NuPJVhUT9mqmIL3
	 X4fUo2f7xTMGKTkiu7y/D/eD4nlhD/abToNEM748jKvwKYMOe2cjf4vhHt5MSapu+Y
	 2PlbZSlBbNNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909EFFD9E07
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213689358.31679.17717653449088024188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35d0215609bef80693e99cae9bda92d730f06467ff1e129e1783ef4bf6545ac
Date: Thu, 26 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772136893
