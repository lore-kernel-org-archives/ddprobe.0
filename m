Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA74339874
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959034; cv=none; b=IFT/blSa7SCWEga7eKBEz+NmNeuYLdYNro1XtiYtss2b+ikKlZOaGF8+y5Vwhz4KmSsUC8GoW0FE3Wr1/IpJV2M25sdaQZ4kyYk61eZwhVcBvoES5lDf7uX4mtvQfuVwLHbFbte69WGgq8vrs+Qnbrs+7y4TglVcVhrv1C/H2MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959034; c=relaxed/simple;
	bh=Vzmstki61dTSttWUmpU9ITBVhlSViG6fCGxNE1B9408=;
	h=To:Subject:From:Message-Id:Date; b=BvphWot/YuPFugeTXGWU4VBmkWufTfHDyMr2XWLZ7j5OeQWY+/2FhhAPZsKFwcewfT3l6kpVm/3lY3yG12f1q4z11Ru1VwbaIgF7UKfXGZG9nWe1f2z+xWSNB0gl9RhE3TZ8fmTxDRbbuky6vgUTSMTqibPcj1MxYtnTOTAFjqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cF0jrrkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF0jrrkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB4EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767959033;
	bh=Vzmstki61dTSttWUmpU9ITBVhlSViG6fCGxNE1B9408=;
	h=To:Subject:From:Date:From;
	b=cF0jrrkNMVjqvaSeMVwHa0Ny8SjTJPvSrzVx1FA2osSKozdMYNLMNfa4AvJNsHdz7
	 S5feVlEDbeRTtZSXcdnGj8XYjWJwW7oEkDcBoBDI8O7NGcZuKuy5NloYz7ZMmsqvaR
	 6SdUS73bJ6O62R4dnweV3xRJ1Vf8FdWIxo0LRqvYnyfPKjvy5X6MI53Y74u4mWbrfj
	 A08ycw7oamEhDrdebVYCl8CL4WVebLLeuX3ychR+MQ0P6PufhQ0vDeRwUaCCzN9zIL
	 fGwFhui9jm8oFi3inwPZGPpB1Cf8+bNye2NQp1p2RDzXIppR1Ra0i6SX+ghb4EnomW
	 BMslkVRXQCo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7BD16819
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795903357.15527.17457027619292316325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62968ca95b5eea306d3de35488ca2d98c4d99e8d840d6b0c0e2b741776bb72d
Date: Fri, 09 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767959033
