Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DB0275862
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748423995; cv=none; b=aa5y3Tnh7GkphAnee+tAM2+AIKhcbBAKrRn83uJ7ou4D3Vt1L52GW1mixfgdsLHpexo2y84kBnELE+EmnRJtKkDVZQrmsrdPEeQZDxO+ZXcAM3OFm42OhcfFyQKkDbw37qWZoZtSybOBzHAMZGKFkFbYBXp/N9V2Z49BeHMzLj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748423995; c=relaxed/simple;
	bh=VETM84xysOvhOhVbAzvpglC6+JIw8tHdvVK+K0khlUA=;
	h=To:Subject:From:Message-Id:Date; b=BBFrNGTLubdDWk6lrVgJEYUHkxQ+oU/CgEYghWlxXp34GEzwPnC9WMotml4kEqXVY76YFLFr7WMgGv/7NOec06cd2aXw5fP0qurJ6jQ731PABjHWy+S4lNYayVbZ5IWru8OXY9xSISQF4DSsf9CllodPYzdtt9xfZ4NOpZRn9yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHoRl1zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHoRl1zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A15C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748423993;
	bh=VETM84xysOvhOhVbAzvpglC6+JIw8tHdvVK+K0khlUA=;
	h=To:Subject:From:Date:From;
	b=WHoRl1zbizNmBSF5rNsbQkEoNdD8GERSEu4kRy+YQCPiMqblwz6dqHGacWaZgJ+HP
	 NKnsMviallR3rGg+qZQNJ08o0XiCRMS/DRqg8MD9+nCbfw5+/oMv9mZxHNQZbto8Iz
	 jOEoqqA/ab/1i4+eoz1hL0p/kvNHHVgQi0DQVnw4zoyRNNNVEhJFVaslfL8KX17IxO
	 kIrBYlD0B259qtKyg0eCAzBmmwO4RboL19hEjLQsnzx6lFD8tt2ijBFQxm/moGlvUv
	 xosQpf6z4qiZAQ8qq8TrKsAeaAvHPx3jf3Lj0PozkLfYSdTGAEFQ5WVecPJj5en7ks
	 PS9PpykyQpC0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F863C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842399357.10328.8403905374654572601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39198af5b3363ca128ee30bd2b7ba59236a7a6f1f9dabac33394d3b81b59e00
Date: Wed, 28 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748423993
