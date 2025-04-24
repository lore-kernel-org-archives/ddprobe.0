Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B8111BF
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745531994; cv=none; b=eQXj2pAyHQ+N37hC42/e0peoK+SDoBeDBn9TabJKCR0RXOlt9sVTvwhGkApvOibZ2vi/XA2hg9pcUsRWem4o85EvmIxC69OIZevrYFhgutSCOA8LYOsPsRs/gMzUOL38Y7YczCF/u76+Hi9kYoF0uZCp3QuRIL96mXvjQbd49Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745531994; c=relaxed/simple;
	bh=+jdv/pmM5psP2m35xgZtwHJeD3ArcQmYcAIk7WJ9dhs=;
	h=To:Subject:From:Message-Id:Date; b=g7/elYpdvyb+IGU5dH8k+nACFPwVzxi9jDjJJbgGHHajt7FptjE/6D/RLNk4S+77A+B56r9zxMKe9YuQuHZ28I8DBRAfrXOekn/fwAL0Omx4FlPsHLxAVHrQHlA+OHY5CG0IBGqau0uYtylU7aJSLGNq3XCHRqQSAZ36U/DsdMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLToer3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLToer3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F154C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745531993;
	bh=+jdv/pmM5psP2m35xgZtwHJeD3ArcQmYcAIk7WJ9dhs=;
	h=To:Subject:From:Date:From;
	b=bLToer3xnrlW74mR0oG3sD2QXKi2LEXZZBfJ3bq/TW+6PBvBsZS0AYC3IhBN1xlQD
	 phYbOpdTXp1dIdSRxogHpWaiheLUz92SLJN56VaqU8v1G4rsoDWA+eFAnSIhSueGu8
	 LWxfj8HHpQ+qXOILbk8nxZaVEWPnjU+dG0cMKGmcDJJ4xdIHsVU/1AFHYm0q1f1e6c
	 Y2thg3oZ2gmS7J1QcyNyuxqzej+CJkdzO0jVihaK3E2mKTctZs39e90FUIwbhiyQGL
	 5MyDzhFeTmjyfo+aGb7n9BvpG6zP8VlVwrcGESihaO1U9TPIWPjI+KOKLysirTxRA5
	 xnIv2gTa/nPmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F663C369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553199357.1691.16093546214561595710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e0243f3190018f088e2ce9acc7566e3f3b61bbcdcb0cc12ad4e6e518809b9f
Date: Thu, 24 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745531993
