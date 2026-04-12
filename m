Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB8D54763
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775999254; cv=none; b=tNfIE1IBN+mBdFMppMWNYu+peBxKS6440ydquFMkb2hP1gxer/sJUZFv+B0hUvMOc405orL+Xkt2c4hNvPr+z3n6p1ctlsCZnLOAUnCNRQWYib6OA35mg9apmg64qPA6XqHyMjvQPDwPw8kNfZA6c2yLPPMhqvUaZUnLnKPIOYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775999254; c=relaxed/simple;
	bh=g1ihY8jSODaVEroJ60fTCXPsCjcIpFt2tEJMxWd+zDw=;
	h=To:Subject:From:Message-Id:Date; b=NQF5RMyLO4uqLgNrNezRpHccmlxWTr57dTUubC/lqAvGz4c7bFOWTCogo5N/NfJMQORCeLZMGQWylsvzx1Oo0JUq6VXLnvMriDmZ6HKsrgLYrCrSTWLV5/5ov6wrvXXRj6E9JzMPG3kHd8rPrN7D+0J+ZhEXUnHPf74T7OzrSzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Id6rofzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Id6rofzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A5EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775999253;
	bh=g1ihY8jSODaVEroJ60fTCXPsCjcIpFt2tEJMxWd+zDw=;
	h=To:Subject:From:Date:From;
	b=Id6rofzCaEE0/7YRFMtyNtv3tXUwk7MZaHsQGQnq3A7/aQjHl7q9cijUEDAl1cV+L
	 lA0xycBoyE/9AD8OcT1t9smH2mf1s7PEhASP3wDO0XTGlH/yAYAwGoEaUkY5iX3dIm
	 N7oBTXszsDShfQBGqgN/9O+XEBAfTpXQfBcyVW98sFHsFkAZtiSnaX0UfgUBO77ovs
	 DSWaFaheKsiMRHmh2QRnj65DucikaQiIj0BPgxLbq3Rgd1iKuzcRmjug/uladJI/7R
	 +xS3Xe/SA1i5juujlQsdFdc//btRxEhiS311uHRrhoR5U/gssSz/jYAR0ItJ6GmVh5
	 tJrfFPmIi9Jrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B5FE937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599925368.15138.8517795561966702846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fdc7c1b7c1eb31ac18b51b1f8b0853e17046f34e1e17fc1e3f3121b93b392c
Date: Sun, 12 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775999253
