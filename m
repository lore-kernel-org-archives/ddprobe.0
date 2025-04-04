Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462C21953AD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743756594; cv=none; b=RiArQSYwShFvIJKC5Myb+n+Ay7/MvEJvwd4isRUhCDMACArdKDeAn+P5gAuCD1BkSK2C0OtLtP95GNdBi/qaTRlG2vRuSDQGYd3ilNYcbeGhun4Dh6Jx5VZ/6huEn35f6O2Q9VQ6uwglXrLSCib+ztItYjKd4Vq/XLDkyfY7QkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743756594; c=relaxed/simple;
	bh=BdUFxfWx6T5k8RNRJddsLyHHE/YEJy3ORipqRbyQWjA=;
	h=To:Subject:From:Message-Id:Date; b=m5lKUJQOwPW99Il9DwVBZME+fXqJ1hvE8HjBT+I8cdcmsomiUVIWVj5LD4aWgtgcrr6/6SYbbnMvb2zlCDILDEVhlXlqt1zQZJNYd65HsCRxbFNLnoG8wqf3ANDfQzTLyW9HyyjriP9pLtcsaOT2LtK1zPdAA5vvPj7Vs4CuRy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVu4Ly4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVu4Ly4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4FDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743756593;
	bh=BdUFxfWx6T5k8RNRJddsLyHHE/YEJy3ORipqRbyQWjA=;
	h=To:Subject:From:Date:From;
	b=uVu4Ly4fl++W0kvv6rHk/9zEnB3z7Z6iGzmpab+zcOssRrdQooC4GYP8OXjKzrayl
	 c6yRWZL5zW2HEWGpdt7yqT9bLxwn7LePLfh1aozKj5mFLWTKDlqf0Ez8a4koEvoZQH
	 4THTntU30eHxoYu6uQ96NTy4MYKvETTqApB3uKTchGRM4KLd5h7G4JB9DuFH2d7hhC
	 1UDm6IWnYX1vZWP0I8gjZ2zOJvu62ORUof6NeSPVUPmU7nnH2SYtnN0Pm1/Grh0acm
	 Shphx2jhZ1eeyeXhhyjpsoPlKScQ1vAA743LbD/0zrS+pCVW0D3MPjfJ44roIbTlz9
	 NwFh8gN6woE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C67C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375659361.30765.14833579882568772449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf305d05db284733e7e42853baeca15d2f27c7e0f67d6cefa519a1fbf0abd10
Date: Fri, 04 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743756593
