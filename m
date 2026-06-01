Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4EA330D28
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780302874; cv=none; b=IazD7e6h75UJYlCdU14Yc0KOpXjV0Wc6EL2FmAyKCJ43/lPZTcMbJvGJS+ghfusDUuOutUyHekC5Q0FuAMJo+HAtQaYyiEMKEo7VW7n5p7PafI65pU8AMJZbQ0Iv4KuWz90824lCr7c4FTYPYQ2G5fzguOL/eCkot1aMLUyVAFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780302874; c=relaxed/simple;
	bh=4YVnCmGWiFiGs0x8SXu2t9cyxOh1auMacpWsLv/DWl4=;
	h=To:Subject:From:Message-Id:Date; b=pVoECdxLxqYvLFfy99eKVru3gLWbTVBm2ZzhUToXRXmavaBpOk4An4ojpuaMcycP2iLSVq9qg7MLu8QOHqE97d0CEifF00J3hGeOSG9ve3AxrdhgwlKICfpwGX/a3sRBcinG5fEB8f27V985DRDK2jcPgVSnlh6lIOtoL0xIm2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTnWZ+Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTnWZ+Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93FEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780302873;
	bh=4YVnCmGWiFiGs0x8SXu2t9cyxOh1auMacpWsLv/DWl4=;
	h=To:Subject:From:Date:From;
	b=MTnWZ+LcYuijlG2WDhugxiJ8Xmm0iVGXcJx+XLwc43qiNQmKAWGGCPntVhscAYMbr
	 XR6rZ1Ei2ui05bUJwdpueoZsBuKeEseVRl5MS7yg/UCpbn3lu+px7B86rU2R3JNKXJ
	 zIlVMlF+16bDJSJ9QZpn41IS1QidCdrFhue0R4+ugySEa4oMm32gYYRZfKALvh7As+
	 DpPLl3IZdMRlb/uVDQ58ZltcEP0hkkz58u/PHqWMjJVmLsOf7ZdW/XcALojY5oRp0i
	 ZmcOW7c40HLPAvX4eC7grh54WQNHoY76EYg+QDJ8Es1TeWiAlqIVWlHlOqFxgJ/FwE
	 /uocsb7E9jhug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF035CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030287370.5084.5136444291261987814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ea34e3ef331c7bd141bf79c0d4ae5e9a081cb627acf57f6ec0d75f1e219089
Date: Mon, 01 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780302873
