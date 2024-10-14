Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E4322B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728867954; cv=none; b=kqzTJ3X5bETj1RdvuLzaHp7xbPSdSNsgAecsx58rw5NzTuptBDBCkGuYhuRBgUxMcvNJAdsXRFrJhZrCWc0UMSjPk4sjH95T68KOJQIgRzL+4fJ3+/YH2gJqXRCAVtGzN6rRTJAWt65cE9MtzRt3FK2Hrjh5rUyFAcJwuVeM+vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728867954; c=relaxed/simple;
	bh=ze6KxRA2T6CjJ5i8TJp9ySWl/xbQ7/pVw45oS8LK6jM=;
	h=To:Subject:From:Message-Id:Date; b=Ej5hOWOKqZhUhqDaJsiDtvG6iN7BUtjTz1JxQWep0iWCFSyajY+bCgYi4U0vHMS/APPDVfF1IDbla2cJWzKalZsuaVnxDyKE7hHEuKNk+iNFGp+b6URaRYXmS0ck72e5O1h3mX20dTIfJrWXeUax9dRs6JWc3MM2nVoYTmNdfDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VecsT2pY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VecsT2pY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C3BC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728867953;
	bh=ze6KxRA2T6CjJ5i8TJp9ySWl/xbQ7/pVw45oS8LK6jM=;
	h=To:Subject:From:Date:From;
	b=VecsT2pYzPu+YR7rlgdjvKzpPV6lt46GVkhxyAHyv9Etu6aW97PtrI5vUb26nsFDR
	 +MeY5R1hcsrdAqMefMJoukYNgVgzAZDH03OifD6xoWI+kEJShrKwycg2JI6/U/e4qs
	 WbeW+CZJCPN6XUIisx0F8UFpzyTLrd6jZVZQyv8c7lgFh8pi1rvJwfpTQOiwcaUXH/
	 BHyO2rxCjp3KFrXeh4RAEpCpN07cnmWKtdZyHPbceqK2oc2z2bj6XyYkM/WrSUUMhz
	 yVFH/SkxJhNhX4/f+TyDxs/UPotMFTAm/WQk4dXN2uB6Er9pKZ1XdzPyNJjAoxaG7a
	 iCjBt9bJU8M2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A763CF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886795361.24962.6083221372035735264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed97fec41dbddbc8b6a62a1adacd4df9da158bc9feceecd82be47b56379d805d
Date: Mon, 14 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728867953
