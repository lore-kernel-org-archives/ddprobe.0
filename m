Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7021B7910
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777581454; cv=none; b=LbSjd0C/c9d+HocfJsWD2P65fJYZ+PvAyt/xrUrIDYBJo7dCjTXkQ+QON/lf3Nk8YhrhSSBCMqJu3FENsHRjv3ylW7aNTp1h9uIKWqZr44ZacZtFmZblYHxUtPBqGCF20p1xouo1itlokrvpx7nKRKbJdpxS4/WJHw2pIs9jecc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777581454; c=relaxed/simple;
	bh=hvZi1I6vN8jbRWi6VkMqP8IJaHIUOfYcSjBTQ4mOohA=;
	h=To:Subject:From:Message-Id:Date; b=QrTX4PqvXHwrldZefqaRm1f42Kh3SDW7NPGyoNCBBtgmrTEldzMVo8RpthGpfX00ZYFb8yYP/ywhYaiS/uTNXGV/oTjbVpC4HM6fUlHCihG/mZlVp7p7URpjGub3Cczg233RFntHRR2FaYyVY7RRkNspJuGdgXLj4tn3Xg/Nqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPmy0iAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPmy0iAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC7CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777581453;
	bh=hvZi1I6vN8jbRWi6VkMqP8IJaHIUOfYcSjBTQ4mOohA=;
	h=To:Subject:From:Date:From;
	b=NPmy0iAaBut/P/GAQZed0L5r7TEDNKphxK64CMIoCEiAAPy6EX9BTCvU6RI5QBaxE
	 MJOf/oFaP00wBpd3EvkR9+kjwYTkvPNROwm2vQ4z2COH2KrB1ruW1iMJqgBF3sEoVC
	 hVCveAIdCJ0B+8Zlr5zcFEbib1EShKNaozJKCScU15A95QBMLAPDUMB/CYNOpvsqEe
	 bBmOjZwtm2x9hY0DWMr7nqz++ZlW0VKVPpivWMt795a9YH3j13c9VeMrp5cpbgxG8I
	 ZVUo/HDpDjerNQSg7eF/FAKpXXvMOiJj2KbFNJPXyOQZQFv4VEd/cWNb67SZJ++fzw
	 o6wQ9BikTS/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3DCD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758145368.11772.668248599081861225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee1a31e3b105f53f550a41828fa3a525a73508d514868c2de93637dfbdeb9a3
Date: Thu, 30 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777581453
