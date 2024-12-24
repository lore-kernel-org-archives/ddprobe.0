Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2048BFF
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735083954; cv=none; b=KQV0PiRN7SEMObPX2Id8G97iXaBBvsjYz/vlWDnU9ZQTLWF6QyKYs2QCcB+W5trMwvNS/mA+eq/MzfSercpk+0YMuqFqAUxs6MfPX0+5gb9wHFspuazcQPI/d+0F9uXoSFSU7gKZPrrNXXHd9E5yRKQKOHH1xqXxeuLICRlFxcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735083954; c=relaxed/simple;
	bh=hzRMi26GAAyA2+sHh6h843HBvtuP6Mv1DPXomjf8oLQ=;
	h=To:Subject:From:Message-Id:Date; b=VSzWdTlgRmBlSuP1tZxijhfdwXZ5fJUuiXYhK/g2Q+11cmqwrPIay4MkgtfZ0zmhMJCc1CIqjWNM1oxBA/oTYVoeCwrN5XtZKiKKq+xSvNKeQ1yZnotxdKRZJ+2T97DXYTqv2P3r5bP+pKGDvKRjR4UUkk/qXPcuwi4zU+64BXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvXvP7tI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvXvP7tI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC649C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735083953;
	bh=hzRMi26GAAyA2+sHh6h843HBvtuP6Mv1DPXomjf8oLQ=;
	h=To:Subject:From:Date:From;
	b=cvXvP7tIQ94QVdUEfJUYYMfPUsiU8RBVVDifQnzbWe6/CmPyv+jL/EFZecYMHnLhU
	 Bsp8x3sF6fbqvoTI4JBNZVH98O4YX37+J1is/woxPYzdysSphzPqyCKo3GM3v8CkZp
	 zbMqMVzzlOBGzT20detlzFLB8zJR9Cn43DjTseLPP73VrrvQrQniaB8BcPFmOwEP1F
	 CGlngCcq1D5xCclxp1qNTbJ7EmQO1GS0wgVm38OB5Xcrv1o/Z8hqp7isQtmFMD6Xd1
	 kNhl/SrMcxFnRsgmsfOhrRtBf72VJhiEDNzIxfWmVVzS3UAPIr4H+5L5u8jg+keflA
	 sT+h5lcptvFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9380FE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173508395358.3953.18248047104822436776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286369088c400c28660625dfa142697b3f2ad5d2b35af28ba17f0ad309d82ad6
Date: Tue, 24 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735083953
