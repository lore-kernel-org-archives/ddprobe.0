Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AB81EF39E
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760992194; cv=none; b=TdQ2nejM4bsRqeEhKzqNrA0im+bYbNhoHSOCaA8u7H2y1Lisw2SE23ZbP30TPpUPvyix9InEZJiisRhSTSBiTDaGa4pvZ+nkBMnigfCDbLtGkeRoLqBiDuYyCjX5nAijETH6CZ/om+taWHychzb8ab8UZ0JSoTqolwFeppE2zHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760992194; c=relaxed/simple;
	bh=ukpYQJsWUEj3t2azysxYxls3JiDGs7K3j7GkiNW2pMo=;
	h=To:Subject:From:Message-Id:Date; b=IZvuHYWnGPDBAYcJYIYLc+oiromwJ8MpurIj5rIuESPtsLocUSLEKaARvbA+MW/SePC12nNJbrkCT25qg9FmyxInfteLwRsTB0Wtt64u8bcnVDklwrt4xK05r61f88EQrYDE9swET3NtY0ampwZ4c/4SQWpjLCDvoP1UX9GgNck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2gEScOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2gEScOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FECEC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760992193;
	bh=ukpYQJsWUEj3t2azysxYxls3JiDGs7K3j7GkiNW2pMo=;
	h=To:Subject:From:Date:From;
	b=j2gEScOYXByAE6jaCZAClvSFexAsZCfrugYuo20zowgk9aZ+urZFCSxNasPlLet/Y
	 +O71SCSWz6vP5DVkVlX6tjjJII3Bdwz9GPq9pJRLCQKK4BwwQypSXNHoGwyYamjCDU
	 V+BRxGu3nCLaPEbU+K3OOgIeVCxhmVE8N0AlNHpH0122W0tYewgzUiWnfjEoiLEmvT
	 gIcCvOKuaevtP4Z1KhOfWN1Atxu9Lxn8RgAhvPXNv3026jkIZ+ZCvlbdydpnjWX0Sz
	 6PpZXLmr8Bzf7a9evyvIlr+fULd6ylLoDzLjMggYrYt5haj3tbvL9M1Pw+V4rXn6vJ
	 thJQcx+0ZP0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191CCCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099219358.13071.1507049301278064001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcf2ebce29fb99977958fade53c06a2ebf5bbd84f4546157f9796704566ee8d
Date: Mon, 20 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760992193
