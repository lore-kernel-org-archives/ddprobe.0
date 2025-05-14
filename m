Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDEB282E1
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747262394; cv=none; b=Gx8CjgW129ixrg94SpftjginpsMqfC+QoRg4Kc54fUBsHYk9cWxVfo4CTCl3eVIiBtRtPQy2l+Hlmnq7wRd9NIwOTiK6e8i3NYtw5wIUu9Jafi4iHkx3puuFy9i8Pocs/5r8OL2XkzLdOJSeK0wgRK+CoyRkz+rzvS/2YBuGWbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747262394; c=relaxed/simple;
	bh=EOBcGt5fLCqEG3Jd6qPTo2DlG+zQj0ERgGkaie2GKZU=;
	h=To:Subject:From:Message-Id:Date; b=fqpomBR+TFBvyJoeNq/u/3OxDa7QhWmPwNA61qmbN0knfRzTvYC911CkZYlTmoVh7q0wrZg5rf6mOU4qHHFpeF/OzzBHEYLRIMJ/t4XNhAOBfonG9p/oG3EGtBu0Kms/9Uis/DtJcTUoZHBN5rwZwymhLpgb5mXdmk4Bi3Va9ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd5myGFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd5myGFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A701CC4CEF2
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747262393;
	bh=EOBcGt5fLCqEG3Jd6qPTo2DlG+zQj0ERgGkaie2GKZU=;
	h=To:Subject:From:Date:From;
	b=Qd5myGFX1ljRAznaEBycjxHJsReb8g4f6I35fOlUfRfGRE/PvuGLged3kCox0N7sW
	 hkmJB550/oNPoWSENjFjzbjARFZQ4YdMd4jxnhVZpC6DK5ts5eVB4+4jZnfoSChQ6g
	 1z7dLyTArxSj3YO7gu5N8vrPuJA5gqWq62Q3jiGcLLSQv97jR8OPkq3Dwee2RwvhHN
	 V4VilP8UA9yJuw4K7yi345CgJyasHLvqsy3guYbDYBiLQuOUyGyqZA9GvgyFu+eQdh
	 x8i9clR/U+iwltIO6TRcxRwbnP1VeJZjR6IW3w+TM7LJLRgTmbHde6k+E11LS2vr1+
	 n5XwAe9++uQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9547EC54754
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726239360.7455.413182598111261687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469b78a758f3952d096b6f62ae91336f8a469eb0144d4617e45c3e8eb48be935
Date: Wed, 14 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747262393
