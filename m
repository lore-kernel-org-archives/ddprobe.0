Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606F019E7ED
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744455594; cv=none; b=OZ+rjdPHPoodBv2qMcrwUJG5Y2cqgm7ifwIl+pQT/TRK0OoRAo3gu1wTwq4Z/1sYYKVbcTUs1w7d/fnbLq3oLhCoK6wj96GQv7qsZ+HdFqux+utz4oaL5eS9iywS5fiskLWyctQpgrGeG+mMOjYtu1ZER0jAxKDt4IjkhbyyW3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744455594; c=relaxed/simple;
	bh=qF7vcqxGfVLO/PeRoLxKaCDdVsQl4xWNX+qQrInQ87Q=;
	h=To:Subject:From:Message-Id:Date; b=pPKHNMRtdmSQHbRaendsMqsPB7SY9paXz49R+L+polLV3+8o/kz2dxJzYZ9sWxH9g7ZI9aSd5T3DnABsxoqkS4yL5xIYIs9ZHuVxmwk6kJZeTIFloU8d+9IGntQhQSAbtX4PmQ3SHjChyXbm8W5/O4GMlzLIoTHJFu8SPl4pz9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6K9O2I/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6K9O2I/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AF6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744455593;
	bh=qF7vcqxGfVLO/PeRoLxKaCDdVsQl4xWNX+qQrInQ87Q=;
	h=To:Subject:From:Date:From;
	b=D6K9O2I/xIshBW1qwvLFLaJNUEsj6gcUv8BxUEW4bPCJS8IAG1pd1SnV3b/iNHMSC
	 a6sSpk6BtUgzAhrtwvfmTlo3jXuT4P9kHbPtld7nU1ndyaQ27Pbhaq+kgSEmYpxAdH
	 FcUKL+BORpOkod52WxbOVmBzevE1vwKgRO67+xtGYKwUe5/Mdw7CTZif6A7CZwfyKX
	 jCiVxQdmKXA7NOVqxTmDkBQKFt2nY9l1maxgtj5gYd1kt3LlkvYW/g9fDdxtoUm1Os
	 sasDru6kJEsNit6s4F2f+/KLciE9iZMsoOL6QMt/PwqqeTZvj5tJc1Oy3y5iEO0A3u
	 rr24Xflqm/Rrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F509C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445559361.3700.11173229601144328018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37954a3d3fbe7abe522c5051c42b8944076d08d0ff8f94dddd775ac1cf41c889
Date: Sat, 12 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744455593
