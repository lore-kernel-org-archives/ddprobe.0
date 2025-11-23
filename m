Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722F219A71
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763925714; cv=none; b=fclue0USWt2PRd3rC2BrOhf7i92iOM53d3ltY9MxYaRSFY4dOqLq1XN769mgcopC3hnBP4Nu0t4M/j613kjQGKkCrTY1nnNXvqJPFwi1Hc4n7WG9Q6quEvD3nlzCoAC0dsEvhdZtsLuUi9rFdJ+dR6p3hfi9WBUs8mYCsR9bwYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763925714; c=relaxed/simple;
	bh=WaIK7PGmaIOmkU+/LQWhsgPwmqBDTZmNC0YVZjmBm08=;
	h=To:Subject:From:Message-Id:Date; b=OizVLhhL1tSe2O7PAthWvM15qaMDjWkg+O5OLaOKta14xOyM3XiHHTQgqa46TdCR870Cu8JPJxdTO/OJf9v7kufwIDbHE+bMBLs5b2dhn2xNCmseE3jzhh5dP+voKYKdZdUlyw0HgEkLfE4zTZqenqbkculiIiYw9a3c8wrVfr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUYoqOAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUYoqOAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B077DC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763925713;
	bh=WaIK7PGmaIOmkU+/LQWhsgPwmqBDTZmNC0YVZjmBm08=;
	h=To:Subject:From:Date:From;
	b=TUYoqOAjq2M6Pg0FGrQUeDRjUS7cmeqN4x7d9f5V0hCN0Ylyy0lEnx0heBpRRnLi9
	 2mmbj1n4XQNpgufzTno0WOEWyayiQDuBF7qA4D6pqc1u5ta212+Eh6do901GX3N9F/
	 TPts68Bs58JTxUkGJbL5mpaNngYGLvR+L+0lGKQB7U6vnhNP4uvzNLXWfk+5JwG7+Q
	 G4dnNKiPCnTLpOz3ij0HONUw/tTt4x0xctAMgFcEvSdNXKurrFmsLiJJUPJBMvLGv1
	 3x1B0Cudd60/TxHMY2ijWO/fFnazMvizYXLU2jPL8V2ElMLs6aWsvfaQ0/JWSPvO4T
	 7UkiMj/IsGVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A690CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392571359.17854.10289824031604559843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b35d0de0a9ee758503783900cedddd756df58d1408aa6b47a144dade5f0c66e
Date: Sun, 23 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763925713
