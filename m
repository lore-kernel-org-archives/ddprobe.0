Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23502261B8C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771233894; cv=none; b=XSx0INk65/v3TLs0wpBh8GVr0HQChKiR1NAvbTGxX6WYffZhzHSiJJc42hdM953X8UD/j5vduaLmUadEfmnpZgbmJWf4ij+LctcV9n/Cbb/OQ68lCnLGScAIEZAjPNhP5QdI+tRVvUcnU3MVmY86+Inbg1IAnFu5MEsTKamHcqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771233894; c=relaxed/simple;
	bh=lvvccfuiRooevintHTMDPPWCkOiV8V77iLnhfYZd/Is=;
	h=To:Subject:From:Message-Id:Date; b=kU8wg4xEaGp3GGvyTbtojAoDcV+B+sI7tKbfTg9yqjromtB5AktQdE8hKKwywTw+2/Mu6qE4iXPNxMD3xUFe+ZglmwXPsYc9NWXyIf1JFygvTxs6rbVjNIZ1GnFz5NvI57KZyoeMEyR6HOOOKgFticl5OIsz1Vf5liuJoXXo5R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh7ksMoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh7ksMoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B049EC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771233893;
	bh=lvvccfuiRooevintHTMDPPWCkOiV8V77iLnhfYZd/Is=;
	h=To:Subject:From:Date:From;
	b=Oh7ksMoo4VPH7rL0V50njZFZn93h5AMAC0ayTnfWoRSCEl2sx0gIYW2rnCmG0ypxg
	 botggFZLdtHzN2ydOdiGUO85SpwIh1ATGrVLvkdCnJ5l0svs91YyG/LGjbmkJOw67c
	 YXbqfieDWLocKfILDqvR2KDnUcD2XI5w/QQJka9AZzqNY5JeGeAfU9HWrua3A68tcx
	 wx2+U6ocJHFX/w/KDM0JaAisQ3mHJUf3LOlrHMxCkqbGFu0dWJfKN6WL8A1g955QWW
	 xUyADTarBFDyZAy4QKUWDqS0Del5ukom+tB+Bxf6KCQDlkGeHBFiIqfCIMmkO0OGq6
	 X81tcn0Pap7iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F67E63F3D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123389359.28305.12209823711846582303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4498cf32411c4ec50c1d552b828ee21cf85e1b512c8a23c7af1a2c622e5abfa0
Date: Mon, 16 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771233893
