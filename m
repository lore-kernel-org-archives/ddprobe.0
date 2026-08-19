Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A60144E647
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787138434; cv=none; b=gNMgpt8M+8r2LlYr+kTdFRNNG8tZuPO7Glqjzgt7JCVprSNKNjgZurBR4CueLzoyjV6rdBFXv6+O8nclQILqhDdF4aCbB3lYRzGJCDnvzaN78vob/b4TQgtdsjgGeyoafK7hUGss4PCvg6gPFtPOkmARGQz4QwXeYNP5I1GcK3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787138434; c=relaxed/simple;
	bh=iZHPPz3H2j8znBM2NSznnYlvmDeHoRkedoztGg2udM8=;
	h=To:Subject:From:Message-Id:Date; b=NoDiR+dAc/T2rHAXawWQgnAX6Bnlb56vaD9PYIzIc+077uOKSNDU774JrSg5r0OYCA349jNw3hiRsDUUldqkUTIBT72EWXL6r1Pv9chpIkFrex9E7VpuiweoLcguhLz6g1mdlvkyYjl9FCE3Cg9JoHRsf4XMO5TKoJuPsSBQkzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzY1eMqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzY1eMqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBF6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787138433;
	bh=iZHPPz3H2j8znBM2NSznnYlvmDeHoRkedoztGg2udM8=;
	h=To:Subject:From:Date:From;
	b=tzY1eMqsAlzVp5OZjUvmWKd0a9giuEcJrNWIA+6lgu1Jq8v2y443676mK8vSle6V4
	 QTFmkunC+oFlRY5EtGGQlrR+N7xjqkmv/lI+2LBnucFl7JNjeT5dlfojfEHClAV0ND
	 lodSUUiaIUoJ30eFQx5hWc4519INNeBy1G0/pkMDv6MuounXWkq0o3wc1EiuiBInr1
	 uzqd9v96D/WXEeKZ8jhkKR5DTYJTiv+evJOx0z66X8LmGnlWF24WPMjlw4wGEH1Xfv
	 VFmok/XgFTnJefRnaBmj68bctLgLgIp9MetbGArTw7C6VuklAd0W/4pYNX7m0HfQg9
	 SUHOUbuwNfaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D4DC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713843374.15457.1885382249460673750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c078412be5ef16b67604f15b8954917d062025d5305653b7ee1964e952c8dd
Date: Wed, 19 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787138433
