Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ADE433AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764405774; cv=none; b=nWsjGStQxbPR/TtNEdNQAJW6nsK/Gu2miRGktMxJeB8BHRbRqHV6TXLGUzG2vUmnac4dABvwWLDGqclCneLw/UPyuj6w+CtOrvOivtejDRvzMB9Fa1tfquLWzlxC4kxbJiJ6GlKyahwfXb1JJltKOUXYcMlOep8schqGH+39Oks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764405774; c=relaxed/simple;
	bh=9jvj1a3QpsDaU+IxyZWJ/dtA/lQHTBqmcGtZYXfM+gA=;
	h=To:Subject:From:Message-Id:Date; b=orxFG2wJktjlL40vAougF2BSLjrFKrsgtOf4BX+Zkss0xur5HghYw+Onl5q8SLUS3b/gWJoodsXrTlwIjwG+t/oCW+Y2TRFhJDzquSQ/Ind1zp2k2K5CSeuyJOz01+9EiKj3jQp4DMsFvehBDr+85TGxg8esPiwQW3d5EdTHJRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKQXJWC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKQXJWC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCAAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764405773;
	bh=9jvj1a3QpsDaU+IxyZWJ/dtA/lQHTBqmcGtZYXfM+gA=;
	h=To:Subject:From:Date:From;
	b=qKQXJWC9uMc2e+2sp9yCZ+nHQTsUHTXAlvszTymDuZ2lhn4U7/rzLK9L2jD+pjsjm
	 xdjg2HJJVL0KX3aDQGNMd11Tp0/x2O+gZwK6RA0UJL5e9+wd2LDRRipgL5njldzdA7
	 Q8QnNHg4KGThy2SzB+YnqwV7csH4RnGb8uoEHzi1JM5NpnxlSAFryb8ljJq2dnxTLA
	 T/5bhYzkSD4l1bX6/TvqHRbY4HwbNlR1H4HFhSqClsK18SMer460lreUpdmdZC9kev
	 7yw8Ygy0ooPKqSjMPoKUCEnCoO6e7nUQtLmXuBYEg/z2S+RutytgavxJ9gBTdDae7j
	 Fb+/PskADXA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97536CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440577358.14160.4729684647118544169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa5edf0927d52f4a2691ccf6ca096d6fdee70f4b5ee9a6f53e100060014bcc1
Date: Sat, 29 Nov 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764405773
