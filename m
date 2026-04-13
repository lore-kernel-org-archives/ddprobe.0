Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2922B2E2840
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776055054; cv=none; b=VS0Tvr/ze7pFpkCmkc72+hCyPdTanOO9VlBzRYfcALiwfNrHuFFWYvCfeB7DDOFXetavdPKlFXF/9zAOFf7UfOXq+cPyDAeBQLYyAgoa32JzV3HB3h6tcWPUV4PY2MZtbR+oYJD3/rg+3RYmpbQLlfLaFw+cAuQ7fux3EXPoIHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776055054; c=relaxed/simple;
	bh=RvjLCWoDzcEdLuufWZKi900cfgmaKHnIPWcqKzQSTMM=;
	h=To:Subject:From:Message-Id:Date; b=nXpxaXMpP48/Ygtwuyj/gDZqGMdDzxnb3a+xfedLD5A9wEOtKmj1FMTXh0ntbdXEPwQnln4egAyeycdNeQUMZbvXMsB1AYiEpf0gOQrdqwwSdqsjKeFoW46m4WHFkF+q1H01nt4lASylNbi+pthQYUzI9Djd7x5TXtYGQyb3NoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIpuxQms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIpuxQms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9ADC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776055053;
	bh=RvjLCWoDzcEdLuufWZKi900cfgmaKHnIPWcqKzQSTMM=;
	h=To:Subject:From:Date:From;
	b=UIpuxQms7qhDq9/yM1NCiQsLGeni4wcodq9ZfJZL0MXfUz+ZzLdZDFNcNcTtRCST9
	 MaqujwHcmbn2PG6ZTEz3IV+5/KZ9nsz6oyipiwUqcb97P9Itv+KXbgOf9bd74A9Qj8
	 8wHUsQE54609hEPIzMiLpiYZc2EsCEgGhocyav+qcjzltoFpvYNLaZh9aqcqX66Whw
	 pGGaCsKL66S6nexDk780n53BtdJrRffhGFDAH3ZI2Ai0d7gcBCUujg6UJYufrQjJLn
	 K7Aid3i9KXA/+our4WLV0G7CpIawTf8KyBzXYxmhDCF4sUErGYn9N5IUbeAUaa9N63
	 uzjlfDaVJQFSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA273E93814
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605505368.27440.6862378368545217442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526867addf1f2b4d8fd4926abd0e1582c61d1b20fcc97580cf2d9bb383f9decb
Date: Mon, 13 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776055053
