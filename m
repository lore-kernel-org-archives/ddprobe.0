Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42DB225A3D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764941575; cv=none; b=sp3CQi8x2yc2T8w25F6ivmKtvo6G6XZy1U5mJpqGMhl31h4et3gDmUYLjh9nck4SL+J+SdnGmKeljvqmRni1HkvCfwE3dlFfcCY8d5VQNp4Rr2kKTdyFYo7i/ozNcT2xtRMPqMpwcRQh03/HhtMWVV8N3wFKSBzRA/MrtJ+MDa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764941575; c=relaxed/simple;
	bh=BNP5TTxCDWNZMdby+Ta8g3aeyYKgFVdtv7+BWvXYccA=;
	h=To:Subject:From:Message-Id:Date; b=DU4ETeFMgyf2FMr1eHXJc0kr6yLgFM9yBrSnshc5RBn4KTZKk3CZzYVQ7+nFytjscaxfhdec2127merxgmMDHeFT4SV0goB0t1NbeUafoyXtNbBF6TAJAd5AyMxZPy4Yy36zJgw5fkzh/w62dETpMKePv6lze/KQ3JtoANZXqS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtVvoP+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtVvoP+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA1AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764941573;
	bh=BNP5TTxCDWNZMdby+Ta8g3aeyYKgFVdtv7+BWvXYccA=;
	h=To:Subject:From:Date:From;
	b=FtVvoP+OegMnVVWU1c57ia9Q8L/b4s2uh8x5U9Q2CEkk0b2b3EUzXdw72lcYWLMT9
	 8GvM4AT/wJZFs+z14nG7TlagToxXQ+QmDjWUwCN16TdgGa+mUZ3d6uMJmHInavE5v1
	 7SiXwcimFEx9TmZnqTCEtGKowTGkEY+I6c2Pw5Ktm8b+VJLjgRXSCLhfOlYQPv19Qd
	 5Xa7MisXcF64ooy4Xrwm5R9cu8NXN8qkz2fOwMBAGcT2zUiWa04EhCAfOmDWaxO9gA
	 gQENR6JtkWXTTGZmWkgfBFAsVmb1/nlufZ1SPE6vKVBJyXzR8tXMYzm1Jp9dFr6IYg
	 nHZFOPvtknWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E0DD2F7F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494157360.13260.16773451594295438057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690b74fa3a58710b3d339d4dd4595f3a500137b008fc4eb4515e6ec49eb8e107
Date: Fri, 05 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764941573
