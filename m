Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357D3597E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750909194; cv=none; b=ihVbY2TRJbBH+/69qMcqU5AdQ71a/UrL3anTRv4joO3EMynyvTZhU1gIQIzKvb4YqoVqUFLs7d5bhgbQ2NOuHWD4RJtrudQ3LMfhIsqomFfSIEkCh8AI+v0+0gxHa/XPkpid4dpDZEAbCNTgt5e0/N6XMIT9HUyHCevLgz61Jak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750909194; c=relaxed/simple;
	bh=GMvFklCip0G2EJ/aMVsruIhRryRDgRO6AKZ2UCfrfUg=;
	h=To:Subject:From:Message-Id:Date; b=gCyps29IFfdxxC0TjeKBnkAnLk2lz8g8UJfsW0NOC+i1ei8DCpB1zmB9Nj5f7+shwswpsnhDaDYear0w17x9ABu+gQh6QQFdiHOT+dtTt4UK4tVpgmhUPI02Ere7Atvg67IVE9Nl/GY+Dwjz4maX0vdj+thB/ZbVM6pTzjPVxwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJGR0nic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJGR0nic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3806C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750909193;
	bh=GMvFklCip0G2EJ/aMVsruIhRryRDgRO6AKZ2UCfrfUg=;
	h=To:Subject:From:Date:From;
	b=lJGR0nicCX96faevvrbFcQCBlUZbnRDiJsGFPD4FYpItvK/eU14WAo7Y13h3WchBe
	 YiGVVmBVgtjyu+GUFvFWsECpuxj1WNmvbg3XKhKk/l1US/IgcMLkf4T/IcR5qyr0Nl
	 l1ybspGO3WaG+rezjmjd+wYW/CoPA3/xz7G8vIjc7VCdp9lPPlsZI7cQwfjnPEs8rR
	 M4MOkDgoKFGgPpYvm2v07VRbniTnD6UfmCbtw7nC07IrMn/y1YvbVRWyZBqR5P8GQ2
	 T/kLHo81lJLyaPCro7ZNwkjtat3oe1IB1BCXKQPlAaUzMV8UD7lbm/wplXm9OxQjPs
	 bLTjICh5iPITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE20C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090919358.19747.500149735757503032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117628620521fd7162acd17362e53cc666c3e58c2b0d759e5bc88d86fd68e7f5
Date: Thu, 26 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750909193
