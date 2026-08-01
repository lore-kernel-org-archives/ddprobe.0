Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493482D2381
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785600034; cv=none; b=onlkbyZ0dvX59TZJrsV4JH9WvLrp7kMGcvuQFK2ibpQUZ3ghPqV/sVMyb/FJmULHEW/p1MuHo8qcemZxYxWMu1SiVdulrhrfquZRQM4IL4EygEOf6GxDYVoTNe73611gYBmtaZVEAmRWlubLmOO+/836hdT06GTDgGpOuNV5bqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785600034; c=relaxed/simple;
	bh=i21D0qds+eAG8ilvmpGcMhl02YVooXCRFDNmxgl7hBQ=;
	h=To:Subject:From:Message-Id:Date; b=l1ktfMJB+mybTxpkI5wsnTAlwUryEqdE+OTyGSAXtLUyh2y0Qhoga/uFpp38Ler4YiAUyDin4qBwydjbuHgTJ4YsTk0fjHFSnQQX8n84adaM87zSCeCuRCOKcSGMUewxjrf+d0nEg0sc5bTxceoMZslRxjci7W3Q3/pXcpgJWsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHM1oK5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHM1oK5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD565C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785600033;
	bh=i21D0qds+eAG8ilvmpGcMhl02YVooXCRFDNmxgl7hBQ=;
	h=To:Subject:From:Date:From;
	b=lHM1oK5CgX1c4PF85sTFCYUeW7VDWlGy+bRz/b8MYy7uWqCwUr3eI0fJ3PqlgMZPJ
	 B1txJbkEw6x9HjYsNcTJEGwToOalyuMQckgo1W7BEUSmeoO/bxsQFYSBnpX+KVEJ3b
	 gJUiCXUlSAdNwX0C8uoS5ubef82hv/iK8WysHG1AfOdrV5JlKcbE6fAwhG6tuyf5a4
	 MTpUJPfpG3fAaNFVFRO15AXVw8rLbLM6j7cbzyHo3WAbXCl+2o/JFt9NUTvuJp7Xjq
	 gixRTnnDZs6OYIAY1Z9Bl44kqFRVp8z5fxqlvc5oVjKobfXZbWuK0Lyu8vFQJJjbdh
	 8bDf9oH+uWJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA4DC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560003368.30786.14394952739196752894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7374e198f842d94244b622c6daca5f365eb1d629a07bd53e6650f480a03324ef
Date: Sat, 01 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785600033
