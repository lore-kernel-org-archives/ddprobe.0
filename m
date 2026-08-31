Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726DC39792C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788209434; cv=none; b=H0SsHlNTIvvQhQjP4tJw2f46RKLxL1214IDJ5wtwxMOQ4is3k921qiJsdtYQt8mUjcJFWpqj4wukrQGfLh4btZHVtEFYKH53yA8TTTcFynrGrEcMy0S8L+NxZlqQ59Y/O5TWqHcLrvPDPek19IRul2RYmFoaVbCHIkLm4qoHAyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788209434; c=relaxed/simple;
	bh=nuQnVOB1mhYv+WNAAIAj5EvUCnNRB7a3nZBz320Uu1Q=;
	h=To:Subject:From:Message-Id:Date; b=UWcsyhTZjXhr6TXBpujrvCny5vGR+ITAq+jwUsDqrkX7tYnJ3vOeL/eyneESaPz5quviSs7Rd8E4UmG0uaIjE7D1yjwrg5+SdZ5FzsC2h6fOMXZKCkoBMqV3fivH4VI4KrsQPCdzUiC4RxlKEyCeU4zIKA5k0Zp+CWh+NaTAVuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXzbZwRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXzbZwRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC45FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788209433;
	bh=nuQnVOB1mhYv+WNAAIAj5EvUCnNRB7a3nZBz320Uu1Q=;
	h=To:Subject:From:Date:From;
	b=qXzbZwRRBMMMhOOs2PbxtFHK2vfSwNAEluPuOaX892ak7M+gJ2xt332aXbDFS/YqJ
	 aPveWqnXQmaLadLmrFJvM6OMMFslHX69RzxAMvjWxhB1+xbOjjl6BE0phXDP+BF9d4
	 hmAJuf3x6yQlG9w1M/HHN8bCYtJ6HzxNDhVI0n71ppd3BM+enn/vXGWtgNeyRg+gql
	 32scfApjgrYLodtEX6C4FXFXOBBJ0y1VSHV+cru5trp3FHRm1xCE6UXsEjh8Ci/0LB
	 q9Y/x/0B9v2GBwhF5bYoU1RITBCExKqYS/AHJL68RHC6GkeBfdDDTMc+KB0lkaSosg
	 jBjqOVVHZUuPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA6CC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820943369.10656.2522793296452132913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f7a7465212d7f1334b057e1ba98b9590ca4db2c8aeda2aa6e7e062ff8ba229
Date: Mon, 31 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788209433
