Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D001531C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768448634; cv=none; b=HqCmFI0wCart2gwhOOw7Sdg6Hiwdk+a/w5b1ymGj5SDyLVOKKvN4xA9snpA4/iZxbSvvTy/YztwZznwohQzVsxJQfA5BGRpiY52+/Iqz0gxFcsHwGCEEI47WZwEcHQcLwpLq3Ar7vVMT6gre5iq+ZodbzX3s1kySi/zn59kL1ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768448634; c=relaxed/simple;
	bh=023U1lQ8ESo258+6UtsfgauL0VEe4X0osRdqMVwheb8=;
	h=To:Subject:From:Message-Id:Date; b=ZwGiHUsRyzvGQkkGDZL4++MlTK35Du4O0Izw5AJOmNShVR8C3qrAhN84pZNr2Dv1S7KZd9PoyJ9CtzsE9eGR+Ja3RpQAczLAYlNvrbpaeOV4PPzAFAHsAEHiwP6iIYCd0kbAGv8QltSAB981q1dfZ2lksQJOdXhB/EuPvIJj9I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYafsSAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYafsSAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768448633;
	bh=023U1lQ8ESo258+6UtsfgauL0VEe4X0osRdqMVwheb8=;
	h=To:Subject:From:Date:From;
	b=bYafsSAgCDsPLgsb5GyM2caJ35KTa46l1N657efsqGMBfJXTDR9/JYBgEzRPq/SYF
	 NDSPqgYXm89Yj3gUOKHKzfOWb15hhgkJh8QQXPEKPoZUK2olS5C2/YEyL2LRvxdSAf
	 V4pf7jOQJlbqYmun7oSI2/Fs0oZIBfwm9HX9EMjDQIbtVkzvCOXjMwqvcp0JAQ0gVE
	 Yk9hyXsetR/LVCPaUx2WkeXWTlEd+ZCI/Ae8iULVdbQRMYzmxs90AFq/MoSmksqTLt
	 6havYrrZQ0q4/FOZ669HzKYDonIwVtdErqdHjMgWEHrC8uIsn5qI940i1mdEJ+Xozh
	 YeXPWr3BNCxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91828D3CCAA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844863357.2889.4390847287057360942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb46399346dd56ee28f7fdf138ec02fb7b14a08d2172be37cb731a8b728c3b3
Date: Thu, 15 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768448633
