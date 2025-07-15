Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240501B4231
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752542994; cv=none; b=Ppfu4YyhpNu/0XrXKeqK3GC/OuxYR+mlyI8++Yzdw8fQparQlJSmGD5QGs4koeR+Bv0bJBWkwdx+GNzfwuAR7sMBgRQJymfs/nmBA54YxtaHI1YDnHu0f1SMDET41C8rMB1uLfRXss9XY9QsbcQBi4e8jRT8iGH1VSMsBqLa3rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752542994; c=relaxed/simple;
	bh=yN41Tn8Q+JIetJ/dBvlNNXQrYygGZclCT1fa56+f7to=;
	h=To:Subject:From:Message-Id:Date; b=gaHO9geM5QcJiG5gdIhnEcTp1qTSY8q61kxTjzKdPYKpIFjy1KqevKURe7ZmUlF64M8JiOZiAL1b7adrVTLMw2lJKnamGjk+FUpBIGRcJ7lfbiKi94UzPlgPYbqMRPn2VQZZ3IKAWr7dWKzkDyj6w3irid53ml3Uj4erZxLYZxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1kecPtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1kecPtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B077AC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752542993;
	bh=yN41Tn8Q+JIetJ/dBvlNNXQrYygGZclCT1fa56+f7to=;
	h=To:Subject:From:Date:From;
	b=c1kecPttedKPCo7sz/HtAWXvt7riXt4OEPptmXCKHS/smpMZtvzsb+/Ng7oAsQBbE
	 Fn4GYTI8KJwxlirBdvMbrwtSiY7LqDPbw8/G/bQgyG7Nljv7Lf0LlnK38ZLnzOgEJG
	 Y5ZMcOvHnT+x73tiZTes56jxNfDrni/Rh+cP3NREEBswVyGTqcVu3V7QxIafMwITCj
	 zyMktu6YF8BlXmaBVDbcNrQZSgtC16NoyF3GxCI5d9NJV0xdUygnODmBH7/qyg+913
	 djefO9exjvRjU5wADwnsaoFwJW1HDWkdWEmNoN4RhCnawt8cf+ikg9OJrstu6aVP49
	 KGrOg4Id0aprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0913C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254299363.3919.9938547292945774976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3946394510a21cee77e1f6cf3a5abaaf4312eeffd254caaf393737d5bb443114
Date: Tue, 15 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752542993
