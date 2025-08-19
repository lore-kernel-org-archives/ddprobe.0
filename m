Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BCA322C9C
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600594; cv=none; b=BHm7wSnhZbqDpWEJ4teoo/0xrKbkPibF/z5MPlyMWfgkF5DDZX45NcXiibEdDFQZ+XXeVLeTBjL5enNbWBCDRW+eVd2m3gIZDtcLXk+bNpJ9TTkEKpLs9vPrf4Hyhe0G29UdXs3tIoB7Bi79M0bLdiu1XSk1ymwXiqsdEJaGb4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600594; c=relaxed/simple;
	bh=Nu6wKq44YsbNVMR5a5RCGH0Q4+mDN9A8/xzZDJok7kw=;
	h=To:Subject:From:Message-Id:Date; b=XWr7C4chX4DpC2BdHTzypMwBMGxuqJSZiyuVtmZkYheKUhjDRwXdCE280qSvyHmtkpgNKo+THqcRMyDU+snV3+GFI7ueI5PXGcYXn6hsrLQMd78I2pUazTICut7LxZsIzjarSDPOPpl9irYG6h1b066kVCkoxVEWkmvrfzpDGNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfIwihBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfIwihBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755600593;
	bh=Nu6wKq44YsbNVMR5a5RCGH0Q4+mDN9A8/xzZDJok7kw=;
	h=To:Subject:From:Date:From;
	b=mfIwihBe6zqLi04fTWZR/0BfHjiQKPf99dEGYpzULUuYroqS4Pw5K9dPTGGCmRg11
	 NS1XGmOp5iAa9OAJiwwW9s4oun/ZRTwNrNRV4Bd8cztYdWIRONrV5sbfbIfIjV1MTI
	 ndqzeqg6B/eE86P8C9sEVDr1XGhVYYc1eInqtPa+NmGSGKEVOYL4G/rO77Ifan9Co/
	 rJHnWyRkkFL8+maWkadxeRzmavOuoqjDMlFPbBf01VElDuuch8vSqHbyL2Jow6J6uj
	 N8/fp3FmAcXZHhRMw+AOOnRd/DiTFH5byLyPxWTJhFuubglypHH7HHvxKUUaqCC368
	 nz0ZNKlU8qyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E4CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560059357.4297.3625522262608432591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c562db9ece1c5ed59e0088400f38203cc23edd358ab8e59c00469f24555c5dc
Date: Tue, 19 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755600593
