Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BC428DD0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748198394; cv=none; b=m1Mm8KNgK6RNmuF2NC4DFnGhIe/RELslusI6fCMC3FpPkT0SCSOgom7lVNbKotfdEakIWEPYKvAGKMhEmkoWLGWNXWyYWmyYCPKVXEFozDTv/DgIfT/hSKzeWNB520tU6wo5Jlxwrk116lxhrYPhQW4yxsRxgK1LrvpOy8gefpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748198394; c=relaxed/simple;
	bh=bvWgyIAOW/NFYfa9xolRXkpBv2Ln0VmpZry51rc6quo=;
	h=To:Subject:From:Message-Id:Date; b=STEbpkm6he+LjfDdF3rsEEbupJ8sF/CCzClbBa6EG0oUeJwYb0U0p7g6v9dTxwOpWm3r4ARWv8PXxFzLIut9j3gEkHUuSsTxSWxptX9u9rCTXLxZkEE8i1WBPzNDPzOfYEVNrO6t2MpEQyp8g5ffvQ4u3wKzWsyre4poYLDsrN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXq7BRvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXq7BRvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC547C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748198393;
	bh=bvWgyIAOW/NFYfa9xolRXkpBv2Ln0VmpZry51rc6quo=;
	h=To:Subject:From:Date:From;
	b=EXq7BRvY9XfPAYFiYCBTqArTYcsfY6ZIgCUzlnz21kGrSveaOzgb26Zo+Sph3BMSd
	 +UhsrLI2NQmVYMcF7PATRLSWQklR2wYThsFEsV/uZqxfN3c2mzVaN1PY2OEt5ubpdr
	 hUVyTWYC7M/zC0QT4dNyTaw2Xpjl38yJkBVdfVLnw6uO4bjCO9HX3WjpqkUebTkxOW
	 t3mKqrd3W4jqoWYjUGWKpYT2rsldCdmWZZ2TrgdCYMQXih4F74jizTtIdK8wxJsnMd
	 hcrBiIjj8GVDmEOM3Xu+RkRrwSTEckZ+AiZxX1Jo+5+BN1Hv8cfLXoS8EbOilvHTMh
	 7c//rsdx9lK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DACC54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819839357.15009.1343266780220334644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d975c43ada9c4e291eb477fde02c5a8a7f32d35547afecbfca6d0c8865219dba
Date: Sun, 25 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748198393
