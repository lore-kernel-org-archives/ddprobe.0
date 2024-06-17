Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484C423A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718591303; cv=none; b=X9Xl49tafr2TFS0z3L3m13uC7wONkN2tVRsi7k/mFwFssMj21RY831/B5ATUpOqPL6ayo/Q9CdbJbZzMaQZn4gMaKNs64rlhWqvyjKjZFFW/9SDZ680WpgZIiWs4XlOyJNcgRqTY2d/OxWhqyHcQC6sKsuf7XmGTr32Sx5iZcsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718591303; c=relaxed/simple;
	bh=rOP7eilEj8zYDdn9dXpYsWMXTsDu8H1GPBRSPiQvjs4=;
	h=To:Subject:From:Message-Id:Date; b=qvePejpEmnaPoxChrfYu8jtEXmenZx3yrl/TCQjKLphh0U3r6V2C7z+C5E2k4ium+p+7ljurqDmc0nCINqZDxWF2nIcA3oWcHOkSFbFEziW5VIEwRm5pmYpzsyl9dOYJqIEAudT+HK+nI0K6yhqKSjdZbikwc+DPzwZxqSF6ziE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTs4KTYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTs4KTYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92D6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718591302;
	bh=rOP7eilEj8zYDdn9dXpYsWMXTsDu8H1GPBRSPiQvjs4=;
	h=To:Subject:From:Date:From;
	b=DTs4KTYSqgMoQyTW3npzmZ4Hxc9Dx+btOx1N4dd7FaTrSiRGp8mbeMdGpCb6reOJq
	 bYcMOg0v7t63UU59DWhr6Ktz2vCuyCF1Oi9GT0QMIOXHlzsZDn2H2a4U6Z938CMIxE
	 Fg/IYOLQDY52s1wwj/iXSBQ5xH2hHi9i8b/T3pXBFkJ4TBWsO1e/U33uoIUHt6kX+F
	 64Qz5oa21XZM1wHrUz9prN1TN9EYCGn6w2njgYs1GkPr0CpikEmFagmAb36Z4p7Xta
	 icTuEGLXWTycpsXq92C/BnfFHVd803geMNqAnd5Plmg7Tty8nRO+wSs7D2z+NNYZpU
	 iBO5QqG6Wa5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E00C27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859130278.5095.12472618183166700815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aca3df3fd008d2d50f8c6463bb0d9744d31e009f5d2f3b2df51fa67c33bd853
Date: Mon, 17 Jun 2024 02:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718591302
