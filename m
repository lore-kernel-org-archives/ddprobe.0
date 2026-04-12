Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B3428A72F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775975254; cv=none; b=ACbCRyXZaOwjrk4HmcLzQPgE+u9jWVYdQBWTmmLZFoP0cnd+1E66BJRTgACsl9yN3o5d4j1uInae4hmNEcW5v7edtfeBsPHMMXwGuhR6tbyl7qyZn+wkYzq1L3Na1UKdP4x2KKaS2wOamZK1rwbHWfWP5q7hyyiOhPYFrXjqRdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775975254; c=relaxed/simple;
	bh=0QFEQ1pmRmO1WHnfwHIhb3V86y46xIsiRPkcj/AaYvE=;
	h=To:Subject:From:Message-Id:Date; b=J7VHwDJlV9hk2HEQztYeRL6K5+iv9kq3nkimNLKwgYPFy6s3y29FRzsHsLn+r+8zEI/sgGm7oMD9Rid4ThQTqQGAGyPB4zcqkWAgu217jkJ4+/Mun0cX3PKgRuKnavirnxbMtrWqtaNYeLZ0B2HOEs/5mlCsaa7HrjbJ+sJEblQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkKfW5Nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkKfW5Nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1600C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775975253;
	bh=0QFEQ1pmRmO1WHnfwHIhb3V86y46xIsiRPkcj/AaYvE=;
	h=To:Subject:From:Date:From;
	b=TkKfW5Nqo4ubHljRQHfBaxpnnXWbcZv++cfxVIyot5WG0AYhzBaANS+1zL4YPu0dg
	 3/sLAtFioqA44upuDTUCjAsiYf+s9ihKObNwut5mZVgkjtQk/3yHyKfly/FH8rFPWG
	 j0RhkccfRyVm8h2Ad4uNOX0tVCTTzJpYEW0FGD8NEjEy2mUiAKgMbb/wV+kznHWogV
	 u+qKkrCioEbShVwpSpbpkUYLoRP6uq3oQBsVDzgsGrGqKmDfcCSKTeQZ/6Ntww3W/4
	 47RTCSpySCuC4GEqvHj4TeQDYWLPBG7loAa/EkTmzTepdKuji+Ty7HRxOUpS9V71hF
	 ZOgdbkeMCsuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC6F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597525368.28820.9507899744904963985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47869f4082bdc227d54072682b90e707caa13e8677625daf3488518e2f4e61b
Date: Sun, 12 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775975253
