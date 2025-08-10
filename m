Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555C778F4C
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754809194; cv=none; b=AKkFxNNoSOjyKD3hdUpbIXtn33eM8LhvDyMAponDoE7af3wQGwiNij30PdvPY9ZlcBVABrikISL4GY2OeIZ3fqkYqM4pO0FH+W499tfnhllPbQpnS4gYRZBU48t6UAUiNmj5w8cgfqdu1CbR+r8Q8J2+JEOCRLSAElycreb9xYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754809194; c=relaxed/simple;
	bh=o9+/m2Fi1pAgK6NLwBbKnfCE5BpvYIP4OVXW2tllHnU=;
	h=To:Subject:From:Message-Id:Date; b=n0i3xCDrufhEiEykohv9CFf0AtcZruJVdZHJkPWtN7W84T1UUtbeOljv1BkvlZoICQZ4pMGBBsy1J6ywDpQUI7mWyVdEQuUxyDbezwYYrb2OV1g30x69wdaj3Crlo9989mBhtnF3spE6i3GTMhK+61XKTbER3xNghFKA1NI418Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OS9FuQnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OS9FuQnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EFAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754809193;
	bh=o9+/m2Fi1pAgK6NLwBbKnfCE5BpvYIP4OVXW2tllHnU=;
	h=To:Subject:From:Date:From;
	b=OS9FuQnuiXNbHBawvYlEfW4KaWVozSWFqNnto+N8nL+9SFpofw0ILkZwbOhMFT7W7
	 u0GazX5tsHe7utTc8j+esBpSS4zCAYIuW2SR6nYOJWRS9n6jNMwkzMvVVU+jRZKE7E
	 Hup/In6GZZPV+QfPySBA5mKH7e+GcLYr2Y+audRgdvIDAxx3mT5l0TenWKvl7brJGn
	 0ReFmO10hDfnncG7xDrVw9vnvUIUaim70X1BrDgTu9ttQVSIDmA7fT0vw3WZqAy/YE
	 LuSSs39YCk6rc2eJuDa+tlxfxbDeF0BKWTNsgkseIoJL0RSoip2DBqjTx9oFoI6G1q
	 FX1+5agQV0NbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC7C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480919357.16477.13510729592318957332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad31fe1820fc488b455cddc0360dd7bf0b07d6582725ba67094ff57300f1151
Date: Sun, 10 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754809193
