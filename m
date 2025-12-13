Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141FDAD24
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765605775; cv=none; b=rMDjwo/fzSdSHlkr4QjzrliEHTAw5aPNvGy4ev7CxhmhK4HehZYtzIi1Wj8JC3SfmDGklqcIPXStU2/YAlEflmjiSGLXLdUjZuWv0c6R5mn28xP2x412eNgKX3MZT75MaLUjAlj1HAzv+p7y2eMzmq14dKKDM/omFEWsRa5aBvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765605775; c=relaxed/simple;
	bh=OaXH34Y2a5C0lGekUq17CVF7W84yDlhRWsylVR6RZ9A=;
	h=To:Subject:From:Message-Id:Date; b=hoNkC0FrHk7lMHMS0qOs3tQ1EksHGyIEjoMzvNR3nAuqqWjJSEv74Nse8l34CXu+ZARQtkeUjCfubrQF8roEojBSzS0D7wVmFDom9HzlZw5Ocriih5yQ9C1qurRQsLSiaaPrcyf8zShf2ITJ2D7wssJiSkZX6EPhED3/YqaLIoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxhu3ZWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxhu3ZWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765605773;
	bh=OaXH34Y2a5C0lGekUq17CVF7W84yDlhRWsylVR6RZ9A=;
	h=To:Subject:From:Date:From;
	b=Lxhu3ZWODdsIeKT7QfIFPy06lwy+oc69KPSxja3IO2USGnwVuuK+1D9Kt3CdqBgnv
	 o8PqTrI0ANRSxIH/eL0eweXdS6ektzljtonFtU7YCUEejSJONIjLon0z8veQFB2jve
	 F+PHD/vxVBI3nGtqoWDm7GYxTJyvvOFo+uPZMi+/iZk6/U9kCvapVsFhBqwIcGvvqg
	 fn7IlUBz7tmkh8hzRfmKCzaKux7S5i7If26IPvzK6TSFFl0x0ckkRRat8S0+xGc5M1
	 eBlgtmJDGxRpf0YxHqDCo/ItOSMsOFc63BuE0ftjh7QXALe6dUg9QaLLt5lRqtTEyv
	 /IDQ+FnpQ/FtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96503D59F6D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560577358.21114.205191416638124180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799534e47aef20ed5cc8ad157cc654c2ea188f337995040133d238da7ade0d4e
Date: Sat, 13 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765605773
