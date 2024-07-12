Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729DD567D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720766243; cv=none; b=PpKQ/jxeHCvyQ34mq7nNes/ix9dzewqpdNQLptINLEoHqrYGQ979uYZFiEkOrLR9afMbSJgWAJx1En4JHZZnu8GmNTSKHBsQkL/8620fE1XJ1jse51KNnl9tzohNBLCiAf6sC7xR/U12n1jAaxTpvTd8uq4aYGxHWMd1ezPGjz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720766243; c=relaxed/simple;
	bh=5KewET6qCjrj/dUFkNbjytH5tTgndTOn0dSaU9U+2oo=;
	h=To:Subject:From:Message-Id:Date; b=ZeFhOnEZysNhiz9/ppmehId0IZaqLuNsxlJi3X0ljJEMj5C+th7CGAoQRNMZhkIXeEPugG7F1taGp1yd4TUe2D1RPmyWRwoEbqa5+NpDiy69oGpNWCJ9C2kFiNhei1L/M8DA31OPrBLEyvc9AdNdIhXTXDVMqjlKqIkFDaiQOVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKj9160/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKj9160/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C776C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720766243;
	bh=5KewET6qCjrj/dUFkNbjytH5tTgndTOn0dSaU9U+2oo=;
	h=To:Subject:From:Date:From;
	b=LKj9160/ZIhffgTvwqxGwOjvyGK8pJp9yEL0GfEQpy8Cw4AijQRvYM9VyJTBiWN4Z
	 EiK7sZO7rGipLnZdBumQ/ZORxUoADnEcJCtKVRD3VVGuNgqkLF8EWgvxo+FylFWwUe
	 v4HhwE5Oqfm8PK2DEOgbczA9tHn812hOeq8Uw3wvwVDnvT7bcp/Ly6y4WH6nA1Ki2w
	 4K/tOlzRTHQF07LRslLMY2Mo/sUjs0qdMpnhVmJruW4fUYslu0QvokVsgkVmD8JYqj
	 vIDL2Gy1l0B5NEbcJV53fvps8gw3FN4FVXiy/Eb9ES61nY/cvunpL9thCnxXCMHbUh
	 kd84qRedCwbQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E67F3C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076624285.30690.17920818896894257754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9424613fe3f0efacd48f920f2c22d4c6d856aa7f39fdb540e5868743087e1cd9
Date: Fri, 12 Jul 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720766242
