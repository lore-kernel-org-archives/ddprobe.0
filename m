Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D64F4908C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785023434; cv=none; b=tzXehZzZeyZOhHgdx0kHZYrndjL7RGz0ES38IAkhjqZh/opeLHcZBe94dDNLqvStyy/tAXJEu6cgoewD+a/S+dBdZ1/5M5GHNXpg26STk6mHPiBFa7lBWjYWpf7slzZQAi1RMF/UV/aLwyQ1EUGUHGAlImyfIMPrV/vAIWj5D54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785023434; c=relaxed/simple;
	bh=e8MRJ3g9IhzoT0hBy2sHXT738WFtlG6RGOQ6VNGzpts=;
	h=To:Subject:From:Message-Id:Date; b=eO2s8wZblintbDkGpxMOrVOXEtp2AVsanbKDnx4wrvkVqrH3XLBDLdAM5gGBLAvdgcAaWCwwixn70qZbUaJ8lhTc47cpFaLbJ7YOLFRzkqDi0AFFTG1SFm9IB8WsE+16anGi2QdL3A81vrsSNPA0/w+Wxf0nsBWsXvXMf2GEWq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcQENTyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcQENTyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD3AC2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785023433;
	bh=e8MRJ3g9IhzoT0hBy2sHXT738WFtlG6RGOQ6VNGzpts=;
	h=To:Subject:From:Date:From;
	b=CcQENTyicQuhPAA32pQlU8CXeRVxuvSlCXoO/lz01d9b3DDmUndrcUqzpfnlRMIJb
	 QLp4KKpLrlSRj4o0nYEdcRIEpwyaijfYNHXSDVqXofctIPyCTs22CRzUwu6vfW4PSs
	 IqK50COUqS+8K1p0eoa1KUS6E4cKZtgUGMNCzPmajkAHIrKx2JZVMLbm8J+7UshIbA
	 hEZTFSuEH+FAFXoXAGoBuxe7oOvx7gJ+beNOAn/MdYIxwgA6xSWHlpyWCBOTnsvNLj
	 JJWmya9p0l5uG3YIF47LQNskZwMm2Ez+GDua32QHZ8VF0goA+EZSQ3NPKd9/NSwpVb
	 nfGWonkJF8S0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD4CC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502343368.19271.15046604793933809518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bea5e63d8ef3adf2c90019454a3552f57f4adf3be883fe3eb77e2c4d6b62e20
Date: Sat, 25 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785023433
