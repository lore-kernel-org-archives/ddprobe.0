Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E6452F88
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766897634; cv=none; b=shn2VXhQMYOk9WpkLgwbQ80WnaTtn1bywa4X7ez0IH3+ClbIXq5DZbeSSRlX9XkyvHT9RnGTqBOVg4ooCfC8lAVVgQcHBymKUGceKxcucKBqHglaFopTKnu6ZeNVV5ms5ub/PKvm+5pVKrtAFGgDLVSX88wGM86OD1caJbh7itY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766897634; c=relaxed/simple;
	bh=Hr08DdX9nrTPnGXfomW93k/T3HWRJNf7gV5mJ7z4eBY=;
	h=To:Subject:From:Message-Id:Date; b=dI6T2TArplAxINRVoMbBfc13+u9bIiaH47tB+jP0YvH6yAiPRmOWlMD9SaXojMmet52VyrN4kHlrR7gqPg76ygFe5FDjcaNnxGycV/rUGut9c1VdARZgLBWUFCijfVFMFDY96CwZxiUhSvG8CJOUplXWPlXIJYbeVme4PM5HQh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKZ8i0HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKZ8i0HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC91C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766897633;
	bh=Hr08DdX9nrTPnGXfomW93k/T3HWRJNf7gV5mJ7z4eBY=;
	h=To:Subject:From:Date:From;
	b=MKZ8i0HE2KlIwy/7GacMsfCAbfaINb56NlpmNLYqEjrz1W74Qlw/bHcGVUt28pBmb
	 vm8pJIWRdzTDpXwy/TclzcCBT3fhZuSORUtVlw2bbnn8TMHpnQb6HTgwrgN7dT/DzE
	 1WTtBmOiErZB5w/EBVhLi0o1u09DnDMdKStbW0ezxZklidb5My3WOgfyo2mhCR/RYE
	 oB4MGUBZ6bEftMlrFz/P/uc6CgEDSgC3udLNKXZ0D26gwzpUH39NZZEyXr7doa2f0g
	 zkG4Oyftgbn0vfknQzf2n4i9YqcagOrh9xXg2McDVB8SLYD6P4vJSrHvbHQlCNsUoR
	 mzljxtWtN3Idw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95509D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689763358.27995.16261902259596344252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1422ece4a3a3adf824b536d60d533dd7c4d06185052bd116793d328dd48e29
Date: Sun, 28 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766897633
