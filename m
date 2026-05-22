Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FD93E8660
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779450155; cv=none; b=DPgYeNdCcPvrIwZzcu55JkPLNk3ZexFbvrwjo8As5CYKNKJLSkyXasa1t3feXzAWpbzjVmjIKH9Bf8PduBW753z5jqTbaP6m3YBwgNwQcrxz4UGism5w+k2XENhtGaMmfUIc5FzAC2nYrl45vuVTOZahQDpqDe25rc0kHyLxHWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779450155; c=relaxed/simple;
	bh=K1xAMDZb0fjQarQaMHJXSJwORWqGhfBsaUak4YEG2DY=;
	h=To:Subject:From:Message-Id:Date; b=EO1TP7tGzh4c2qni6NfSIrA1ZS2ZRtaDqUYBgxxfV7xLpfnSHiV9igzYg+O8EvCDqfiv868awiVCKp49pZldRypL/Kh0AmNVTommO7GHEO5iPLwLv92rb6ddVaWGflIpU7HuN7GECxITLGgLTm0ACuDZlUgePsKoqB6sYb26ESA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7RaUs9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7RaUs9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FA2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779450153;
	bh=K1xAMDZb0fjQarQaMHJXSJwORWqGhfBsaUak4YEG2DY=;
	h=To:Subject:From:Date:From;
	b=F7RaUs9c5DPwyBdKZDwA1sfz8PrCzDKfPl8+k7XNwDi1FXMcZQ5Z1uqbrWSY2FH0J
	 O2NpTlE9EJ8492VCY8LjeWXNONMh0gsTi+ZBULn1wxuiJl1nXiHx4AWmqVX4bztpXA
	 2SXcXW2ZRYkGM3g7Ai+WpVHF+KNOF8V7VjWMATAUZP6wZGFoDJamGOXbdnIgYbnVW4
	 7kOMPIB4u6ZpUry7nWxjQfilnzl65kC7HGlurzZzdZMMq0jz95Z3JiHuoWU1i1jeRZ
	 2cYTiB+F5UTEVWdRW3h9cJWQJtlgl2kWjIGxuGLmS2negiWAGLeLyysp10rLA+x+SL
	 n3zb+rJgnmweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9116CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945015368.9304.2327894425364433676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e4af54246d2fa59c42dd182eddc3def569646b820af4e10eae9173dd54cd46
Date: Fri, 22 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779450153
