Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6461E89C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758331794; cv=none; b=eynRupfGcDcvdJT0r3AGD0SFT9MfaY64BLGzbecc/HQ0P2sVGwYiiwpeCDplA4cUs/4j0LbOBArNtUkK/6fUXHjr9hsigB9r6qG/QhK6Nc3412s/xZBunBHT4hd89vQm6uTQLRSARQ1yVhcA4WeEpNtJb+taCCm+8X5Vvy8yjGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758331794; c=relaxed/simple;
	bh=WRUVCjWpyhOxPZLUfoM26KdG73BOCET/m7v8aw+9UpA=;
	h=To:Subject:From:Message-Id:Date; b=raQRbKwNzzb5l4PyncwHrOMOF+4ZtfFAPrYf3hZXnhwnBA00jFaW89WNNBwdoVGW0nMYpZb6Dj/R5APs94Xx8O+R9THZW/qG5PqSh30Suq+NuKOWYSW6WxamVVpt+KBu+hMMY8uzuN3Vsh2utlE6Vn7vLdH46L1oA5TD33L0EwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iprCJ9Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iprCJ9Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1948C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758331793;
	bh=WRUVCjWpyhOxPZLUfoM26KdG73BOCET/m7v8aw+9UpA=;
	h=To:Subject:From:Date:From;
	b=iprCJ9GhuEm8BlaPhuUMTScTtlSeaelkMkd4HCVin8GQ0bdfhoyWnwPX9JinTipNK
	 1mhI/BkR1wGfpPJeOGKMl+z6/bRGrbOxI2Dp/HI/Vj4Q8gO0oneNE2oENmqE71q7Xk
	 qVB1FD5T6CkfgEhCLLr7M6Xs3s1Qk83wYh86VZfP/AHRL9SILAXqOOS2iC/XyWCYFn
	 ypIOwKMe+qOnWaKezziWd/gKiOetfwd0c1IV/iuphmHOEtB92KOXx4IjDYVoXI4n6e
	 D1yyLRT31U51DXwJv8xS66jFPlVYxCYggd2bRrwBI6j8APsaPheGrjU8GGbFvdrBsn
	 pWyXQT1w4zEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91087CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833179358.18560.5707155069868368230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf4f41758fa46b783890ed8ec1925952fc91ecc642d9d3e6ae50633c1c920de
Date: Sat, 20 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758331793
