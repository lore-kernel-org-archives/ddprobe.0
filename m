Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F0C42049
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770674034; cv=none; b=T5ai0YhK5jqrqumqaog32TiUC7UxH+AJksjpRRP4Iy+fO+a+mR96YZ0ecwCl9wNPD9Cz53HVsyQWU+D4uCSkHOu2kmuu6axvHBUC6fOFkUb5glcfjJ2AoMVdjZ8ksUO1wRI5/t8LTVBkOkP1vA6m+QAiGEVDTusDBvZKMq1rDKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770674034; c=relaxed/simple;
	bh=ny1m0bXOWCxNIztJhPl1Is8ioLJLD3PNQ7zjhPDeyck=;
	h=To:Subject:From:Message-Id:Date; b=jK+x3QJXtXo5Bbeh20ZxGMGC5J3X6XyY5FQTH4USzBFIZgrpFfKFS9wMSD77FRxX7ffkPVLfV12nzZOGk6ln1GWNK6t2uAdW0a+DNb6R4266jd4ywnghbpk7m3UYFBwzy/Xl07JwEPsBkog3GbwqJn+y9/QhgDuQeOFAF06nEJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7GIz7be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7GIz7be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B941EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770674033;
	bh=ny1m0bXOWCxNIztJhPl1Is8ioLJLD3PNQ7zjhPDeyck=;
	h=To:Subject:From:Date:From;
	b=Y7GIz7bew+bhvaF5x2fyq53YL4uaNPcnbzdR3IUqf1NHulyrEQr1VySsce35k6Dax
	 EoIbhgKNER+kWbMKNt9kmCOf6rf8O9Of5g0deBehSeyQ8Jey6lFI4e/q24J8zjCv3Y
	 n18u/5YCC8Q0PK7My4Wtu3bA5zF97wPvPOr2dvnXLhdX9ciLWyp9ibZQwYok8NN0x2
	 Tq5fyOIbTCo8tmipdpcCf9iMcseSBPydYipgjcXYLJM9HFQZe4Mm0qb0lNiPUaSXCC
	 W3CmzP+pwS24hMEM8QAHHSSLsMdjgwhKhgSI64uHC8KTu7PwxTdchU5Ct69/7ihieP
	 Yum9FUbJWM/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89EAE94616
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067403360.3697.12888612074832469030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8713fb3215ffa33d7347931205c3f70a60b14f7fa17182b369fe5f7c898c811
Date: Mon, 09 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770674033
