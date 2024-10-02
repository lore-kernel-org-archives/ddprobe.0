Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7FB374CB
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727850954; cv=none; b=d8i4ginuXAlmLrHb7wY4fsnZ6T77Cc3cPmZWEfnJVt7dD8FitG7FZTGb9A0u7R/Gt9krriV9zuBgSVYGwMpSCFcpnr55mqHV6IGI+ZV9Ljxu1z9modurSNUoJhNmfZ2Y/akyitXg8/npcMVO7hX479EYwjeYcX/8qG7pJwLPt+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727850954; c=relaxed/simple;
	bh=qFtim4V1Xs85RihBY6wshzP4qeO/FYJxN12F5VLsQXM=;
	h=To:Subject:From:Message-Id:Date; b=UkUalqEFp4PxMD0SDPGrcCglVxMpxII8Pwyqlx8hdqd1jqgj+uEDoUOv5Jn+OypYTLFDMv95eEyEV6znc0E2uZnqE6pFEFHuyAX80OOOzoeYhWRji62969bDVCafEPOSdHaOsTrnaGZIgumrhWLZsDvED96BA97t14V9Wd5PLaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqVWds8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqVWds8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678EC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727850953;
	bh=qFtim4V1Xs85RihBY6wshzP4qeO/FYJxN12F5VLsQXM=;
	h=To:Subject:From:Date:From;
	b=JqVWds8cTmpt9z3IGa+8My5aY5qiVr4Hor6AIhG6T0Vzg2QSAkT7vyE3AY4r7acs0
	 b67Ojb78uHwzPMLwgWgoxArjcSzGShYBekDESp9qV44P08VtOJDanSocLIypx0Gyac
	 UY+4v5yRR+jb9fJ9HJ9gt8RWtiobFurEO/1HKMMSzxm2sMTELbwNYU8Y4A5VWP5hkn
	 /NNyJWEY9H91Vo3TQKXy93B/iJuY2SMmZ8YOEiMmOMzFzie0NkIB+kdufL7kXpB1tl
	 aQbTXB4qxqYR6lhqTwXAhah8lxFuglPRVlyzGo7spOfHz29w3/k/WgjfyGKOSHlO8O
	 gU3gRQSXYJvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D50CF3198
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785095360.26239.2304795703559048158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5117f2aefc81a684cdd545cac9d049594670e205f3eb5a586668b18f823fcf
Date: Wed, 02 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727850953
