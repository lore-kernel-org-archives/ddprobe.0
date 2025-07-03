Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5FF4414
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751509195; cv=none; b=Q/C+Yr/+NBkpeTn1MVztKoPVb7yvM6ItumqqvxlYjrMxQoERePKyWk1r90yJ80GPbYHlsRzggCAq1MNBGJB6X+NoiVQUXurf7N3oorxKpwIGs5JdQ3wtMG0+M8FZOrgq1vHgRHSdIwsINotxA7iNTqHl9l29tbQenvrAFyLobI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751509195; c=relaxed/simple;
	bh=6aIetpw5uGzOTXiWIk3XVXrtxGyL1MgihgmHsXD0Mr0=;
	h=To:Subject:From:Message-Id:Date; b=BYnVgs51KbvN3DitoW+du9M6ZLlwyRZd52GkLBMFU8dw7BGoVCcaBKp6MWz6gzCdJanSi1C8DtiQaHtaFrypdYPbC2GS22smN2DTrx6KNR87eCJusKFlgkSelwKZp7XMJTdfKntD05/XsDfSH5mRFQKU8w9n5jLW9SKDdmE4rfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c29FmeqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c29FmeqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751509193;
	bh=6aIetpw5uGzOTXiWIk3XVXrtxGyL1MgihgmHsXD0Mr0=;
	h=To:Subject:From:Date:From;
	b=c29FmeqYKtZJtUupZZXMQ/uNUDMI499GJyS55YisDONFHvk6MJR3Oh3LKtNbbOzxY
	 IMvFYblAQg4mfVrWLVA5vK91gsskulA2JN0FwqIqCt++2T6v2gLPYpXTpw22hK4yV6
	 6YCuUpa0Zlg670Sl7q04rXg2ZHKcaXFctYpbBcCm3JHYzGz83qDSy+i5sL8eNyPuxi
	 0J+/cpuQHKRos/aVgBkkTiqaqavyri1mlBRY6K0Gy+9xhaGk8j3wLvxa1+d/a6UncV
	 lF1nZDVWJqAIBlti+S8ip5Ss84KvSueqWV3/aLOQfDsrBfgU4slObG1D0rs2OIMepE
	 8obmqjsVNqyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94023C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150919357.23426.9841136886873329863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d8dffdfd597ae51dde04afddfe5030903f6c622d432dd14bcdfdd5fa4e3cee
Date: Thu, 03 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751509193
