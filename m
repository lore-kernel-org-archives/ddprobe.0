Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BE820E007
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742887794; cv=none; b=mqhTXfTLp7cwEbC/fFAKDm6AbsjtVtwPdjJNkdDex5nTDLfeAsgzmZxBTzH25utzpfWw0v67ciiOfYQP+GQ4enRpt+M2krG5PxuAQ8VyLvpnMNNXd8ltD5Z024dV/jYVBUweZdVOQp7X00N86rqJEM+CazFVhx/ABzxqRGhDtII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742887794; c=relaxed/simple;
	bh=Aexrr2Q2LQlprMlSbmZCZmRAlF5J7nnzKdBV+ZPWLgo=;
	h=To:Subject:From:Message-Id:Date; b=Gg0baov+QiyPWdywVoNPr1Kb9x73uC/cnZB2nQGxfc2rbBclUrDKXWZ28ZOTjewReeBjdS3m1S9t3roAKeEGjkpSzL2FuUmtcl3gWr9c9T9gKCh+B3pwH095YsGxX6lzuDLGuabygvhQcc4hmKeuyUy8+FHpbEZFhOBfr9Roo0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apfT/ET1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apfT/ET1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7181C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742887793;
	bh=Aexrr2Q2LQlprMlSbmZCZmRAlF5J7nnzKdBV+ZPWLgo=;
	h=To:Subject:From:Date:From;
	b=apfT/ET1RraqFKBvDNT0aDQlawtQmA1PFrAhONP5RfvbdPID5WA9Y8eNsnkHXNaJn
	 R+UJbTUD+sFhgTuFeFhLCEP1p+fWr97fEaIEEUB6d/UkJ5lFHjBih1P25XmjkDf6gu
	 dFUJEGPTY96iPU/ph3kgXY0qZq3zUIgTUGv80wSLsKFIrdzDIjKkiO2C+lAtCxKFFw
	 G0oXDI9kroLTg3Ga6LgUaBpVhVbHnq0fehCqzCAyzs5UPCd6TqB6lIUCOA6k/szmL8
	 vS/F1gCO5PS2mY0u8bL/YtPyoCHjWtO0W4WzI+ukAQtTg2GYRFo1IE/JAfjaYl6kg5
	 JNyYp3AMzDB7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0FFC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288779363.7609.6066454799056491783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f3e60bac864e71d9072fd415a737a8ef2426e4dfc5099e893ab3f0f50817c2
Date: Tue, 25 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742887793
