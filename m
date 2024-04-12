Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3563FE5B
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712903363; cv=none; b=VHVEboDIRkaQGMw5vsVxLJYDrFBRFvrnhLn0FW/fo0zL9bZ2ePxfghsF2PXLXTG5EcdWdBpPaRAy9vvY5xXo7yt4paFrTyzgSCrLzLwULW/EGGs3mM1yCJAHd7dULY8Dbw9KIg4ihZeCp6rYDUxbpCzvEVGkYQjHRMF3zMvKo0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712903363; c=relaxed/simple;
	bh=/LKLDrfMVjkic0hBaHaDy+YN64ygtidhvuIro+qvaEw=;
	h=To:Subject:From:Message-Id:Date; b=Hkm6R7RxO6LGiT6Mt+we9Ae+Jydh4p6rrbafTTc8P5xRG8Mj2H2vgk8gefOFE1Rou0OnL3ifSwBjwHf6IBcHFJ8fC/ZAnwG7I1xSzv1cR8Gju2+ULRTthgqsYsRR2hHwJ2oFt8dsOi/3L3nS79I82j6UiTwtXYjbm1MI93VI3L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUzWIxgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUzWIxgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD185C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712903362;
	bh=/LKLDrfMVjkic0hBaHaDy+YN64ygtidhvuIro+qvaEw=;
	h=To:Subject:From:Date:From;
	b=fUzWIxgQ6so2ThxxR1rcko5v3PvrK1gzXZlbkPbk15WcLwkHCBXacTSmpW6sB8y9g
	 I6iy8oeJFG9UJkk7BewqcyLrq66JoAXEv1sypmkCqOznzGCxEpZhc806HefAgNzHz6
	 Vt7ZqnmcxPTaKrufTG5BTkThl8J6CV8Dq0Vc1MrpkPu9UtjEy+XuXdZwloxOzXGT/J
	 4x/IQkioY5oqT+1O9pWLlwR1VMOoVvZQJvaDCuCIxZqzF2NQFwwhgbdIDXmtj2+tl0
	 vAajPu62No93zoOoF8wGNA6pPv4d8+k4hAK5TX3b+tlUxMZQB/Y4UUKQvTK0yj+nip
	 bItlKIP81gn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB77C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290336276.19959.3897131881733826787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067fa99c5c65c5bbfc9fba9366f5d9ced3d14c8fddfe68b4dadb92af93d6c0db
Date: Fri, 12 Apr 2024 06:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712903362
