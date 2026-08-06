Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C1543E076
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786012234; cv=none; b=d834WoKRSlFxMPKMEYP5YylqSjjkqlItzb1eZtt3JLbiisjuzI4BxvsQ/T660fdT5ZetbhBqJrboG4YwrhXxqbVlNTa37ysCMNPC72UP1SQPVOt4TrBrN61+RceXMo/PkLS+RVB62SIKezndVENucNO/T26aEt/aeqoWaqEkScU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786012234; c=relaxed/simple;
	bh=sJimKLYYKF51G7vT/r2fv5LVBG+/UushHfqml5w0ydA=;
	h=To:Subject:From:Message-Id:Date; b=RvfttAmDgJBgz6q75vx3TJU2OgCmrw4AWuxlgmT/tGPn2iO2AdSPfZbkPEQ4LX8IDNi9J4GmfNRyJkjJUXsfq7E83M5uQ6LMLOpceJFOa5X4ZGCuDAf7Gcl/rw/fb0BNYddisgSnCFmXI8HjnpPrzuHYhYYGlRlDn3Xo7iUo6mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts59BOZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ts59BOZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6FBC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786012233;
	bh=sJimKLYYKF51G7vT/r2fv5LVBG+/UushHfqml5w0ydA=;
	h=To:Subject:From:Date:From;
	b=Ts59BOZsEa8J1CmGpmo2gy+6FVE1PJPis0TC02850iTpuPMBAhRckRv4VvRz7xdPn
	 wVZ1cbxA5rSrfXppa6IYEA/71McXCbM0Adr5PeNZXdmWZkqd+blRXKDmkQkeIl8+T7
	 pVisdhWSv0VA50UiLH+VR2mx/EpZtTvoFqgDk0MRzEe7pPByV0Lf2D/Y7KNrRmxsd0
	 SGhBy0wy+J/JjJE7EnJpjH2m4f7RBfDjvyzsEAxCQPCFfDWgkQpSDuGIdzuUg8+eul
	 3oUeikk/F7J5H+f1KOgpeJi4G+VJBiruNjIIriB1xSMsIUXkpxs0D4me95aJ6xuLKE
	 JENh8z2xOpigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC042C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601223369.27006.2970617376235569774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a3570dc2c79e88eecbe4ef6b8875694207568e9776a947db9feba0a7b8c509
Date: Thu, 06 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786012233
