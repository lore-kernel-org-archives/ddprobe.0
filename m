Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FAB352021
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788819034; cv=none; b=tHYC7Q6/B6UVSs/WAE+tVxk/9aoGw55xTzU1NBSfYoWkXb1Xs7WhZyex53mXT7SNWpXsgIrOUJ75Yr8OvAi/Bxy+WIi5ode/CQJCtqqz7AmrbOR6xrTbjgcb60+gr3J6FgBifBToebFWAnGFbth0fCBem9bXw/DGrVmEvGr0JsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788819034; c=relaxed/simple;
	bh=xLziye+mLNcEfAqDrz49jDhUQGBFM1WE4wGRxRyqlEA=;
	h=To:Subject:From:Message-Id:Date; b=nwPtWhThbmDDTInjOFA9bWqoM8k1/eHDC/VYx5Kzp3uQCqPIERSC3U1PYB8BB87y8G656PZXWNdDHHj6d7n24OhUeiM2ktyfxqq1YGfgSE7j3u818JgpmY7R17g0+y6tDpRPPi+evzMnoUBdwG/ZRGYhQV+VaLcNoWy31wYhdAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRTq0Nf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRTq0Nf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FBCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788819033;
	bh=xLziye+mLNcEfAqDrz49jDhUQGBFM1WE4wGRxRyqlEA=;
	h=To:Subject:From:Date:From;
	b=nRTq0Nf4VC/Joj+dgTpW6cyG15qsqMimYxJ+kiYjqb2wCbw9MLZkP4wxrwndBA+rD
	 xdevz1DA8vQ4b1CE7TN1YaVSn4AUZFCQQfkynK0BsuAlEGTipgBvbb7+wbtvxsA/B1
	 hNmM9BvYrz52Qe4SQWSsMrlGX07UezUtetvl49JuvI5+oSZerDTQ9JbJPojuV+mZlh
	 KyMw/Fz2ckpheV9ER6ccRYx2/PIdcUJRhZ+3Mk0ud4eeJokzDGwDnuFmEu1zkC1By6
	 L6a6dAEYZxEhffPpTEiCcjZGxFzOpW9T1zFQMvJH8Hjz5NQE+lCvSju+RAKPwSclzT
	 osA1SvWrtxDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD210C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881903369.9645.15184680812651406319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c289ee4242e4d7583c89a01fab3c825540b381a0f2852643bebe111fb59eca3
Date: Mon, 07 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788819033
