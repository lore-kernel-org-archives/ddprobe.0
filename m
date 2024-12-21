Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F9C2AF16
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734766554; cv=none; b=Hkum044oYtSAHMgq71eDutQe/UzUZ4vBP0+P7v9BcuQmHIuxrqc9/Z537YdDB2Fmm6sRHdIweHTGRxQlW94NstHysCD2UQXE4grPlc32QSL4FONWZqWyQHrcwMnPYkw2kk77J0U39qMNVfZ87Fy6XcfSerMJjsrDo00suGjS3ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734766554; c=relaxed/simple;
	bh=snkSoQIJqyNNO0190DVbc9hMef/ouKgI9lJBNAocJIc=;
	h=To:Subject:From:Message-Id:Date; b=LnksmQVrkYXDuvMzmvfYrWCClY4NRtpYjGWmL7zhL9SgaOJFjQsUWWwX11cvxKWqn/15yT9bkAoBjaMWbOL7cO2bOPDlkdqWC1zKkFjqwfK50YGbg/yJPcN+zGIRuYiB7cqx3CMqeu+RXLVyXxhlLeQQ5E97U8TP9rrMdGnnfko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejkuTw5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejkuTw5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D02C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734766553;
	bh=snkSoQIJqyNNO0190DVbc9hMef/ouKgI9lJBNAocJIc=;
	h=To:Subject:From:Date:From;
	b=ejkuTw5eo9s4+xJBulg/OAu5gocVuCMfjwDbXYKjuDENbC9Z5DySHnj4yxSjj1Rdg
	 DR/4hHbVK6REEhYT48H2MaVwY7iinaWZCJ55Omfq/V7xv5d/ZAV/9jKWyBOMEv+hpG
	 vwTazzJbYoPrfXTbdiw6KDnkhK550tYyWdNc54nppn3UYWhkSsk9MfTe1vFhY8rkvU
	 NSbUNMJkjMJ3v3r1FxmU4I9K0YKOOK5saJnQT7VIQFeZeCUxiBHDZdAbM07ywwapvg
	 9EBvKX/IgPeAW/lvDf2l0GESSL+7Pm3BJWJBkfAhQAJzbbCGzehN/IHI60MlrbfaCC
	 R8NTeKS+2pgTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E90E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476655360.7117.1232211734175275199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba172065b1986ded592e06fc545af4d5f8ce7e5dcf859881bb339f17f1500f1f
Date: Sat, 21 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734766553
