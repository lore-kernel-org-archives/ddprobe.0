Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2773F1F237E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753947594; cv=none; b=tBj4dVvGxt51hqSz3W2sF5M+OG/7HePqg5TsywOyz0mb0HzEc6+dn1tBLCd/+7zlUNxmuUFZCVuOv5W9Y61nGUSxUHuS4vPPU5YKf3C8ieuYzwHjSB2mhCw8ud1r8FNKRIckdUYgLnb1B7BjXLmuJChHdo2ntBHHnrBWUJmMwrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753947594; c=relaxed/simple;
	bh=qXDxYs1TyMhqPSOlX0CcBUDlKG4LEOHwuGq6m8MiJbI=;
	h=To:Subject:From:Message-Id:Date; b=FzP2Hj30+dqq0s7ECHs4WE6ZDOVsTXfxDbaXEFLlrnx/OVKR/OZ5KjLV1iCnRS8TPIA0qvKANTDLKvybxbsO4wnRPYcwX6KD7+J8yboPZ3v/dEX0Jux6wO8wxByAhO01kkXANKjO/L2TG1F3bxIs2mQO0E2A2/boAMQ8+b0J30c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCMYIc0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCMYIc0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5E7C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753947593;
	bh=qXDxYs1TyMhqPSOlX0CcBUDlKG4LEOHwuGq6m8MiJbI=;
	h=To:Subject:From:Date:From;
	b=QCMYIc0Qa97xE6fMeWTVX0nQcg1It8GN62kfwLDJnqk1SLXpRYjArc8miZ0hva0/q
	 8zoecqQHjVTgJMl+oGARjlAkkSG19EhXmeFNDBcGrRd7CHOX93+WCrhNYKCd+M4YlD
	 CVqiWgx/YEHVV2Sx1DR6/sN2rUSQs8mZav9meeWEbmJTJern1gxf2KcwvFguFAN4uL
	 fgJe2nxpsJc8rkgs5YgMn5hGFywINNu2JWwKTSrRq3L8mcnX0Wa0OwInG7nlZUBf/O
	 yX3X9rhiwuQ2bu/eUA1CuR+qYkGQP7kM5oGMy0tOnbDa58AwF8+fO3qn7mKJwufUV1
	 ef1umeO5t9ziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E044C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394759357.22807.2345382488711665346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01fee4b30e853f4ff1171eda16df4bd9a6672f76d459da17ae170c72285d715
Date: Thu, 31 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753947593
