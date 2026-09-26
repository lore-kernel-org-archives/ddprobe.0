Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDA842E437
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790419835; cv=none; b=MgDW8aBprDa9XCCM6FrYMiao9ScNaodsr+kbOIt7PfCXX2X+N+lTpe49eghvbMVNf/x2QVSr9ZrFZWixaSEhvV4ZzRo3t0vMjnj2ySsW738Vq5EcZDEL+MP0U+Rd/IdIwFY+ho6Rgx1zVbeqAJN4x3+0Se90NV3I0VPr7yUt8is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790419835; c=relaxed/simple;
	bh=/Aj7FH2JkIY/f+qlQbaHuSiZtwd+thgJtjcsefKlCkg=;
	h=To:Subject:From:Message-Id:Date; b=ZsmrKWmCKpMhpBF883wor8ChO+bROiAVGasGcBTCsrMrzBBGLdzNH18jOE68iSF1dzsEPpa7qBDXJtsbUKg7tfAs4achEniMUFO0RhJ62D3bdtAo8ZgnFcWUHsFA3uyuqMfd7xitpkyHW87AoomQ6t+bLy15ut+ysZkkOKmTeiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWN51yE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWN51yE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79AFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790419833;
	bh=/Aj7FH2JkIY/f+qlQbaHuSiZtwd+thgJtjcsefKlCkg=;
	h=To:Subject:From:Date:From;
	b=OWN51yE9gJUpDSwlY4SIHhjyaC0wSCb3YcB4DwGe49RCDThivlPy8D8/++L6mK71b
	 0hnc8cmY/dZCc0OmdYxJES3eBlvMfFCcmRr3InyJtA0hgDEj0RaTU91msFWBAK52CF
	 J0Sgi5umHRxf4mhUwv4zOdm3vGcxTqyCA/i8MSDVtMrBRLl2J9f4WbTclmx/TkHwz+
	 CFSvkS/JKqQL5KXr3MKlbwcvMf2fkbmuDWYV9zdEwVwVv6s63u4xdVBBhpqa0c6llK
	 IxuQlyUIperAdiIsAI3Cx9W+0skXSXMmX9Q9wqaxRsw+7Zugo1hXos7OEF3so1I8fU
	 IuvGMa+ooYkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3612C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041983369.31230.4179784041627380002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe309e351ebcadcdcb875f10eb399c0be8eb31d621f412eaf23bd67459aa02cf
Date: Sat, 26 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790419833
