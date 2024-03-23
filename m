Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7542940B
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711232297; cv=none; b=ZwVw6EuwIcm+uXUaR55v1roGcrr4Vr5xsdptc5d0yYn3+/ZOtxZcOHH0A9RJThijjioJnXq2OohKKBb2r1ESKZ+2MgEQx8mf9GSyX1gGf9Khg1dVWuOpYm97HfSeIObKcDgqs8Jf9ONWGXUTKk31Jg+PV3PGGtO0bwXrg16wy1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711232297; c=relaxed/simple;
	bh=NfTRk0mQk6FyytQGcFcGihaNPh9DzyJOZWOUt5RhboY=;
	h=To:Subject:From:Message-Id:Date; b=uaKLvVA7XSHZVM7wls88anra8EdTplxyDVV3aI69OaiTG0jc3Se78mqdqhvpaoz/Pwv6NwgQwyzkY6NSG6Oj0+KagPxivh+MHLrcYXt/Xqm/ALCZHNWRVmOuPmw3fHIriJbW40vdu7UUv1HA+FMvPApPd9zFzcmh/if3jm8xUX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oY7/ShTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oY7/ShTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F12C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711232296;
	bh=NfTRk0mQk6FyytQGcFcGihaNPh9DzyJOZWOUt5RhboY=;
	h=To:Subject:From:Date:From;
	b=oY7/ShTd8WWIT7iNTbvuMICXXIl3kdjF84PaduoAgZSbkeipCdELlk7WokSswxxwY
	 BRBr3evGqACXGffbyEenq/974eJbysyxN7eLs1TsvkO9e/1D/YqObcb5TmMrh+V+SR
	 tjmMcteADfcSAqLP7YtjcwDksj4nTDDeo/JBf5G3DeIDu5gYQgpOV2zuam/RmiW7oa
	 jCTjbM7L2TBoQyz3JAwoFv2JwJ/HnkUUVJ8ZA4qn/PgzbObbsrmb3Y/sbP3cMxyyTv
	 vbApREL+NBxOYbj9jlGsxWpiTcpAyEzXvdptfTx1wzhismaVrKs8ZL4s/IrQVn7U1K
	 cqDgtsSSH6y5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F84BC54E67
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171123229640.15677.7968745222977965394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0368acbeb9db93ca260a36f706a663b257fcfcc7394f13d40b37011d7801bb1d
Date: Sat, 23 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711232296
