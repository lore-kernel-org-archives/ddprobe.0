Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C614DDB3
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714375343; cv=none; b=ooRGDQiV2QEQkdRRGoIPEkG2Mt9jrOpp2j9hauuzM6IUhoAkqWS8NQXWRiuF1buFI/AmFutGK7JWV30YKC3S2VdftMAve/ktWb4DhLNJK7MXO0r6F5X+CTvxJqHIybeMz3u1t4weZg53ACgoKM6f80cgxzvnWRzRosiDOSEPGWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714375343; c=relaxed/simple;
	bh=GieoGPxIYg9JTD8Wu1D4ldmgWwPvDMuR++gNPw2q9ig=;
	h=To:Subject:From:Message-Id:Date; b=tCR5tUjLWGeXlIFbqtSUFeV3bbhGYeM9L7/TISZ2MDuiJlUacKMRtzpU2dIWHyb4d6la5QIzI3GlsQibHiiK9WXTfLkUTNel7gpANBiyg2o6ORuHlE353HfWzuczgzZ8YQP9FfYBsCVkQQrxff/ld0IBCaSj76oap0+8d+KntQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKhUMU0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKhUMU0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBFFC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714375342;
	bh=GieoGPxIYg9JTD8Wu1D4ldmgWwPvDMuR++gNPw2q9ig=;
	h=To:Subject:From:Date:From;
	b=PKhUMU0pXyWmlz/9y+DPnMNeIJhqUr60KSesTdSNeEI7plvbQBXpIS3gi5iFLflnk
	 XYK3/4O2MDHBDUZux5snv31RzhLko1XqvEO2EKKjLCLRxYySsgyNTSkMip6IhEL0Py
	 bgxzA+B/qOl4ziMI9SLouNbhJ+UVzTH6LrBSnV6ERccJDC2YNUpYrJJtzAUXokFl5X
	 lzQRXNF6RGegzM+Fpf8CzhpicJydiRmiz9S+chDi3czDsdAFhcweipVeezCLLAqHIe
	 C4vAE3ftONUzEH4r8uuaWyA5mwPXWN+wWCmLatx0WsOtXGOmGyDt2/ZwkGdkmQCFy8
	 GAWNNkFbLQB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE92FC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437534277.17756.18324373839666632968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef86edc8f13508b951bfba956036f4dc6fd3c2a1ea77a9a83635df299c0918c6
Date: Mon, 29 Apr 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714375342
