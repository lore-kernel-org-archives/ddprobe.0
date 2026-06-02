Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2C03655DB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780421074; cv=none; b=ZrSbJrS5yDMHXi7AI862Ov2Eac1apocTIfAdVLJn7AdOG5C2mI9ruchlqrzWQaa7NWnp0WLumVsXKA1sb2PIKVyMF+K3sZ3Hdkhumhudf3hNvOmm1Ne6IWf55cKEkFJhaa9AVOEu1h4TKjTBqmXMg47RqaBbq32WmZ5mevv4NZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780421074; c=relaxed/simple;
	bh=ujBmqFUELOgWyc3oyA5WBoNXplypNw8H74i/3HFDjuk=;
	h=To:Subject:From:Message-Id:Date; b=seOlSjUkx3ZxkKiIIPkDwYN5FZaBM5YeLdF8wuQ9WfWct19HNMdRx8iUXebOoa5TC11FYRmNt5b7eGaKknIOTKDVGifav6BboAewF2w1X4txgs9zTzQyFgO2P6id3MxBikgzdINnYfRQWe1g0bw1M+UAGUGpshDZj9bRJSTxkrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gxz4hogd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gxz4hogd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D61C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780421073;
	bh=ujBmqFUELOgWyc3oyA5WBoNXplypNw8H74i/3HFDjuk=;
	h=To:Subject:From:Date:From;
	b=Gxz4hogdBGkBvFc9UUv7uGj0Y5yMH3OXhvYkCKAFdSU3mNaSZPVlUstcueYYojore
	 RZm6iq1fDmgMnOHfk1/ptW+g5Kwb98XDKUMoTKk11o/Zap5zJS2dmI3kxpQk4MRTSu
	 2TGGk4SWwhtUBo/EaY+EsHWlnenGpkLVSu3wOz2ebTL1UY3vmWDMojNDKRCXf5ab2q
	 14UZWu9qmvkWf0KumdZipqrJnps5fPt4KrcnnqDigXl8FONElFcDoYgq/Td9QPjSED
	 qFaaeyvbIM8RoQyPZ6+ww5dusSrDbXfvjrOlan5KzSkOPeuyC3iibW8ZS75xqBiAIa
	 fc7oBlbpAKVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC6CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042107368.21302.12958785155793979259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a123f6be0339abc7f16c3a6a6f72ed5f0ae67679d5c9b7c7cbfc6ea301fcb2df
Date: Tue, 02 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780421073
