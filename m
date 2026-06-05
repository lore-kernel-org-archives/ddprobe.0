Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECF1242D65
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780677274; cv=none; b=thPuecK9EEZ1+L+XFbY7TNXFbxKP575aD911EnQ3mrmgDif7ZaQ9Vj2JdtTDKeYItifObo3+vjwT9dYshoUon0hRknuZIyHaSVz1El/fmGsepcNjRQqfVLHrvCE5Z1ZPRCu4k51kcCD5TcUNln7YFoL3ehlM6jNvaVgA+OotCm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780677274; c=relaxed/simple;
	bh=D9jIAFLPH/rabp+2yiC3vqjxy4Ja+SouFGTQ1YgvA5k=;
	h=To:Subject:From:Message-Id:Date; b=u5lvXGqjeG2pNmNQOtRuDCGWXXICGYVbn53xGa+ZzjgJQhQWRJYnra1yHKwXxnm+tbY9Bx33PVEewG341ucdDMkZC4OfzKGW6UnNum8LcX5lmKoHcyhRPaUYVCbzyz7WmQvXK61xLpyy/blCfXW4CwQGOiCU53DBl0zo38bWTxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgG34ayL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgG34ayL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91B0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780677273;
	bh=D9jIAFLPH/rabp+2yiC3vqjxy4Ja+SouFGTQ1YgvA5k=;
	h=To:Subject:From:Date:From;
	b=XgG34ayLi7GkMIDOQJ40vhvIKiPGRKZnEZn7ddYHgBOk+N18pzfsTNKZ86rijO8O3
	 zKm54DqljsXLD9l4nRwHvjMqUcgYQNKXn8SxYyT16/q6NMKvK5LfneMUpDnGkik/qm
	 kjlpLeAG7TOzTlnW/7UpgryNZl8nCI+6FY47EjVS96TkG5viGNVsKQhw7PxcY9vkHO
	 9tJpCSMQWwm6mJDqzdDsQ1/eOwWiAm0N2gtjkyTDNQ+Yk6T9c8sDP0hTqD0xc8m8dl
	 3IUWFY86NuBB9qo46RGpdGBCWdhOceiEgNVe0sVKd0DQlkt58jUjlyHG0Km4CLCtNb
	 pjbuAt9n64g3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE12DCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067727370.2546.1609972930183068530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a11963e7d8a29f62cdfdcf9820e33047283583b4e2d7162ec4ec8a74becbcb
Date: Fri, 05 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780677273
