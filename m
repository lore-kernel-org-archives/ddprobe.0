Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295D8288C00
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748442594; cv=none; b=LuCivqgQZWRk9uRwLVcIkfO4WSxRT5m47G8W1Xka3YtJpfRwLdBo37/XY7nkyxN+8SODGAT/l5v6LyocCHBpHjEyRRQUX9GJApirSqZZkHmz3n4O/YfNDZuEac5263UtR5wj1xFOUKb4ToiaLVtVS6DcnBeEZzNEgsVg62wiTLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748442594; c=relaxed/simple;
	bh=pOyj/UrBSiGyrKML3jQd73HyH14F8fo26VHX93hzXBw=;
	h=To:Subject:From:Message-Id:Date; b=Nb5UkfZqRDsV/29cKej8Z0HmmzHz+n4gmcCVAAdFK+2IGlzsyr6e1CZ8yGcTa6v5u/iympOhe4Xtdon8Ak1uubz9WEQZKM3sxQn8YqYeKCwuk4f4VtRjvigcGKd2DpS7Qe/qPbGE7uNpOILqxjX4EPCFvti3+ZtzsPBrJVzXNtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7CLOFMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7CLOFMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3545C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748442593;
	bh=pOyj/UrBSiGyrKML3jQd73HyH14F8fo26VHX93hzXBw=;
	h=To:Subject:From:Date:From;
	b=R7CLOFMF6//6oLCZCVcwHLH7PcMJZq2fC3UnZSw5D/wVrB67FjJhz46atYLIPnvTO
	 0QVeXkSI3x6Xucbu8y97zDpZctXrLSDATCWio874tfN1agS9v0dleP/Y+QwPebY07X
	 fdgggLX6pjMiEpc9RMS0RLbhpgox4BGjN0es2dTMx/tjVustKz6K2a1ddAMLL4R32H
	 Q3dM/YDwzBl//3e61W8rcKSl5JFUXatM3SWF8kYhhEUD4a9pGHw2dUvokxT0A/Mnzu
	 Bv3mpbDdthtXMjjoUrQTb7daq5dm8R9ATzRQ8FMcfPOWtBwG5Xf94jkJteBfpRFeww
	 z1Eg7k+oTm1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93660C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844259359.6096.16856287444576423771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab7b16fff01ace22e0a4ca2ccbf11b43799febce17aa9dfbdf9cfca2f3a26b5
Date: Wed, 28 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748442593
