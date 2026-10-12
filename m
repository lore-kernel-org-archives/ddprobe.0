Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E5147CC6F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791805834; cv=none; b=mQ77Q7GV42gM9VAyCxFiTtmoBc1aMoA6sxxMgktyeBbzZdleyds5Of5jwf1gtAMe+RhzlSl99Lqx0BqcfyhWlcaVPByCM5WuicsN7cnig17PCRWlNE0dHRnFnyP0kwgbaOf/Ex36T9D51VHo7SaI4ug+GZIWVwy2WTNVeywb5hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791805834; c=relaxed/simple;
	bh=zHdXJj78iBhF8G65czJcEUPOFVbC/IlW/F2Zxa0hAMk=;
	h=To:Subject:From:Message-Id:Date; b=DAq7h8lXLLPPZIZKF1VVmfyZi1H+34b5ECfS/JuGnVyJObYz77NKzxdD+vYqE8nlwndAeQ0M31oXQVl7hrulL5lmdyGAFMc4jcGtcKVTGFs9AXKFFGY3njA/w3zrFKqZCDwCfW69MNNdCctICTJVr2+tcS74WeD8s23+hyUmvfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU7wxThv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU7wxThv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D811BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791805833;
	bh=zHdXJj78iBhF8G65czJcEUPOFVbC/IlW/F2Zxa0hAMk=;
	h=To:Subject:From:Date:From;
	b=sU7wxThvpJw/KxuMmEpN/vERWmzCt1NkVctvyRuGE+1K0XuKVHvOUrkhRbzw7IdsA
	 8f56mWgbzE1bueEeIXChcRO5xYbkPT6l3A077X1ozsQFR/C+MSbUZ6JODJE+uCuucy
	 OW1PZW/SIYzpA/KCjZJis1JSA12ZBDGe1IUZh9hzXZ7fzMNewquwujmT6fwPaiiX6k
	 E6xreOnHt6j5khntmDIGzvYK58VP8ztb86220ZVTD3JihEwcukfIqBi8h3/h44KFIN
	 mbuttMG1suYlfpg5GoiFTnwbe5JtsAYmm182fV3lRdriuFXsWkf6PeFLuokyyGtgew
	 jYEbw/vZ2IbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA607CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180583369.18687.15127763795201835912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3721f7bd266d2126bc72b320ae85fe1385f50ef45f3c14227ee323f90d5652a
Date: Mon, 12 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791805833
