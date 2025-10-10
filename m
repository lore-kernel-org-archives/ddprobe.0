Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34131BA3F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760138394; cv=none; b=MfXpOAH+3bk7AO2UKWSRFQcRiWPj4rOA+kUo8ItvC+Lw+1OZQCSpOcc0c7AOCy2jZCRZiPFB21PPmi3GkgBKzW5mAL52SIWKP3hhuD0TBViv8JoiFCsb8ORQFgNiWi9OND+tex4F+sLmbOU7jgKVhi3xsDmeqpXcjNXQcqhlgFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760138394; c=relaxed/simple;
	bh=BUQ62Ks7j6NCFfDkuM+hSq+RaNVJ8uVVL2QdAXOcGSQ=;
	h=To:Subject:From:Message-Id:Date; b=o9o94l2OoaqxgRLmq3UUoHMrEAG5ZhtHeIlw/xJyeff5FF1PMpRURL9lnuXm+N+JAXhLjMsm+YPwN5CBBZs1XkSkQiXukhSNrxpv3abwoj933scK3Pxx9SgUuAomjlDrI04RxwWJlhY137JanxMoyj5f+dPv+iHBBy+IsNIfJGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMnlNyOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMnlNyOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A868DC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760138393;
	bh=BUQ62Ks7j6NCFfDkuM+hSq+RaNVJ8uVVL2QdAXOcGSQ=;
	h=To:Subject:From:Date:From;
	b=NMnlNyOzWVClwNtVw9+cfWQp9fnCoIC1DRSm7G/bsXUwlWYsKOg8FMCobD2b/5czJ
	 kwUgxThKL1Klms0f3XzoIqQVhWCyZuLrKbuUUO1jrfIOlBK53F0gGe6kdBFRk1E0+O
	 Ehflqq0q2yDtqQF1U3gH3o/KqMv7ULdeQHKgB30C65TeplrIRSj9tjy7n84iR60Nzf
	 RiDnTYI6hq0orRq32IzBjsA9astEPAIS8dkCVh0BVmAufWySq+SCdMA487bieV+KxC
	 nY+mZyry2FNAeJ0+YggsNUao+LBRggJzibqb0NtEkW1+qE+GcZ9k2inkCUI0V+4I46
	 yzkOGx4FMn+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94776CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013839357.28095.3155082801592523005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493a128a5e0eaa994185d82b16d9dbc09424377bf21354d2f3b2a4645f9461af
Date: Fri, 10 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760138393
