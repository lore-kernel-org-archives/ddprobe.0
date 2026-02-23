Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DBC18C008
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771851294; cv=none; b=IwMb0y9/IbOz8viCfb2bVhjvsnkJtRPYyO73kk2SbXHRjgApCHYbq+O6WdR15vBJNA0uBAoe9ci0hybdROVK7mNbWA6IcIM1IT13vl0nF2c9V5kB51LnWnUkcOL7PeHkhbAWR+KC+gP3gIiEhU+5O96VPTnTpKAtgc8+S925Z78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771851294; c=relaxed/simple;
	bh=lS3e8M40Tb8T+Q0CV+YY1duiw2f/HD6rzxUBlaJ4DY8=;
	h=To:Subject:From:Message-Id:Date; b=lcj4mtmAyS2kRnP86o1AwKvAaojEN4PNkM07bHLKin8czPh4Fv5WReEP4BVz5kTGf24laQKobhD5/GOv0d6f6thZbcfi6VYsEaeYDFyWyOC0TJP0fWZ1laEfUtM7svqNExEnB9erbVPOpUGlG7RcHoSGBbbQHSa/uJIrQLYTSzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQOry5+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQOry5+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EFAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771851293;
	bh=lS3e8M40Tb8T+Q0CV+YY1duiw2f/HD6rzxUBlaJ4DY8=;
	h=To:Subject:From:Date:From;
	b=eQOry5+AEAwL1guJf6eU9yqhT+IIx/5HA8A3LHSTWYAqSvr23rUB64W0yA9kzRg3C
	 8aX+lqL69fXmsA+IUD9IQwTw0A8IYEcDn4HXats8ArhDQ2G/tqOQ1oOShtffoRpfFY
	 TXL8qKacgV1SWYSyi7fUJ4ahKh4RwOHEjaEuxj1tOFp3WCKumasB9z7/NlDeOWb4fK
	 05Wmsmks3KUjoQyjGmUXUcNWGbelgSuhH0EcDdOBsCnX9aYtOsHpswbCHuypuYGfL/
	 1zTKZovRxp+lYwnUGwEXosU3Q6WZDABdrU4HjyVQj61i1eAzXf20Lg8RHVM0QZyttD
	 odEV6DiUcUKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C00FEA4FBA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185129361.12679.3233863419135727350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5f6df6b906a1a455cb5c0c6f3fbb0af9297c7446bbe85104a208998266c6ca
Date: Mon, 23 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771851293
