Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEDE2BE642
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769088834; cv=none; b=DUewN2jvhVpMX9BVAv1kW5h0i9rArtQZ9yHF4GJmG/SRsuvmeHoewszCnYziD8Vg8RsEBhl5VuhoAsW5B8Au5Pb0uKIgq1owAveuwMulSaIBjLxrn46uIkbWoRDiM7wYc0Lw8iL2P/0Wby4EFVPLEmOBkGw8+wNanDClrM5Gcl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769088834; c=relaxed/simple;
	bh=XWp8rrrPvSYrYZifquhUn05+UKyegF87H7RtMwyvEKE=;
	h=To:Subject:From:Message-Id:Date; b=np7UrLaHTK+uQBFx5Ot9ofM+ejpzYAi3TH+YL6vZ61FZ6pj9zT+ZRpNPmtU0mxoRnYvpcoqHxOTQgbzNywTzvbkNEmUrOUGhGviv0L5KO4UBfXDyXgjAhoh9hs5kuyK/QLXXTPphgitFUcKxOVB2/Soex0PvVEd8YBta968JY0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcaDeX1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcaDeX1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA02DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769088833;
	bh=XWp8rrrPvSYrYZifquhUn05+UKyegF87H7RtMwyvEKE=;
	h=To:Subject:From:Date:From;
	b=rcaDeX1lOm4oJonW68WvJEpaQHrvSFAu/Hhk8OnYZchvvu/tGWYjWFHxwuwdePpUm
	 ArPhqgz2bGBFgrHqNXFCQzIbMP1TZn4dmL+VEKz+dzAaEDfiSRQXrWEUZdKDY049h3
	 O9e+6ei7PPCjXfHn+pmJgOE+6ZHRD26BF5rzjoZF1ocpujl1MRsTdBzgR8LpzvZWpW
	 64U4loa5LQvh6KXamsETC1xJcJtw/GntcnVtByLzC3z536Pgkh+/BEQyJ+aKm/+aQ7
	 s+nfkIWspKegTloFa38pJynNJo0ICya/MeTlcFGxvs+TzYfVTXl7la+0hkIq/OXvdP
	 jKypnXt9QEdVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97085D3EE66
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908883360.3627.59377716945744359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68688f5bd6a646f28e714036af1053a3f7abc2a3ab6d154421d5c30655b4fac6
Date: Thu, 22 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769088833
