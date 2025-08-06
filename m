Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE413C01
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754445594; cv=none; b=az/B3zntnS2jZRWkGXaPaXsw1lZicNHM8DainjgRoihhiQfDxG7lYb8aE0erw4QV5kVmreVOef+Y46hrKaVK0HnUlKkgcdhC/Qm/oDA9jyP8heINJAuZ4hklncb4ehSMWOmu1iL4oeRwmMWisXa3Dq3AYPFtsnVrSNgUtT2XD5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754445594; c=relaxed/simple;
	bh=zQa9Tf5VpnkG/fSKr7us9b6Hpz8OGPnAfjJvcT3gIoI=;
	h=To:Subject:From:Message-Id:Date; b=jRmLujxqXdfkadW0S2qnKB1bxfKQqR8whriHBBwWFK8gUKxw6Q/NNGg5UBZYMy77ofdtOZX0+zJFo/JrnDeWWyF4y+VHR5q/zcc8EZIrhLYrnPgoI2Ag+IVUzukRmPyiZX6pNeaEorSghsg4LGgZ4belDuXPQBFF9MS7oCD3Jyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPxdtyAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPxdtyAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D53DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754445593;
	bh=zQa9Tf5VpnkG/fSKr7us9b6Hpz8OGPnAfjJvcT3gIoI=;
	h=To:Subject:From:Date:From;
	b=CPxdtyAFCHKl6I2LCQ53MtG9dVPvffHJbH0wANau5ORSkOtYOWSmszRq5hWamGXOP
	 us3jsoRU3aCMrWKdzDQMBat/DZaorAg+qcdIToM+4VQdEaXtWjaN0v9I9+zOpCb9Ul
	 kf3XOMr1PNQft5FsJvCGgncVzXGmPfPDExPtQfqRn1nSqrtyYA4NdShOW5u9Jr9UWS
	 WS+TUI6gna/QR3OcAJBwiU6WOH2vTXdJJMOK+PpIlQvdFTuv3FM2F6Nx4KxMNeb30P
	 /cNwb4uGodmfdsz4gFEPo+EtNzMBVGburgSDBJEczcPYxereN4ayIjbQ7jYsJdj5B2
	 vF+8A4nRd+Vbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E724C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444559357.8327.1400454291205153533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1f3143e4fbb8505db3f07334cc485bcc33c0dfbe4d641d9bf890f0434edc13
Date: Wed, 06 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754445593
