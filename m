Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153902D375D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752241194; cv=none; b=fW8LHijv5jYMGA5Kvn9GBRLgnQA2SpmMkVX/29BIncjsrHm3akq1o9o8NkzvgFQA3DU34MjcAzO59PPyKKhzRc7pplET9hbaw2cN5Y4pdTAIN/WgoxMPHnsanEk9NUSZj9BRQEWulCvDDw8IFKtFBpS6uDh6nghp1Kgwa2wAZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752241194; c=relaxed/simple;
	bh=P1BebvPlDgE8z4B5xisjZKRoHgD3VACijEcFCHbNbHo=;
	h=To:Subject:From:Message-Id:Date; b=QYmyxdtxrzaPAqn2zL+vOfBX96BlGlJTSpWui2647NLMc3jzZ9rbC9uPkdUm5RTd9cAif4KS/cBVFIHA9EGJsMomDpWSzXwQZB9bFH5V1mt39YS05Kzv2+ORwxdTW314FWmkXcDtYhjLOFbopcbQsUHJgZxQzBVkD9XGKitKgQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6+adRCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6+adRCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752241193;
	bh=P1BebvPlDgE8z4B5xisjZKRoHgD3VACijEcFCHbNbHo=;
	h=To:Subject:From:Date:From;
	b=V6+adRCitqhsaMvfanzCOTL0xoF7OjVz/rxeVHystbYxtJ6jMSmtYFwG+kFDYCkCi
	 1HQumFfXImH8Xe+hFV33i54MZ1Add1vLxNEhmqio5SCEVTKXZLZlsK0SMyGWIoJFmY
	 oT7W2Hcv7jUICQhjJArxE2oPOxot/j+QdaHzJ76UFMJGReB2N4le46L7yBfz1B7MsW
	 mrlMLokzfPSyNdJf3u+EJqfn8ubJr7X4XnXsOZrpjVKgoDOdPeQ2/4kBS4LIDn6xBi
	 8tIN4nbS69TDFSJRiAa2WbQ6sVz2w9xQzRPnJw3ICGr2WvzSakg/8cGFUBLa2mHjLy
	 eTMbC1rqK1BMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B1C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224119358.15482.13738818017654160998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130a5a6a7138a76bbdea5dc0d2242230d30e7a03c1a5b29bab6d294d3e73e90e
Date: Fri, 11 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752241193
