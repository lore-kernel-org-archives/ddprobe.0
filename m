Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB682D8DDB
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767817433; cv=none; b=PyDi9r+CNaF3mXJ+DCYjZQc7/2D5ZMGGvbW0weX725UulvMgFV1yqX9EsQ4j+FW8fKm/Oqqp3V3qeZj/ph9xMh+pLgPs2uh2cKjfdlkHI7azUxGVh5K0fo90rLBesT3rnIylGrTIkj1QDLvI/AZGbBNOXEwvPvjk4F9dXTpx/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767817433; c=relaxed/simple;
	bh=6OH4IUvUiinQs+yjlXy9NyOS7b+tluwttb7VGESPXGk=;
	h=To:Subject:From:Message-Id:Date; b=Hl6kPLq81k11Qm4hxxZnDe8TxirurEb1XRGLZGKE+6of7ZL4UmG7Hh2sAktXAuvTgSJKgrbmGw4X6ytbxZhOTQfw7L0C+uCDkxdt1SDRcKZtACremYZd0AsRcBSxKunIozILXves07VqejBn8OGVCek6MFvkbolB9vGXHa+IefE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kti/SWyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kti/SWyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF21C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767817433;
	bh=6OH4IUvUiinQs+yjlXy9NyOS7b+tluwttb7VGESPXGk=;
	h=To:Subject:From:Date:From;
	b=Kti/SWyOQURO7+XyxNUwd5ds5wo6YFJvJKXBEvMRnj+ntQG/2lQU7XJR5WAjNWWtz
	 hb/BtyidPu8NHD1rJovrbIUj2OVjxz9BGbzajC+pZv+8OTtS6jI6z2dFQ6eZ/6bnX1
	 VT138MjeL7F9liEl8+6ZuH53Sn1u8/VPlGySjU4rhZtkLhl70E5ZoXnd4RWslbnH+n
	 KE0donhWUL5OqRDlvdA3xHn4sthZLO3xqhT16hJQV+w9raesJhRBJJkb++UTZpluZA
	 f3iGcmHyg+WUQ83BTh0ua/j7hPKckN9JGLfyoOFwz9MEICJB1B9fwAo0EVis6LvZN2
	 kx03w4331muSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB3D0D16D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781743358.15566.8680396180439261980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0a731aa9699ce4609d05e5e1bb808be306a7be18b5cdad17f21c2ca784b8c6
Date: Wed, 07 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767817433
