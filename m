Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4A714F98
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754766594; cv=none; b=p95jXz7xmmK2yynfSvz/S1g8iHCeyugaaDixE7UOLvChvgRqiAAXYnmWe7v2/edBdfphCq2ieSKZhUhjk79p5FS6qnMfRQT+lPL1R3GNXHcH3eQVojBS/aeLx5IKsMrnPMLO9h6Kp23Q+fM38VRehZgM6JG8EZcUtJ2G72IuHA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754766594; c=relaxed/simple;
	bh=IhAWePATtmlWoXLyu1RqgA1v0JeYkSJoA2Lhw3AkcyU=;
	h=To:Subject:From:Message-Id:Date; b=S+S1DeCX5eBcJ89SJhT0bcxwgBYrRPjuHVzfffEV0hyEauSQkUeuONlSXJZn4Cc2B12z6lCmRy//Sd1GZYgLfITD+ee/lQmsh8aevVU7oxE3sBBBTEElEVK5aFpF/HDGC9x2mF2cuk7+Hk1XDLk3MCIAPgCfg2XI8RFQC4gVLbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTZkYDnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTZkYDnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754766593;
	bh=IhAWePATtmlWoXLyu1RqgA1v0JeYkSJoA2Lhw3AkcyU=;
	h=To:Subject:From:Date:From;
	b=kTZkYDnQ5wwH0gXK4Z3JfAqkacHPrdHP1kpE/ZL3a6Xf3u0wHB1+pqYAuZbD//b35
	 rHsbvfALEAukyAYOHtXeDTD01BCS/6YEXn0eqKmmS36IybWEDRIyhNPqgfdMdGQ1lH
	 qIZWS3lCbsvK8BRkDdFGbgYMsZLyHlfWi1zsgsqqmrHTsyBul8lFsjtmfVqJZeMWTb
	 4ir9D8NNXYNvNFIqQpo+nL4a0Jz25w3AR0l8s+PKq2GClBszqV8p0EpbWX7sZQ19IX
	 tog34s+Q5RsH3KwoobLdJjtPfuSqWqaXMRakzQqFCeaOk48LfAdHdTgT/B9OuZB/qF
	 z3Ws47SJLEtPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94426C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476659357.13804.2250498726188081342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c4d0a352177934fab87778e077adcd2f739b8cdc3f9e67bd0aabb14182ea8d
Date: Sat, 09 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754766593
