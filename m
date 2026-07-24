Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5308A188596
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784856634; cv=none; b=rqMgB0ys+0Ds2fepWerxb44ehh5aFdPpQ97ZDgjAwcNTdCi3I9SJHNmW/bPy8/cc9xU5tWND4PVDAUR36mRJ+UQbZizgPojxvWtWxGxBe1aU8Z3XUf5gwfE+SDgrQtA+R3dOy08EeW2PIB7q/VlmTtzkXV9EBHzcS7O1rlnKj94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784856634; c=relaxed/simple;
	bh=bBFVZq4QUJQd/FyVv7Cba8LDKbgUKTE8d9ScJXA9zLY=;
	h=To:Subject:From:Message-Id:Date; b=easKVlhULuJAAZFDmsxEdkCNX8vGFwSGOezqrzNV+4pKqgP/TJpiPiF5Md+82mtxewXIFWwUQ9GbDMXMiJvhl/Cj7tG6HZsqM7AWXQ9bacVLNloh6tirSgnr9M2Y9ZgTRiWVWz9a1SZ+HLBieMvVNnY9eG3yrb/kTjtbC1X9Erk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FftDYexm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FftDYexm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1446C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784856633;
	bh=bBFVZq4QUJQd/FyVv7Cba8LDKbgUKTE8d9ScJXA9zLY=;
	h=To:Subject:From:Date:From;
	b=FftDYexmB7OcssVG/I2GPb7Qk4Erv7wpPmkbGdSBsBvmwqicuygO5I+9BqQKLn7O5
	 pItHG/PxEDPrQRagz1DZknGvwrT9Zal52tfr+a867Y0IRhR17YEdynDi/LHM3h7oOP
	 4kouiWYCN+PJaPKq2PpheqLuFR0FRZ/xrIMo92bhb7RSzXXDBgJYIv4Dw1akfPx1Nh
	 zPJsGIhPiIgFI5t7s1UnVIWcXz/wp5m2t8NdNuJcwxLKWyeTrMRu4ec0zp4YMA22Ri
	 DxeFuxtamHe5t32E3FgHFwBq8BaPT2PANE36wRaeMTEb8Br1XYqYNLC4lzKWp15jeH
	 IZPIvhuVnH8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD432C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485663367.19580.7233981229842957152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5294cca67dab9fa09e5566cca4ea9d292e5cabfc9ad10adddbcdd5408b1d6b71
Date: Fri, 24 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784856633
