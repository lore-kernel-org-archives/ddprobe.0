Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C08625
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713688824; cv=none; b=bbGtdrhCxqhIW5I1+DmlDO1/zwnjvHvDM9WtF2B3X5yTlk0jM1rBecnAXcqRZVSgqH6ex2XQP9IAwBIUJzwn+vxhMcKEv/UfDS6I4+/zIt5WXBVUXCYxzfBUn6LKXOT46AhDMLTrLNdV2fngrpboeH//RIPIhpGf8tEkSFkuoMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713688824; c=relaxed/simple;
	bh=amqEidWT6iZ3lzKdIitCGqPWCN/tANw2HDsdlYs6+qk=;
	h=To:Subject:From:Message-Id:Date; b=ZW+L5NabQwrh44mKxyWMW57ywGxU8/YFfuaTXkQVpsg0hwVlGwYCJ45ZUtSxcsbnFbg+rYWERCvpExbT1kHinSFg35U2C6LAXylKW0IkLrUXuqB0vzAkyySZOIrSlsqxiXdjIllRWXFhp19BJgeZNamFkzt7yGndBTHrnnqPYlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuQQhiob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuQQhiob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99CAC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713688822;
	bh=amqEidWT6iZ3lzKdIitCGqPWCN/tANw2HDsdlYs6+qk=;
	h=To:Subject:From:Date:From;
	b=CuQQhiob/u+xOK//D7sNYMz+93HF0VD6qtBHsEyT9ZXrv6Gc/iRUG8ssCmab7tmn7
	 bXxeLgSwes+HHBKSj14+EFNBW4BE7mtFLqAZjKfsPIjIY7EPGZw8pHYQ/F2nL3Eq0l
	 dQf2BiLcLn+38txBWBpmGT1zGFdgdlA7i0U4Iyi41Csgy+ZXWvxwASYrVGWrdYl8RA
	 QfwIsVM67+NPjoz7E9BE6HOW8PIxN6XKqYV3+3R03yS84KSbJRTueKPIIdtsRKosFA
	 nfaL5SfgbJE1fz2i3gKG3VAUkJCFh+QLGrxlphQBzPgbC3nJuTeIc0zaD/arm6K09C
	 OEADo6RvHiH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7ECC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368882283.3703.5723838127079294177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf57bb4ea7d84002a8f48f5ca209d7726ca5d7d314ca347cb118c1be8a3caa7
Date: Sun, 21 Apr 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713688822
