Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781EAB652
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714284143; cv=none; b=UXxhDyv5KoHEEdQkwPmpms650L1fRKs7UyE0uv7ywGBuPEyPSiGt/LN6Jqnu8zB1guKCksmSdpsVqGqmNWy6kVCXyey87tX/iNQWljuGIc2Ll7bCRaawqSKW7lCHshKfbav35vRSeO4DIa1VrRxPaRWAa4f7f+aegjnz06UGke0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714284143; c=relaxed/simple;
	bh=eEDPgCNP+/Lijv2kUO0JC9Ok+8DKUSteL9W9YYXHOQE=;
	h=To:Subject:From:Message-Id:Date; b=RRXQCwRPCva+w0XcDTeRXqbH6VyOxE5I5C1IknwIyMS6YejbHEml+sdFtWB7eW/1mTdxVlZG1YNjYPhM8pZagEpsMFcp25p9MxMsk5XzffopgDtWJe+wiiY9AC9DuGEPzHgRgsgvwKa4hUpB00uhmo7Y95jLP2V21OLZnff9hxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+dBB4kQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+dBB4kQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB133C4AF4D
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714284142;
	bh=eEDPgCNP+/Lijv2kUO0JC9Ok+8DKUSteL9W9YYXHOQE=;
	h=To:Subject:From:Date:From;
	b=B+dBB4kQ43EkzjJXC1IolDezbvsgbiiWMPPqRvK0qjiD9jYBNJlQcAq9R/a60/3x8
	 auNJv0gKyCrQseCA4148+2BlbI/fHhPXkGOK+QU9gAkNZHO8DRS8ZuQK123K88plwQ
	 GPJfE0bS6QtOKCGRYVOtKcr1M+MafWGRw/lc/CugASCVLpTUvkVcnefbSGKr0i3XRV
	 Q8uSBba1sxFJqr/TE8zZTxZ/VUEa98rQ4E2icVgEaWfmn0nOWFszXE8QEEYpR7b3Yj
	 VJ1pwEzPlyJrUOWl7Q1IEs8M9j2+J/hLpeBnUSUwaLNKI6FL1NOhOza4nE/avSdSa3
	 ii0/6EOIVmfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5550C19F53
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428414277.2580.7659893949736174694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc88295d58329e56a0afcaa591b4c21ab9118c350fc1c19fb81a1befc6f016e
Date: Sun, 28 Apr 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714284142
