Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A532A1B87C9
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786845034; cv=none; b=OnCK9mPFj9CVUfkzl5bLC5vuPBV8HvgWNHhwUZUnKTDwl+zcyI/EtWPSLSrubS6uJlhKWElIvK6G9t8z3dJFG1bkCPoyvS+0YncAmhQ3r+nvvmIh6OLPdTkEunVkM9ceq/rW8DO0YmEypoQzt3doGZIAdi8EAe/2T6CVdn0y24U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786845034; c=relaxed/simple;
	bh=AqZP3fGgGPaze3GQSVE0/ovS2/Nv6NRYqag9bTgQd/s=;
	h=To:Subject:From:Message-Id:Date; b=jtnGyuhB++53S5wOkJPaHag2ltroEt0Z6+xPt6h50UYyyjD8TASvHAm02RrZE1lo3jRiZ3G9I+/g1eUobaArXXJ4Ts7LmCN/t7Z/tdK2cigN2F9m4ilKIzu8vPi4STrjyVA1RKqOHtTDKM70Gly1JvrDH9mTQZTtHTBhwUAKjeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcWBOEyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcWBOEyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB80DC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786845033;
	bh=AqZP3fGgGPaze3GQSVE0/ovS2/Nv6NRYqag9bTgQd/s=;
	h=To:Subject:From:Date:From;
	b=HcWBOEycRLU8K5q/aJv2DXJM2rJbMQ3RSYmHufUlgtOzsmrtXXDmLIgT8e7Bo3jS1
	 9yinSfpHLXkHcjmWyQYjGuM+925YP+37lmW9JyUKE5q0nQIUQOAJylwkoVmYkkyd94
	 qCAt41nJS+bgkg2pjaTvwbxROSREfbXvc5xOLak9TVhNLHrsVKKhzSGxUoFC7+X5lT
	 h9DmUwBwBTOHRPSW9wumsPQkyeu+/nSBj/nahwK0lp08ECBXBUiYr4WFC3AoSqGHpz
	 nOB1XMCukaASj4AYsC9kgzr0V2YEX7Paf5DAxhEJdKkODAaFc+L4ZtPU8uh5fZQXDO
	 Ix2ncRw1ISe1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2313C5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684503370.29821.6497044227153290102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e98f0c9287477f4d0eef4bfa19e0e83ad04541922039b03cb6db5f4e3c5697
Date: Sun, 16 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786845033
