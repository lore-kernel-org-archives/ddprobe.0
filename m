Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4868D1DF738
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750261794; cv=none; b=sLIFGYsitAkK6JzOp9POR2qX7cRxr/Tx2tvD5MkXU0x4UDbIail9Df4lx/SlVt8nmAUuE9TnQDE8wTqBRl/6jsAtNtC34WZR/KKu/uWmUTwrrPFOr5qe+GKlZ9KpDXfrlX6l9YfS1LSxf4ETku/bFPU7fGbnVb0wV13IA7r8I50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750261794; c=relaxed/simple;
	bh=z0vizEjFv8oMB6A+3jPtPOloOw+uy4TBZchk8NuW5Ns=;
	h=To:Subject:From:Message-Id:Date; b=t20k2fDXVFjXwQubntV94ZoUGvsxDeDeVw6etYtNf0QnFdjYuA96OShvEmjqpLphOXSczMA9N+c56cVk3uhcO2NoHNn/8ZKNvYV2eiDRBJwyH7YNoq9nM/6jg/VwmJKumM+2Bju768rW9TtkIFX3T4LJw1AIk2vtg6iJSlBFTgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvDhC/Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvDhC/Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750261793;
	bh=z0vizEjFv8oMB6A+3jPtPOloOw+uy4TBZchk8NuW5Ns=;
	h=To:Subject:From:Date:From;
	b=dvDhC/Qa6Zj/O8Ri2W058tcA5LsCrz6UUqq91ghFgfun8SkRHm8YGgBHow9mbNulE
	 cNqj/xPqlVOolOSelfCk14dj8rEdFg3NnClDD+yTQXX7EoIPt6iheecAqM5jIZbrre
	 Q8GQhDbDEUgzprj/04Ssk3TF4xiLmU2UBnuc6+jJIa1tx0wXMKVTSvTUedB3NFIS9r
	 G7en8IbFb9yHGjY7Qif3qPCRlHTxYzq/2jp5cCwps879L3ILqqbfB0oFRLJVD4bS0F
	 TYmMhhylHWKxgsKBi34opiqIGOoHSjbA6mYfCpZpDv2SifpYgSkikgaWLWCiZGMvUg
	 /+FF2vNJxq+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BAFC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026179359.9158.3196841375224530592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df9137011428dd16ddc654f59a5f839c8f3896ab8875ea2f9b173ee347ee243
Date: Wed, 18 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750261793
