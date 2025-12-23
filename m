Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1703119CCFC
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766451834; cv=none; b=AEI3YcWXolLonLfKa3UiD0RE5lJ/GzB9dMZ3uL7Ovnx1WhaN8NHKtGe7ZHdOJFuvziR1Vuzc5IRxnqVaM6NgYWAsODoDZbiHYfzi8VIM+OLjAZJuMTh8i2dD6Tcre9MG8MKg71mxFj1qxFn1FhsJvty9E0YSuQf2OnuQ4gsQ0I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766451834; c=relaxed/simple;
	bh=rBQLmVxzEVicQIr3RcuFv/FnwVcPGs010mKRt9wjM/c=;
	h=To:Subject:From:Message-Id:Date; b=klFxDumSULQ78HXF77WlB2XtqKnDsWrQyPFlEacfkxD8CbQ6UtOzmz3CyIt5nnPFmVHf3bXr8/J78vbvSH18Ch6GYUDg+MBU2QRpYVM8OG5O1m5ovPUDb8vNXaMwbUBNWC9G+OC3mGLYT/ntFu2TOn0sUHmGkhLcbpDn9wEEOV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyUGJOeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyUGJOeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3308C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766451833;
	bh=rBQLmVxzEVicQIr3RcuFv/FnwVcPGs010mKRt9wjM/c=;
	h=To:Subject:From:Date:From;
	b=QyUGJOeLsxics8OMrWroLfpfAEZUDYvZTFvhT3yiW3AkKKrxrauNmfATQaZIcqJF3
	 rrtOoNPi5hKkr+z2+0/SoEMJMC7RWfvDV2GmXH4fMqPUApnPOIKmwpknrDDCapEKlg
	 qY7usvqO7PTqQGc38OMPLPIGuf45q6JXTgXVBgvxix/YVDnAf9plX963BzYB69iddB
	 Pr/KL93ZtgTuXNYOHD1z/sP23QD1+QJUI08EI/FpDINdVzU+JOjo0mOTVKgtmDbZMy
	 phYcD5xHljFRexAehGTouN0ETwSmA8yyvFiKD7nWqe58yXhUkO1Sf5x2NqWFdJc/Wb
	 FnyBcwwPMAAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FCE6B26A
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645183357.13037.13711798890650950317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878b59b6d36d686b0b295728adb4ee210b8a6cda5e5996997aa5b95ef6a43072
Date: Tue, 23 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766451833
