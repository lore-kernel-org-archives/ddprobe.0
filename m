Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A759443
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784451514; cv=none; b=VWb0w/GoCsC3rVJHwLNFtHfaiUGXaqIUZrN2KtaRpDYVR3N4ReUDdoEZ7J4OVg/Ct+EOxq9B627cnk0d1qVXmoXIFiGD6y11BtvCNC1pQcs+BK8i0oRCTXYfm689YE2ygG0JhzhKaRpKPZ+ZIIdsElb3NjgVNQAHi/XMVogDu58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784451514; c=relaxed/simple;
	bh=fBywtT4TJ5mXfQBbYDmu5ud6DtscloFJGD5C2rNWa4c=;
	h=To:Subject:From:Message-Id:Date; b=CfqFlg9Bvpjr/aJCdgHC3+S8oCOdkmLBp2aHhbB9K91OaZe/YLgwqznLfIbjoKiOF8VF74AhkYYzjwfBfO8H83upPrd1gwje+a2a2F91Luu+u2cTgucZ3K/ktSxwHJhcxrJyIyrVOqRlf0t20Y3T48+/XowYqpNB9imUANoc7SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNoyENw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNoyENw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF64CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784451513;
	bh=fBywtT4TJ5mXfQBbYDmu5ud6DtscloFJGD5C2rNWa4c=;
	h=To:Subject:From:Date:From;
	b=mNoyENw8fZAs3RYJhGK+QmkaTSg/i3ZNcAWQPBIsGbfSuq2MLiLGhMVgY1FjdHr+D
	 tXbihMyPNlLsgsloSv5YRKd5n2Dk6uZH1Z1ZVxeN7vvTvnZVz5DzaOUFye2EqJaFvf
	 hg3A0h/1B9hy2zKXwysokaixg1/qLRoEGB14sYfVnENs0fodouUBxLPna2me5ivXv0
	 xmCnkRKq4GO2X0upBm+zL6j31qEdFpo3R1nQwNeN0czPN7vZaBvKUQ8y3L5mJmjEHR
	 PCd0L3wYxG0EgQVJLXtYjBleriik9h+UDIPuMLpYGHsJ9x5ZPrVD3fTAagDVHwljM3
	 Byv7JwTqnbhdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD3C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445151368.1258.5820245334519744356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7d0392ad0d06b684c34e022a06f3b10151f4a280b9baa19b3b6383bbc3dd8a
Date: Sun, 19 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784451513
