Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4872184A5C
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723094154; cv=none; b=RlwzxLVWCga/UFEDRQybgYzeuDTCm5U9HEx+z/pJ5fHxlhMivM50hfw6qHOvxh3IezPF1HzJMHU10/grAGDRjl7ov5fqUjeik0cD6x3afwF2FAxN62JdLRRblzs44DF8213uUcCiFdV+pfguB7RQl4+3zD4XnEn+9mnVjPUoc4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723094154; c=relaxed/simple;
	bh=Ittd0Ua3MdZW++U7kVK+Sp06ywZChzMul+7Ys6RKwBg=;
	h=To:Subject:From:Message-Id:Date; b=oZgdQsBpq3oOnwZrRRx7AdzU/uV/5h87sGPCFlQ6NENF+9u4UYTqiPYu4GVkyPZMdtQeyV8Kmngc+QwEfVOYEnRYBlOaoCSSxOQdwVIPr3AzzXrcDVkuOfowSSnXNYxHltggTEKfF2OdJlOu4FD+U6OjB2KR07P0oOAw5DWT0C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0WWquGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0WWquGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C99C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723094153;
	bh=Ittd0Ua3MdZW++U7kVK+Sp06ywZChzMul+7Ys6RKwBg=;
	h=To:Subject:From:Date:From;
	b=L0WWquGFt0F5G/qERhqQodk1AaanugfMvpaPch1vb8FoTgrjsmd9OvEq5aznKt5V3
	 kTDJ6K++ZriVj16lg1fGzMuTSuV2U2wby0zKbJeawgOGG19SoJaKFoUpbGv9Ogh+b1
	 QAD1Z9VfwJanWDnLrD1vXQoGv4utAPf0+h4kJqEKBA6f4AWIto9JNAS0T2nkZVuD+Y
	 unH5V47RSz1TpAr7x8/2ra36hGfAyBILvsUYy058lbs2ePIgJOXwUUuaLXavRNiPRc
	 RHlbcDC3+xRZeztP3xA2xalxzVEs8fe6WmczmHfgUVcBv7UR34XPRMcbuzWzq+HFHc
	 Hp0erp7FbelJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE15AC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309415370.16324.18123778301571772328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc172856c39db79cb657110ba10958ff0f57a09c383469682086d6a434581ad0
Date: Thu, 08 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723094153
