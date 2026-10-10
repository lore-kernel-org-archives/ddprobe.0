Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5346F36A009
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791676234; cv=none; b=fnz9v8hYDzs08fNkWZKIz5DayLreMt2yOubPouelqrKWRs2rSAB7ZNqiOdYr31RVlW125He90I+5EmkiSuYVzrXpPWE/6VOAtiiiKuX2fSwQZvUXTr/0vv0NjQxLlgD+u5lmoKKlwk6MfmR5r99DRbmDebDm+/6/azv2f/nCXYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791676234; c=relaxed/simple;
	bh=VPwvO05XXW+vg5pV0iyfiygNpoyNtB9ZtB/o90/Aqs4=;
	h=To:Subject:From:Message-Id:Date; b=RaJdh84sG6pYQiXbt69Se06WXMcZmrtX2P0C+AyYoGIKP90AORa3N38MYWgzGdZlknzwvPqDsUtzINNggDmPk6Oe6uHSmAFrQiGdeeynBalVGGYMu2idQjHEU8Qq8+V9CmM0BzgyyD1sgXUTmjvfBtaClhEFWIkOJTJGBpDeTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu986uzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu986uzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB190C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791676233;
	bh=VPwvO05XXW+vg5pV0iyfiygNpoyNtB9ZtB/o90/Aqs4=;
	h=To:Subject:From:Date:From;
	b=Pu986uzTexQWJjJ37v0ntauovnvXZqnBmEtwkCvPbj3LbkWDYHieFuV7yxd3hKcai
	 LR36M0WrGpsSoz37Zbfd+y5vY0UFy/vGx8kHY89XVx6uMJAY9MpRKp989oaMVIBmSZ
	 MNErtCGdgUzIdGbi9bfVEqnI+XRyAom1Eki+It3VYev2en/NQVBWs4njrCQUgKMo9s
	 cFPJYvPHiU1JKpHN4PxYnMJih2k054kKdb1fF8NFNQZTCcegQo7O6vwQ2v8X/U4sqj
	 3L2J9wFe73YryAhZUfmOhtVxjOTNEKQfhsd2eGeTVYr+pOwioWIkrpYjCCgsnjoxza
	 u/6DFHn7Nw8nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D3CA9ECA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167623368.10723.12481729625550687735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd34bd16d3e2e4fca6f6ede4161d7809781bcc1d93fd606f7027dbb97316a0f9
Date: Sat, 10 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791676233
