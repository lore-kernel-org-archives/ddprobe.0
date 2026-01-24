Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8D946C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769231634; cv=none; b=IlLMwJanlWkRwdIT+LaEfQIT6IH+p4OoyFqKpKHCIsRA1usopMSxzWl/bWbh02ipxzmbQTzYyPyzThm0FQZQtc8Jhct3hCcrgLx6uV03soRt4k3zYN4tIfZdUme5iLyERaWIsYjczES+k8GswKmDuw6G19HCP+G2oyUgqW4yMpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769231634; c=relaxed/simple;
	bh=LA1S58h/gcRnVRXS3N9lxXbrnD0UDPp1HQoPlFjEdk8=;
	h=To:Subject:From:Message-Id:Date; b=bX+chDMBk1L2utgvPAmi1qwAIiDABFO2kUpticcFcvEAjt7J1E+LtiWDsp6I2F+Z2Kh94IVSQPAQpsKb1DxaJ8W4lvtlUXq3LlyYpOdrB3Gq7Xr7OWdnZtFWikdJJGUWSpIJFS0VUsYTS20hqxDvJ8HPjPPD+7Yo2WEgJG3mfGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0ntWeWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0ntWeWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7699C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769231633;
	bh=LA1S58h/gcRnVRXS3N9lxXbrnD0UDPp1HQoPlFjEdk8=;
	h=To:Subject:From:Date:From;
	b=S0ntWeWxgNaNsmz+ejUbxG7wYE8xc89ahhErWPrczwE+yZUnCZ4EZxfM5nm42N7/I
	 w880UaqLm2ILcLOrFHQjs1Fb5ByAy20UxMb/EJshP2y+Sot4xs7RaPNKZ3aTTlgAd0
	 5kCOSO1eMwotNKyVaO0HvoiRKjXPtBAReJYiufpcyfgesS8gDAgbDL4r6fyOqdMufR
	 QnDoEEF7DL0NFfB8rCqrzqhAL16IjEjqcmW1i2Pi1zIh91zoAxL60d1RcnJrfElwGC
	 JJh8xTh5L+kpChEzf1+MPrLSw5F/Ei1DcJP7+701NDg4UNfAJhpXGCSNEQ5byE1RUZ
	 lskRn2GDwgYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F92D715C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923163357.22832.15309360089111467438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f2d97069500d8417729ba0f1e4a845301f6da32524e95ba692c3f862effa5d
Date: Sat, 24 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769231633
