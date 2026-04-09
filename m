Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A0B2882C5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775765254; cv=none; b=chIWkGo5sZV5ZIQFxQpS3UFOb5Etalux2pOM2vTCDbtU0EEGnNCPoATcF2+5EGKou/C4moS0cIqKCv8qllIzfEeELizxkUS+U7mtTaKNFBqymrC4O1CNDug1jN4R5KZCYfBeYGkRWV1XJwZewKfKtN8LIOu3TUvqzJ+fJ0svvK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775765254; c=relaxed/simple;
	bh=AxgighuIUJ30v70PCrHbtXSWwtl1Jz5cGVW6ZcCVlGg=;
	h=To:Subject:From:Message-Id:Date; b=PCGDPwIbweqdc7CHuBWULhygtnbcbOQThLtB+gM5pyqxD3mZtxM4k87c4T1z74C7la8vxZyNreDECzTU0lOdHJ41wQ+eyPhZZhqXoFReQEnDghX1RZfMQEvp58dgSiUtPMagGCyozFdeAx4ckaaswpH+jp9z0SFIMRt3HZAz5tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCWoHZdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCWoHZdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB1AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775765253;
	bh=AxgighuIUJ30v70PCrHbtXSWwtl1Jz5cGVW6ZcCVlGg=;
	h=To:Subject:From:Date:From;
	b=TCWoHZdnmk5c9jtP/sdFB29qE9ZMpJXxPXvu8WvsQEYr/qw+YFJQ+PEkNUn2GNqov
	 24QCOseVdABd3S9hqbOzIK2MArnsSnx+61A6RZiUn8zfPYRPhsBNY1ke2TzTKABXnZ
	 WmtRANSjfH/D9pOcqgUlIaiNJijSr2EHA/K6Y3DTJSdS388IvW56db9xrTxJyV3C88
	 at/zZfISmnkEUrJaGCXWlUqJElc8SWE6d9fjXfiilv9O+tGdG/BEpjeNW+/7fMwfyI
	 oaytn0M3MbNffaA7frUTaJsI0rOitWrOMPDifBJWKnUxhzUXHOVPxxmMmG5nIA8xQ1
	 ksSCtmqtR6c5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCBF364AF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576525369.16123.4014594906666721229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33425e6d26bd69bf21dc15c5668c3e9d33cdbe44ecfc6c695e18c47f2ac625d0
Date: Thu, 09 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775765253
