Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4D8337118
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765865574; cv=none; b=E9rfmaki3Odfxa8jW8Eu8b6r3My5/CdxCxeAzzg1aQc7JpfQ4+Sx6gpjSd/igc0i7gjRx2cECiO3fDx+FxkhIEaYcWjCvBd3vMJqPDnLlOvuMaHt63jLmUA7krFDryIoKoSxA974d5Yyswc9+h9fGhspr/7lK5J4Cn0YqqAomz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765865574; c=relaxed/simple;
	bh=KtfWgkfDSw2DSUvKjAqPzWhvrN6IHgdCXLMX0vkSd8o=;
	h=To:Subject:From:Message-Id:Date; b=AZH/26nARzRp6NHvnAp8+gBXrMxeuxDSvmXqc5lYLbkyWwjeBBea2KMLIT9G731SUnFzdBHgiuhfTQ+i7AroBQf2vQySe/LxFZBPgHG+895uKTGqesXapunP1GM0nXZXdJqUqYNmuNIUoze7TMGxXsdSsbTcRXaZJ0rFt89PW7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeVveE3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeVveE3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3E6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765865573;
	bh=KtfWgkfDSw2DSUvKjAqPzWhvrN6IHgdCXLMX0vkSd8o=;
	h=To:Subject:From:Date:From;
	b=aeVveE3CbGNeXKiFMLmO92ENqH9qe6PqGhJsad3QOpxNvWyYTKdmLbPm5N3jy4J8t
	 +0F0f61OmEtCi0VnI5kjGoYR30t4iRon4o6UvorRLivsKeHuDDCOJYlQAJkX1q/bnJ
	 N7cda3Cz619Bo0Jj/CR123wG0vteQ31H9umJODycg/wXILeQi8WeLHH4K0a+VzynF1
	 IEWXECz84g3SeRrYzkgs5UE2UjXXc0hhEP229Y/tC9db05YEdPKhXmH5HX3r64dEbv
	 WAQTBKFjcitDyk2mTmuGkSAZChSCbBuN2RO5Nkg3BndRI7irFWzzW48ra2qq2utgms
	 1V0y8JyfI2+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A01D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586557358.27387.17339078744762439352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33644286841f6c53074eee6e37197d0d5603c3aaa5e783ece956e33415748aea
Date: Tue, 16 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765865573
