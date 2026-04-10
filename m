Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB0A2E6CAB
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775837854; cv=none; b=IeHwBzo1qJ/TY+kJsJ9jfgupT0zXiHscRYhO7XV58OAa1Fd7uFTYRMfaC/WApNoqfGDzNJWSWrhX73IOR7WnfDzIs6IRCifSFpks/uPLKZLMHRs5Sf2bAKmzxVPaU1LmOKPSU0BcCkOUAiel4oPRltuX84Yy+mZGRl2d3jN9+R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775837854; c=relaxed/simple;
	bh=0qI5bFZEpHTRiTkZ+Q78MjNe5SWtD/WTn4AhhnuL6og=;
	h=To:Subject:From:Message-Id:Date; b=YgIaZbvnlm/Ps42MsjlOqd53UykLgmw0RilNuSmJz8ZQeRf9g7wgqZNs1OCt8MKmFtOksXWkgVorOwBLPkiXj+Oy9mQTHzsdOyWOntCyh/ik4hMmaWTfbh7rq9d5SB32HA6vL1gVqM1bo77p152nbaHTXhAXHJGdhfwXPfIb878=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6N5nZu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6N5nZu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B6DC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775837853;
	bh=0qI5bFZEpHTRiTkZ+Q78MjNe5SWtD/WTn4AhhnuL6og=;
	h=To:Subject:From:Date:From;
	b=h6N5nZu38A2c/8AaYtrMTtj9QMwGYAznl+jM/5W0ks9YEHW/wE0FFERlY7tOVLtWT
	 9Glv/y5RgSx/kYt1zwwJYS8UVeRwUCdPaEYQJCOFbo4+05D4MPFPB+M1ANDKA9pbon
	 K3IfSiCYHS4uKXSZN7kpVMAUX6cGpgJRa4JN8SHaxEflcUfSckb9Bb0eTsQmID1iqp
	 XA35Pl4s+d/Rw0/3aAbLib9qJHDKNB7zwhjGHy6b169rxv8yBQQpQ6/hEJt1Jkpd3F
	 Hxrt/dQd0TAcBhrP4EfAHnC1/uzTlCggS0TML/ffakiu8ZoT7djXEZoNdnF4jk20fP
	 QA3vz++dhHyrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CFAF459F5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583785371.10721.4803291444370703104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dcaa487be60e2e449ffac01e73cf01d8e40735a6f6c07c3ef6438541908b9d9
Date: Fri, 10 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775837853
