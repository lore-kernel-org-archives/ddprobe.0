Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A141B3DCDAD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785310834; cv=none; b=Xcf265iBeXnKAEjNWmB9RhDQL6BGKgph8KH2x7HezPSxiImYRo4748HCNnqOeA5WtDYuIL17/fOHB99zq0xvV8htBPr6fhmawOnRmHPik/oO/oOTy+IpU9KWmMuyPSFTBq1yOPKbvI216uRUbQa2WJkErRHCQwU+nF0xjeS4Wpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785310834; c=relaxed/simple;
	bh=i+jfAMJkP9BiCxZ5Pk6CdHRr9SyMfO8KQGDE/DjI7wQ=;
	h=To:Subject:From:Message-Id:Date; b=IVDP7VpX+4Nmph5aLaM4CZZIo/hPe/PtQu8+iOkXcC5eAIuwxmlu2mMDF5tSscb5xXIU58K4nl4BgkIniLyRFKrVDNpCr960hNbPz0m0HKMKfAq5T245m3IisaiKK1fg09Uc4xo1PzhaL1EP174u5LzAORMJgZnylvSuvWV8vno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5DsXAMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5DsXAMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB6EC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785310833;
	bh=i+jfAMJkP9BiCxZ5Pk6CdHRr9SyMfO8KQGDE/DjI7wQ=;
	h=To:Subject:From:Date:From;
	b=b5DsXAMOk8zemkSBIxJDKbk82QpbbJI6JYyNZ6ILpPvrtiXPSkKuHz6MJk3Pn/klE
	 swy8bOrTkpreoGiIVn/PPTjzzQhsE4mBPl3EPWEswDNI9w0Qrh+9sXbDs4/fIE5xNR
	 c8PzSHGHta32ISMu8svdgFUZrWcKj/CbzWCDnsPXvFAGdRl/4c2eCloyspfRRlP20q
	 2wn+3HHmy6oCrjKn9tukcxGmeajZwdzxZC98HNqm11WtptQaWcI3EDIS7ELx8/Ja7/
	 2/UA4Bv78QZKMB1zttsHLV2lyYh/D+l8pJnQHhtGamS4ElgjXiT1MkH93dA8/pqr/S
	 uW75GqASf1NTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DBAC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531083368.11421.9376450006228648180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b90d4a119bb13b3645586069bb4a13d83de369adf713b80b0397e005532c69b
Date: Wed, 29 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785310833
