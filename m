Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2118B26A1CF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757067594; cv=none; b=K3rlcTNjVKdD0XuyhdKJnZBLxpw+mdqzTC+XJz1Z2DL3nZz1VSrE1pVd+VGBDDlFpywpnVZRjIVCMrggUZq6JNdzgEA5oXZeYIiAW1wz21rwfQ2QpLSCEXThr1gGm5lhK9SIuIbz1+L2a5uNTBGgdyqGvntcGSbJ2X7DAMMJgPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757067594; c=relaxed/simple;
	bh=BF5RcaWecJVBFhIe0qVdVGcPI+/rwFzzCFa5QCqDL9I=;
	h=To:Subject:From:Message-Id:Date; b=dmISzLlCC3xio9kSzHidSh68o8TOFBtCcBJJsMMk3UWiADSyNeIvaYTMNWeaNzshH3+acmGmVTeFpBl7sqKi/IigmGerVnvKELhHCbzs1/xy31n9CuDAFtPBmI9rGrE7k5yJjGzQUUXtnGer9xCMNGbEBEAauAcqdppHJBrJX+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S70naDP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S70naDP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2044C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757067593;
	bh=BF5RcaWecJVBFhIe0qVdVGcPI+/rwFzzCFa5QCqDL9I=;
	h=To:Subject:From:Date:From;
	b=S70naDP6XUlo0ZRStQgjPdwk5HN1jXaAGtpwbkIafgLLaO873MjIdt34dVO0KkxnT
	 L0S5mv+CcBwTN9ZzsjfL21kIcYRmRdOJiK7YAsHFXTUhGm9aj3HLg7s1HBvWfxwY5m
	 JltPMDLEGlZQRXqAGamZp//lvTmpOiFYU5KvGy+v0/2t5Ce6wY/0sNITSTL5hFS6uV
	 JD84/EgdSTnGh2On7NdE9pDHF86ZmmKilD08cbZjCb5OIF9VaPhv6lkbDvkpgss6Al
	 TIP0mYDF6LIggVu6nTuTw6FQlXN0WWb3sZMFJ3NSEaTCalhOGqyaNEQPjN1XGMFR3x
	 EMzLGh1hAPBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A8CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706759357.8232.2054965033946792724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a0bcc5c92a12e5219f4c1e61b66c9bee90783ca722d83e6434c5474a01f280
Date: Fri, 05 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757067593
