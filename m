Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3AA2D94BA
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767663234; cv=none; b=NJWC0xmxNkf8HArYFTmGmp4HLcfEEf8iFPdR9L916hzLFddIIPqBtb1CQeGXo/3qRMNcxcvvIj3J5T7d+xegfNtSsvne7rSdVgZ6OXCZx28nk6UTbraNGlE3B917Wuj5/0Xhf5REbYLFGfBvbIwH4lYxO/tpbRQxkcEGhUaCOcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767663234; c=relaxed/simple;
	bh=PrGe/yvvXNA4/QVVCqdKcJ7qnTigCjQdwz5aUKGB8YU=;
	h=To:Subject:From:Message-Id:Date; b=dsJ1fKYgceS8JH3vtFS8a3Dc4cLmwdBSfXRuSZQJQSE2sN0Fx3HIWfWUlET2f9MnPkTVyE+VP27oQF6z1VMBeboa/cp1xg+CO3jFEO+4pQigCDYiaaIjjWwA4DdG9aSwma4J/PC4C7Zmy88Qil4Z0W9Cziulb8ZJIuf+UAWA6S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqLnn/A/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqLnn/A/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C184C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767663233;
	bh=PrGe/yvvXNA4/QVVCqdKcJ7qnTigCjQdwz5aUKGB8YU=;
	h=To:Subject:From:Date:From;
	b=bqLnn/A/vDi/IoGbJ9UK+D9HYKI0qm9wKC6j1Szlm46Q2OXSbkNSbFHdtaUV3dT6d
	 orzfIzD/X9rsSgfNIDYgPH+aDl6hNXXZyfQ93UgZOpF3KPZiNx8x4nLRAciefAJB1y
	 jfMuMJk/FWL7M2DboD/Pvj5dTIO1Ld6o/BlCnBV22ZHqzNHLT2dBc5gb2NuJ26ZcC2
	 QOFBhykDKAzY75BFXFdlV4j+ft0k6GMy5JeHp7Hv7JplSIi4zDpEX3fTpAC0nzKtAe
	 5Rtzq+3QfUQHYUK+AA+GjiPDLGbOLjKAPR/xC2OWKcaXWbFhizxe7T8hSU0u6W9MDG
	 OYucdBu9w4wng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCFCD042B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766323357.11690.640701384162847677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33fdb1fc716e2fb702132d1ed5add49a286a11557f3077e7b8eb4bf4646482c
Date: Tue, 06 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767663233
