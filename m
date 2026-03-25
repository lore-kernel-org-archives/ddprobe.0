Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E253EFD04
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774455294; cv=none; b=dJOQKAEK9/Vd0DtO6nGP1NzslX7iUUqGNsOl2P2E9+HC2MiAOaURLPormJdsjWTylM4FCj3UbX92PYOFoF6DQSBsT4YdlJK+2yVFg3O4Rdo7NtKsbxHlKRsS5h0P5M9bnhLuS12W6SOGf/DMxJ18Ko+U9VEWPECOLk73AS6DEPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774455294; c=relaxed/simple;
	bh=IEHYAt3HS4nhI2qdR6qVpfAh2reckiOEIDqpxqMtzA0=;
	h=To:Subject:From:Message-Id:Date; b=M4jNB7JEQSiglPorRxRj+aGRIj8sQ3xITpX+9SdHWv7LnT9qFPF6D3wrOGyqSM4LcAOtGyJ4TNiTlLIHqFxDPoAlzgrrbPWGMF3Keo77GhQOCbfLA9rYjtj+kUfQ1tZujEmXeDQClE5Ron+VxSY9XL0PVz/ZsDuD++RIDsY0YjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmM/Ancz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmM/Ancz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D9C19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774455293;
	bh=IEHYAt3HS4nhI2qdR6qVpfAh2reckiOEIDqpxqMtzA0=;
	h=To:Subject:From:Date:From;
	b=lmM/AnczmhvX0UiGRkyveB+wbu+1oQc3PQWToGPVJBms2GdC1olbnEIINIXJFu2Bn
	 FgglKu1NPWyR9qfnQk3FMKr01oYIGPyrvS2bABct0Mfr5geutLB3pahvpRrA/hypKn
	 701x40FFAs4c8j5KZbtqYbDnPQ51SGjVauZfUzZ6pL1/uPhZRD9yLhLWdULCp7cAT+
	 B69nkA5Pcj5zprlvPmVnSn0Rikh/FeoKLsgYOo4tfSw7D59uznwnb0PkktfsUcB2EU
	 2cSkk8Y5H3/A2kuEnJTCei0q8rbOmzwy+dyS26IVeHnWYstU22RobXdr4SU7fo0tZc
	 5bWGDfG6L+P7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D75109C036
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445529361.4546.8578549679348720265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5153f1a27cf8a66c76955f4fa7419fd80ed4857592980df970563fdf36847cce
Date: Wed, 25 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774455293
