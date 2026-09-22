Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2BD5650F6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790094634; cv=none; b=hDXzYVKhKX6S9myVBFGFQCdGmGqAAhKxip34sQltVm+YLhFYJsF4cezvssSDzqpm1bDues8xOnW32SAooXfVv/iK1Os6BgXYXm/QnUCHN3NdjJigLrYW/lITSP1yQ7sK261MgOEzDmUtp6UJkRGms/Vc8RIQMb8OoAwRk44B3cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790094634; c=relaxed/simple;
	bh=Jf1pjaCETDooLozPcKHVCQTSCSht7lXhdwDwr+P11Zk=;
	h=To:Subject:From:Message-Id:Date; b=hyNIar6hHCFY7GiHU0J9VLimWjVSJIgMU+lU8rL+DZcUtniTz5hNTwOK1MmvvBT67u/0eNY4N1DK4Y+liL7lwJJh9P1GlRjHry1XCaJ04QeORsegHDYr2mzGSh9bNn/CO3DZvtRW+hgl/2boG7+cWIuyQTWpGF5gRZGCTI6oyC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szb3P1Xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szb3P1Xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00B7BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790094634;
	bh=Jf1pjaCETDooLozPcKHVCQTSCSht7lXhdwDwr+P11Zk=;
	h=To:Subject:From:Date:From;
	b=szb3P1XbtW13LftUU0M3361kpCsffG2loyGmxHSDlmLu8M11R9RnNWrMXjZsoYNCy
	 dmQ4wKDVl3Jsa82Mh4rYaj+2H+STTMyv6du2gLtp1cdbt6XU3muT290TnKuWRmgbt9
	 +g9DAOkFAn2QLf7iV9Xt80hcxwxdJakue1Y9RImR138cu46+PAmyBSz1WWHNv6Th76
	 xaV0Y8dMr4BnGk5lmT2FYOmcQM9B0kcX6p0NU4/HwaWbfhL1RR2nqfZb6EtApD2+cP
	 l0k2Ga9o6C26QKQZVTZifyGoB1W3Wv7HIcjBTFyIAxH7gNj0bRwcgTe2c7YAp6WWhB
	 9gNZGIcoC432g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78BBC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009463375.23733.1238134417882632717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08135cac471559ab32b3e27d2fd6570c2becb0745e55d83de6fea83c0915eaa7
Date: Tue, 22 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790094633
