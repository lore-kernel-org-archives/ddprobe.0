Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3355335966
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771379094; cv=none; b=O7Zsbgrqrt2s+Eemfh+P+iDQBzb+KJDZT3p2eiwO4oRH0lwqsGIUjFLEQazJDcuplRkspKyDX9jqvrepb5pVQCK3OLJ6AHKhf/nEnQWNDhHaVeLx34X7ZzQtlGt2jDBGKg0K82gvRDvBY0L6l1lVLMibr0Pwb1FAoKM/oV3oaEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771379094; c=relaxed/simple;
	bh=D84xkumb07NSRb747ljPeNvIn8uUjj8iYU2qLsU2F0I=;
	h=To:Subject:From:Message-Id:Date; b=eAAZPvoa88Cgf+fhzlHWm1SxFSlkGwCVxuiTRE+JcHXjjEQQfNPRSIiKaSXNqd6bsvWHlpzqqvigEAFYxA9SQsaQuS6/4X7tS+W1UqjBFA9EfUDAt1Sbx2N16zGLV2QCXiTO4A4mNuEJOeP0ZUT406jB4zwIXAN8X9AmcFw08bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFY6tpFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFY6tpFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36BEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771379093;
	bh=D84xkumb07NSRb747ljPeNvIn8uUjj8iYU2qLsU2F0I=;
	h=To:Subject:From:Date:From;
	b=QFY6tpFkT/wpEwLO7MqQDZ4FZBlQ2LI9AcWP9S4qW2crBe7x4FGX+tqWg9yex2JIz
	 H7Z8nSbB3V7kV0GP70wVfnOBcj9pCWQR2iX4HhFVcTvnEy+E8sbA/voGksMFEbovOk
	 5RvC50liLA9mZ4tnHPgnc/kxyW9Idy06BlaygR0aojqp88PFnh5wdxnl2Q+T9FqTAe
	 jQU0Xz1dGG3sidxQMPgFLet61GDYRMGiEJEL/5h0OWLU2LKB0DwF2O1IZlOW9VgHSf
	 5zi4fH7hQfMP9ijP9zPfzPS0aEw5QZ4XBuwUPhobh9VyGC249dFOR1wZiEdlXWRJnb
	 Y849wupi4hDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0B9E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137909362.8674.11878233511729566140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d1006ba130ca6df8332943f6ed596f3d26b7a2da07b239f7765896a48665bd
Date: Wed, 18 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771379093
