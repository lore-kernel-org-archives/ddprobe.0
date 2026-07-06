Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F6F32ED24
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783321714; cv=none; b=VQLVdooyD1Qpt9e6xnLJD70cyTL/4rUR4T4RVyv9QRHXelJb3NjWClhxae4kYiP7HQpmollqrjkIes4bcM+TptqgEcZhW3EEjt3bLsLKBFu+Rqw6l50SUvGPLeoIfX//pMDQPgV3ZrKlh2q0Rvs0Z4fbwq9o6vKz74Wenw/5Glk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783321714; c=relaxed/simple;
	bh=WcprHWcvNS6FkcE0dfgyBTIyAZYJ2wa/D96F+acP7HY=;
	h=To:Subject:From:Message-Id:Date; b=NcQvBB2yNXpkXpovGoI8MHQ/hlogUkndOwLti9JvpZrquPwUtvr9mkxPQXj4/WHs39Aj1zjvOpaEov+ZaxNKuFfp/OBy0T2jCyD9VCjBl9sXaUprs5zluenELgBUgT3vhax0Bo9xJwBePElt6Gp5dE5XFgMm8HkKuMKk0PPFd6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cO7/3jnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cO7/3jnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE362C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783321713;
	bh=WcprHWcvNS6FkcE0dfgyBTIyAZYJ2wa/D96F+acP7HY=;
	h=To:Subject:From:Date:From;
	b=cO7/3jnFOUBP4usB0v7dISfaL03lO1g79gF+WrK+4jlxISyDDxRn39e3p+lhB6nRf
	 K3iFuLM6vP9AVa2UCFxPNRiDeqn5bDigASblPXWzX/8cIpgu9yHY/KFhEN6hjr+h5S
	 VnAhylw0WAGnyPbx8DTHZOMpaRobzL+IqDhIZOdQzVuXB+VchMWyxq5OtZHRGJMNqI
	 lLUymQH658tSd514ENfdVqS8njgIFziz/ewW5n8fs6+z4ZCTc7QRQm0Lj72mkx1Y3K
	 pHJrZHSyyHxb1aQ1qbWIc/YwUYGkEXeq/bX5E8V4omr6Q5e9A1sTXu32JPCosw7MBO
	 z5JW4p1YbuHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9122C44500
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332171368.15296.18237561190142092886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad7cf2b295e4c2fcb8e61faf5dfbe92b96a6f322c13770479b3d8a428fa09c1
Date: Mon, 06 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783321713
