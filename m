Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405AD1FB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727479554; cv=none; b=MhHRlatQcWfDA2Z2T0FP0/spo/C8NMTC+nK8qlZ7meeGyi6+qOq1Y8xLVHIU6DEm+0Xcq4mbChYGxO96LkXe8ojw+Jgw9jRa3PDXz6aZZRkIVt2f/m4wovFRZO7RCC7dnWcASm3N8Us6DfjnV5plXkAS4cYBRe3JnEaKSAOFkSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727479554; c=relaxed/simple;
	bh=8pozwYpUTme1KP8oVOKm+VqpsKZ/1wPLrHHVdidSAOI=;
	h=To:Subject:From:Message-Id:Date; b=cmaUBMMvKqpAnj7aEz18Gasukwf3Yycnq3G5kiSBMCrmshcGVTB75gVRkyPT5ZW/5fZyXxdyjF0rNt99Hwh8SKMIbN/qEsqu+wq5sN9oylpnEPe1FHZ7mSjqA0Xvpef42IN/cHwMPoW+vDsyIhzCe16KlLn9GhAdrJhVODo557k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVl0dMq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVl0dMq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5647C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727479553;
	bh=8pozwYpUTme1KP8oVOKm+VqpsKZ/1wPLrHHVdidSAOI=;
	h=To:Subject:From:Date:From;
	b=LVl0dMq8zgzyufyDHKo93m0hf9z6eUu9EjkJtc+bO7lf+7wdZPmzDzN7Xf/ofM+3r
	 Ve811A+PDtPVgXk8pFdwRex4w3Ggtq7HINLwbKCJltCE8ejbAF//NRgQUNnBDY3e1T
	 qcoHB3CBuM8ZMsIc1kFq957R1S5UIWNre11nTSQB1FB3tAcChdQGmUz0PC6LHJWSEn
	 1jaLnOTPmiSQ5tFwUto5Oum487ydEhK2pAFgH6m42cdeiwl8wMiNvXEsesGLT6P+Zj
	 ZPxf6UypJ9VVqSigDwg3GvjRstPLfzKc50VkDZRk0c1FCbG9N9nk0VmqqDSsf6cQhX
	 xXK0d5ko3BddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D3CF648B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747955357.20294.7944951986870904582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a251b67e6aa3afc87676f4e14da5c6291601316d33d03c612b736ce1ab4e92b
Date: Fri, 27 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727479553
