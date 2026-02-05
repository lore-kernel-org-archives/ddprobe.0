Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059A22FC893
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770328434; cv=none; b=pkRFOfEr8elhN7vwMUGXS8d3fgpsdxejjQIjlswZ6wNaJYxTWhgulrNBXOsu93c86uvSelozS8CzitK0/n0P0GnekumuKGdR812gy2y7OOwmGYdSUbUBuoZp6AWsVdI/bnQU3Wlcq39Ek2eddTTuf2YSlsZyEWxYEqmc20zWi8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770328434; c=relaxed/simple;
	bh=zJu3mfUeeZz8BOtiG7vMI6RXqUWNTWA6F0749wcZDzA=;
	h=To:Subject:From:Message-Id:Date; b=KvNQkTnQSA3Z/z3ks651ckdMF1NWQHID71SlI2oKepo0K0gMDMgXskkjtFUv6zhmimZD/OcnYq8JjaNx1njnf98si7UnuexFlFmHcFkUPOMBZkYFgG8YqmDaW5B7wvxKY+keRtEY3lb0HT4A+2wW9FrlvOzeoRTcL9TPFFlp8sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odpZr8po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odpZr8po"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4E6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770328433;
	bh=zJu3mfUeeZz8BOtiG7vMI6RXqUWNTWA6F0749wcZDzA=;
	h=To:Subject:From:Date:From;
	b=odpZr8poxeK6FbC3S3QUAQmszVvYZ+2/fazoSvsw8aftlEBekD8sUVkUD+dvOej47
	 Q+CO3aSP14EcXdFCJr5iQ8gmWiIRTZR+mfIH3zvaXFswMEABzElzz556p5sOKx7jMg
	 K/oBM5xy4QrEDE6qUM5WawsdC+EG1MolbHxgpV535cNcnX9VVXRbs+27Mj2CBk6RPX
	 tA536xT6fkdzsymR20um2f4vrA0T69lUKgTeS6S64kLtS1Ye2PmYk20xX5Ygi58z/D
	 hQvwXJrikdAK14iDHgQ+3Yj8MI/yQTkOyze6NM3ISSvUxLBvn390eL0FylfGW5a/9B
	 IEY10co3S6EsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD3ECD9A9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032843358.19433.17203046133541427881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79348f3b90b4decaad2232c209cd805e608194c340c8b7dfa6721bffa709e8c7
Date: Thu, 05 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770328433
