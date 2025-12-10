Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5848C26CE23
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381974; cv=none; b=ut6lgMlkDT7wcc5PULrrKhQK+MVN84XiiJrn/5mawtZ5EbyGlOsz1zDpgJ59ZllQdbuNwCPYkoDDZTuoFR26Cg+rYCOTkUgdMvfROcs4xqx9qQY3WRNmy/rjuijfm2tlUOIqELzxdaTISWlYTwxB9H48+HVO913c8cT1c9P3HWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381974; c=relaxed/simple;
	bh=Zfq0pSHy7zBKHwLoxMmuCraLPgLHRuS3YJ5hsCj6c/g=;
	h=To:Subject:From:Message-Id:Date; b=lafTIUhC/1rhZy0gS991MqkvxPGqBUfS7f5AJ0sy3hw96dCK3jLrIVaYUm3dNdcK1pSxKL3ilZpiLub+k6atBUiVcW8siTL/xn1TdQYLXHftQh5AbpiR5pHzArM3002SSLxZFOi+3lXEXMR3MYhzqCTq8gTctdO9Pwwxqcxkcto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q61ERK+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q61ERK+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6185C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765381973;
	bh=Zfq0pSHy7zBKHwLoxMmuCraLPgLHRuS3YJ5hsCj6c/g=;
	h=To:Subject:From:Date:From;
	b=Q61ERK+ZY6/CfG4fUtcSOwhy3vjXLqZ3Ly3YDWgBvS+QM2wI74CQRrZbroWSsFeB1
	 2RfCCP8hrBS9+n8/gOoK1UFgvWsq1WwhVWDQXHfdKnZ0Sk4PX4iTRDYlWIJgR9WSDq
	 X2pyOXcTSizHcf+Sb9R4M4afbY6WbcHzQCnl8Wnymr7TicU9GFEcpJ3LjFYokZR8AV
	 crADcAY+1pPSfnQ8bg8VI3Ap5NGYSGR/ewzRLqSADWHoiYucCFQoMXJ6gKlodYW6W+
	 t3uhLYAGTgWXOjWBGj2j8lC9NOINzddwcu4uTcqSF+0MkOzkl89ctMQ8fUNmef5fFZ
	 O9v9oxclScNXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB201D3C924
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538197366.21395.16820988400505827690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ae4db159b7a681c3f8b82b943c702b7c4c65982c4734671b9f7527fd42e6f7
Date: Wed, 10 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765381973
