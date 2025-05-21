Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E182673BA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747832994; cv=none; b=HBBxpFX+D6FWYywdtHNHf5KG+mup99r/CTg9+Byd/FI6W/anX6uWTOseZ5OoZxSAOX01q/ZfDBXnPr11lNadit0k4KLKoG2o169RKEnGqasCCLEVMdvE6lqfGIMEIBVvLS0z7cJ7SN7sixfKO3KsWt/X1q1uhf+byNLCco504v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747832994; c=relaxed/simple;
	bh=CO1I22Yda++EVWHp0bhdmXl3nyg+h3bfAtcnPB21L4A=;
	h=To:Subject:From:Message-Id:Date; b=pGoHICybZW0PfqFvQsFb3aUYoXGSo/XpAz1f6DyM/LCy778BES2zq5JEt4JaJM7N3cmxF8MdAuctNnM+WMGEZBgQ+A0dq9i4cWz27GjJHGx46KrpzLI9fv+dDy9WOgtisT77jHo5MHWheTcDcDoJajW9VFi08CpFVfQuD4VhJZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTN5RWyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTN5RWyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4431C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747832993;
	bh=CO1I22Yda++EVWHp0bhdmXl3nyg+h3bfAtcnPB21L4A=;
	h=To:Subject:From:Date:From;
	b=LTN5RWyWbcn8pRjrzMk4Qp598BiJksCtmJ0Jv8QqVubwq+cVSHVN+17M3EKsk+q/r
	 N6Squx8pTHkO1RjFJulZG1bdmgZiNUvU+qp7Ua703BWcNahW5ZSWHS0MWbl4oUtTc4
	 SY5HKJa/vRozsr15v3kZDskhx4aF3MMAxMP/SdOwJTKqg9cilA5NCMcpugGX66zF17
	 wbwdDcq+2Ugfg3iw24ujjlRBK2LzrhTAKJXkO5z5mG00TJFhiuVq+Ui8qmY/m3GQiI
	 z3inMIp+uyCGD853dfCa30GhheA2XTYH5cqwHCvQ1nlwaD7ifkomQz0YHA1uRlFYBa
	 +0SEsYdZewjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430EC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783299357.11061.16686823978368708470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970821a395d79f1d4cad097e0f83316347a8bf85a77e90644d8839d2a79cce8a
Date: Wed, 21 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747832993
