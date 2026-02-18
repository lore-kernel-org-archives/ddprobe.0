Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9D125CC6C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771454094; cv=none; b=ddFlE/fjqVehVjM9/3Aj9H7+ugTlX1fO+Q7TDHQnHRF6h/BFCkfKgvIQCvGRgSS+Z845Xr2aqQWYJjIG0xTvyUeHU/y6IRu5YU0TyBW5V7cDqaH3PpDBCSGMahyMyfDDU3l+6AHhCzcY16kYTn8R4sc1wb9kcZL0OEhPZZG9znQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771454094; c=relaxed/simple;
	bh=6fvjRYZbhTxb3UQOC8TZ4rKMctkvwttz6NRwl2GSRXk=;
	h=To:Subject:From:Message-Id:Date; b=Adl5t0Iqo1OOt2iRHbg80uj0+9YG3balKxpvM8hSCN1DKkln/Br67WEUCt/n1ziY+dq7vs6Lha09IO6W19ZaOXbqmEnotAXbTL5i/hGpUvd9zRDaoaAn1FA47kmaOQFGLoHnDAtIURoU6J1GZ8sT6QiFhIBbJynCU8DTzbzAwV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvZ/UAss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvZ/UAss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E06C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771454093;
	bh=6fvjRYZbhTxb3UQOC8TZ4rKMctkvwttz6NRwl2GSRXk=;
	h=To:Subject:From:Date:From;
	b=JvZ/UAsspw862uO9TcKXmS2EM3GjoK2SiJo9VFgBHhHu02PgVXtXJQ4JxZ6ao90zP
	 cpYxgo5OHgsHDjbjKRvPz1iP/6ZkrbMjOA4WJQ5ieMMMVd/QByJEKYBvPEcGAua5TW
	 dzvXpNYQr1LDG61S5ppLRYwZ0P5Rg5gfkoTltj1uLUG2TYfgGIDZ6bqN22FXMqmM7o
	 5diWu0nZAIOToAYmMufWt6Z+O1TFmak6NthjYkVAIP0m1205LNxw3E4rgRIAVzVqGG
	 1N+Uo+4AvcmJOSAjWRcUQzdjSIoRaG2HmtQbRsMG18WbApIGTzuTEPFVVmJxiLmINK
	 Terz09pUnqCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F71E9A04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145409359.16051.3620059758177430495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0aaae5a8f3030caef15564b55f6b6179efc6ae981e6d124fd1657951aa539f
Date: Wed, 18 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771454093
