Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD272F24
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747961994; cv=none; b=TQRFmOlT4UhPWrxhSXNs3OFNBJii9gSGnZ3Gsg8GnhNo0JdmCnwa9Pd+B9LZUFmu7YLN0wXxKI/Zdp+CXBlHNystiIg/03Ea0WXpgVQvz9pJb0ObliFKrLZLxT+YpLZNOBcfQK3Cq0+FwxwdWj6Byyl4Sd8i2L7jXEKNu8Qg9dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747961994; c=relaxed/simple;
	bh=DXyYgIljFCUQhp30ggypCAYHhGgoYVKPlm+ppZwq0dc=;
	h=To:Subject:From:Message-Id:Date; b=pUuGasHSv/JF+iBEQqNQYmIDAehTYHOIcLo5HGz4qJ1LbuN2E3X/hwLlUmX20fd8hz4+WPMrpKVnACJxfAnZs4gh6Q4MXDuCjJ9KgfOYm1r1IX+0Ho04XR6mYaxwk2RLjZZsdm7HoRmp6mFujaBw+jf195aM6DpWvfBPmy+PX5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjK4sYS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjK4sYS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D6DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747961993;
	bh=DXyYgIljFCUQhp30ggypCAYHhGgoYVKPlm+ppZwq0dc=;
	h=To:Subject:From:Date:From;
	b=bjK4sYS1ry2NNE1dzF10EmZo02IIWCR6XKJ8HRg2cgMifNQlJ9LeBSYQJYIdLZX3L
	 87RGn/MWs9ASVSdAG+EyGYCB6sMZEIaVZAIvCq88Po54yx/EgZG7A7qnLBhSnKz67R
	 MTlPuYbxJUhOux5vezvVqpjOQbORGF+oTU+1VsJRIG+kLyUTLhn4A27q6hWE42SNG5
	 Xwjv5hl1SP1Qz8jhqyXMkcNtKh5am8RaHsRXfl/BGmKVOnQHhDtgzIW7HPuqp1mOhP
	 1XNpqV8BmF/MKIodfbAw4eEs2MlofeWAXI2tu7FjZceJyPtTgJnW3cEg1jsMQ85Eci
	 QD/xE62Uo/BUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E8C54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796199357.14437.1475405579237212105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe84ac706b99e0639b2b7c20d4428f73800c9184efd8982f36772ee2e30d57c
Date: Fri, 23 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747961993
