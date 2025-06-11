Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDC6246781
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749678594; cv=none; b=BTAKfZn70nX6oiRCaDvner3sqYTJWaqrAvuLj/2yjXoLAV3MTedXjwwKbX54ZnejsERJYPb9wVE/yc7JrR9piO8S73PwAAwGmwbRgUbaHAOdhYkTO9fonzbHv1VKUulL+xdJuwTIuf0rwWusy2xljvEPIMbeV4OMpuTrb0ZHcSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749678594; c=relaxed/simple;
	bh=n6dfwbvPjJhiK5RrHIt5kzuULQ3zrGh/8Tlh7PIoU1E=;
	h=To:Subject:From:Message-Id:Date; b=ItmpDUFEmCuTlk5z6IW5Fm9i056iE060zwGHSSS3mED49str+8z3qHGuAOAmhgWgqjCNg6+w2pW+oVPyPYvv+cYCnd2P04iqZRxzOt7wR2Pq3LSKeeFSZcCvknh7r6CBNndKT5LvZdhL7hU1qHnJNxsTDNBBzAvaE/mz3MYSU7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRpA+nLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRpA+nLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A80C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749678593;
	bh=n6dfwbvPjJhiK5RrHIt5kzuULQ3zrGh/8Tlh7PIoU1E=;
	h=To:Subject:From:Date:From;
	b=vRpA+nLdjk77E7L7TabsaHQ9Cq+LkyVSjeNlj7v4ukbbJmmGFA87cVzrjokl/4oNA
	 YmDtOp4wPMprtN5pjYCvOognc0kHJzuVzJpbwZG8Iji5/Jue4cZQ8cZkO4bxcCKMVm
	 wUxKrk7+mlJtJO3+xxKxePdt9sBMAWgfzQvQDUIl/kiSA+qRX7wEZdIfBWHfkSOqgn
	 8wIHFfUjVL2jhd6eGVabpfpVGEnGp1W43VbINqKLJdCcyLocAGyZjGPpjIL0RfwKyZ
	 8Bhy+By02yHxeFVlBohZKoqH9TDPhj9aMCD8PhIwnhc3uCAEPGGTnZyfc2SWsnV7C7
	 eghmCGzrFyHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915FCC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967859358.32353.17556369996229536925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8bf8ae48abd2342a795fbf104693b3ff9676fea722243323ba32fa94d83ff3
Date: Wed, 11 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749678593
