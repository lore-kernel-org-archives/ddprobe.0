Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA8D2C95
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144743; cv=none; b=RnWb1aNXHbUf/GbcCxJPzsDIQZhmnS3u6zPtwi8VsnEkmubxnTeBkbjN1BKztQYMIcOy2NOc09WSrpjfBMEAdWctPqzP3rKy2vIX5D+27yts5VckDNg5P1Oo7Yiwfxw2pJzFx0z7z0MxIByhceH6mj1naF1BfM6AWc3t2/G4w2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144743; c=relaxed/simple;
	bh=2xRUgpC7sM5It+aotO3UtxKn6tRRNFc/iB1AiS4+reg=;
	h=To:Subject:From:Message-Id:Date; b=eUDG972cPme71hJAHqjE2BXj8vGknJ8L3nNepTnLAgg+s7QAlGbeK8oXZy3lnY+94AYNbGzWacpd1E2si9TgD82A7S0V0NJAv/sPuBNYyrCx2Zd9knM+UQ79i6oOQkoe7wZxTwYgoh6twvAvtjbf4fHGu7zbZejquBvcA+3LXLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYg+z6+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYg+z6+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA648C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719144742;
	bh=2xRUgpC7sM5It+aotO3UtxKn6tRRNFc/iB1AiS4+reg=;
	h=To:Subject:From:Date:From;
	b=GYg+z6+g02+k2pj6SDgfJ8iZ9fTDJfNpcgUrhFwOf8fBezrzWURBLns5loFEZYhqR
	 de1z2Ls6TAwWnrRvXyBx9OV4UG5AvYzwPWds0aCAY8gcAyRblQ30WTptfrJeGifOgS
	 7mP4TJvHBa423zDHeg5Ln94t/G0FL2EvMct0tV95IuRqlIcxGEtu8nn/cY+LOK6J+j
	 qs0CEqmdS2ZNsRO+OuutGqihSXdnHdvfpFKv7yfQUQEqcYYkLZ88EX4noeeZqjd/82
	 YeUc7TZuL0F1KAvW/ccrNKPHt+9vp74KwAuZ9FgeUOvECS3M2SeajX5O6n62XLkRAW
	 qgJ8HI3RXs0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8F8C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914474275.11729.5978637025842300360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaf3986139edf2084f80fbbf4915b26947df71da14071a9016a7af17cc2e0ef
Date: Sun, 23 Jun 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719144742
