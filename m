Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241ECBA3F
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756858194; cv=none; b=pE4s77QBiTL8pHhP0pv+hGxxEC/TFB99cZYj9SICToyeetG9lJZG0hJ/zPrTRMQE8SpPp0uzrPX1q2Di1Wrc3eymFD+Tl6yuPqp8V7ikn4uPLocL7sh7r/pt8zDlB2W+M5JZiklZb2HUtsqyv8ZB7Ce9FiXdeV3ms58mWo1zI28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756858194; c=relaxed/simple;
	bh=GhAnyNGZEstFh4I1Wypvg3ksoPzyIF4memkfyUPg7Ic=;
	h=To:Subject:From:Message-Id:Date; b=tFpbg83uNSskuzZs7T8f3pQT852gAP3fI4d5ld+8KHu8fBEqxDbIO3zY9ssaV5iSIdB4/uvqYgt28JVnRYMSN9btTjRwxxXL6qb6qO9uixbgi/8t/7h+cjYdpEQOCcsKyRNsEDD8Je6yPe5w8xBQDV5QEX/5aaXCTLvVFwbTUA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6+/nu1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6+/nu1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3BDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756858193;
	bh=GhAnyNGZEstFh4I1Wypvg3ksoPzyIF4memkfyUPg7Ic=;
	h=To:Subject:From:Date:From;
	b=p6+/nu1OVvAkU6Amixg/2iPGiiAPaLhpvdMoRqw4WAdO+yqmKJp8+gyfYqJ4Nxw2K
	 U9U2Osfu5lxvCMvu+xlP8+dvc781Q1dyxZu5j4jv9O+jKFHoARhdEjmJf0L8+kKv7x
	 k4kzCXbjiS7BTcvZGGMShTzpcyS/uKwvHW+WCk7FM14Fuv8MTHsOIccJ5oZVglg2Kn
	 tzL9kwOu30UL4pgCBe8cHi6WXHrNiA5qeCVOWMDSU2rBIhMdRzEiuquqd7P7GZbGzR
	 /SOB3z5ZueQfFG2KrrzNlcwV/bt3ycfsYpKYxHnW0sILkDOc3yjzLPF7JXybqHPOQi
	 xZ+nNYbw8DWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B47CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685819358.27536.2593909351959086094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29ef9566bf2a1f8eaa1a685ac27775cf4bb032f37e5b61af59067a1ae7b9e8f
Date: Wed, 03 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756858193
