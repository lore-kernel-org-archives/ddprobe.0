Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B356A8A7
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715056943; cv=none; b=Y+nJ0lcpHeAYsnk9aeqO1bFIHyH7wjigucM8YIOfMVpt9PRIuQB9GJAkwc6P8h+AJWx9IhZQoZjc3tRMBtZzYB/LuIRWEEsNLrn8oMzH0pwu4rCSwMGK+qyYgZGqS7Z588Ul+4nhsaxg1fkwrALKc05p2fu7xPMSjIIZJTet5rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715056943; c=relaxed/simple;
	bh=r7lNCMFTx1UByvFJNjpMSfkkCNSEEicDcYGie6kKr1Y=;
	h=To:Subject:From:Message-Id:Date; b=NewAClCXpI+pcb3zIa0yln2Ldit48CpKp5X1qADdHYj3h2QRZlIgVnqgqBldGMPWTdzSRzSmD+Ypw14YwmXowrXF+bJV8JQ0Rg2UQQsJMO21ifxyLXnHPS92M+cWCr9MROJSerb/+lhMQ7eBVtF1ClhUzdK19mXEkV3Rmav/B1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRU5aAtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRU5aAtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0A5C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715056942;
	bh=r7lNCMFTx1UByvFJNjpMSfkkCNSEEicDcYGie6kKr1Y=;
	h=To:Subject:From:Date:From;
	b=qRU5aAtH/U5bXJFUVvnN3pTvpLD9/xTka+Wscw6NFu8aDY1zDKiy9aN/hcO6jSsIA
	 3UJFsq5FjJE/jQwK1GxdWwmaNrR4mFbyFb2/NZCzqCdk3h8eAQNzOALcgMEz09Ep5o
	 BiLnz72KdvcE2ao5PhYs/rTy/ST82nMDz6RmDnlDZT/ML0pK2A0o+OZY4/Jw11GAYR
	 sS9HJKFAbUf+pRx0knGZR7eN0xLe2y6W4KiJNcVUILjX/yDoDl8W5wZVf/edL8gUOA
	 9BUgnetPIQJWhPAkZikVFVVaSlvcsa8gYCzth6VzWrNGV3rSLy63YyVMgfbnDQPHiq
	 4TLnR2dTvg9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8835C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171505694280.20731.7059265577091102531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8880d0b6929b4c3fe295fbc21d0e0ad63e7fa6e9cbe82b63550cdfc962c20b9b
Date: Tue, 07 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715056942
