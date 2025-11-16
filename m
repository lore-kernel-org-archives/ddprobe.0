Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60914156661
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763286054; cv=none; b=eGzknfn1VmUkMatkdGQ/Cef21vZqdwzR2q7heRg2EGtPNHf0Jvtq54r4kYk8tzE38R0Ug8AgGn6Z3aBD30RyuW5rWjV+c3RItUS8W3bQGpRicMpA35YPftbhsVzv81FV3UWt9zPxtzyyLEM65rGCR9/2IWDxRTo4k4MotmKTZaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763286054; c=relaxed/simple;
	bh=OPFsxk5zSkgAn67gq2iJ5Di/fGEXI/poBfci15iefLk=;
	h=To:Subject:From:Message-Id:Date; b=dXNZheuzoYzzogyCRwTJNE6JmMQvyFIf7Ts8qvyf4O4lq7aBqym0a1IzFQRO/ZGTf7QFsKi8qrRlPDMeBqEZmHMyuiW41Is/va+B+jyh14GrSIHSjp8OPFLjks6PV+fgbGC7U+eerQ5coQVWduU0y+BL6vtZ7X7SpKQBjmEpUHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU+/G9fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU+/G9fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E380BC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763286053;
	bh=OPFsxk5zSkgAn67gq2iJ5Di/fGEXI/poBfci15iefLk=;
	h=To:Subject:From:Date:From;
	b=TU+/G9fgC2HWtVMAbzwix6b6uoI+uTTeIHkyt5jW0p9Royps+bM9860ZQs2hlnSIA
	 GesiIqNNXhxxMJLcnHp0KJUF8yNPqNdi0gjg66cbZM+TXgEsQWQndurOhtmgv9VGx8
	 Rf1PBWZnKBEoJdbyrMssszgvDVGEdW7cxvWYPztBkt73U1VMLshIsvjdhqlicaKWxd
	 SjEe2Uh6Fl++iAR3m4lDZwYXElWJaqUn/ffv68Z6dSczJLoxQmPnLloW+B9FX6IEcg
	 B7vURFWVmJOcOmqQ/sVHgJ0EE983lLwEZ5HWVKnsumWZ5NlXSm0sPE8JJW4kFTImYz
	 R2NIqSZ9Vtlpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA253CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328605371.30629.8806357427072305773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973ce9b158fc31ff5c414ff2163703ab7930beba0b73baa2ccc956507ac99115
Date: Sun, 16 Nov 2025 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763286053
