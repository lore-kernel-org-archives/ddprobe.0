Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3057D1EB192
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741820334; cv=none; b=ZlIDEgvC0i1A32TwLOpriq7XfbYIcv6OnxqMyq+T1BIFAgk3hUHoK40HH5MKjRn1FnvQbPJbq3JFAp2IOruBlEbU8MCEoZW5jOBywaVQxGfmIUTXzWkha1rJu6qBgLy0f4uTpbDRPq8kMqf/4Rq6SnC/QauvBN1RP0caN5YKpg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741820334; c=relaxed/simple;
	bh=erZVu4JD7S8aU3tVnIpB8os8qOzL8srAf+vRxlsYf3k=;
	h=To:Subject:From:Message-Id:Date; b=TmVeSV26/+0BsKR9bMiKCHHKi1PKB3+Q5oBxXdPOsktIjSxmEo7DhxqzZ/jZ1WbDQWeYu2IDHEaS/z0+cG+nkeOp1WMixqYZ0ybAT0Pfo09vvdCU5FP21IQiQfQnazpgMpnPrdMh1SVMf2MCK8sHxk17KXNvfg8UF4H1NUfpoM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq11LCTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq11LCTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741820333;
	bh=erZVu4JD7S8aU3tVnIpB8os8qOzL8srAf+vRxlsYf3k=;
	h=To:Subject:From:Date:From;
	b=jq11LCTdds2hnkmdQ+12Woxelf3n/33MzAP3CKsBYCeA2HkMVxUkfR+9IoSbvdZGV
	 CHkXeWk0VupRTGgslebO0otwXAXz/erx9H8dI+FJgsR8JlLJ6yWgLHYf57sS4Hjjmk
	 1e74fHiHaq11JyrUpum03uoBdiCz/RSbtl/34gUq9fhf5o/5Of4y/JymcPMcRSeAsI
	 gl9onAJxRhTFosuwYLAukocsKr7dX7YM/90XIRKTB7I8nrpP7NttmBtN8y2wBF08LA
	 V2wrZP+9liihyQw6vazg22H7iv2cj02Asvlz9tgwjOGILXEe+3ImXDW2PM7GZ2ywRH
	 YCd70CLGV4ozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2FC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182033359.2581.528272979243855265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6aa0105fa97cfb3dba9ea809cd5e20a83453f5c68fabe9ccab6924b2409804
Date: Wed, 12 Mar 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741820333
