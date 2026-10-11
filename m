Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C59352008
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791695434; cv=none; b=mcU0rWXVFCCYXbnC09GHzZqNw4Cqx+Tr/pWD9895oBD8u7GVlaXLu2YsHAkdhGNZJJE39eg9UNQrLF3r+fgKzOnxGgL9R8U71tO2Yyz0Yq//+UtqdDwu7wX3WKNBwfuNHyypTwbqvbGX1ex8sF+DuvQGfpwmXkLZCbUruXtLQZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791695434; c=relaxed/simple;
	bh=Yc5BH0kxOt/IATXxhj76v4/GOwfV8tv0GngFZXsY0OU=;
	h=To:Subject:From:Message-Id:Date; b=nsDFcB7rsOt8TyHFdYr7azKRd/lKFoaXN9oJTsVfjjZFAnl5mRHUEkh4bSsqLhDSXDXjYAVDXhSY/p0wDIQDnl7y8u1s/JP6VQckB3wWCvJlkfWj3WXJjYoPXMYqwwO7GJfEJUJx81Ix7Bap2bGXGoViZUCe59VDhtxBy4rqewU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgwAu+ZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgwAu+ZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D744AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791695433;
	bh=Yc5BH0kxOt/IATXxhj76v4/GOwfV8tv0GngFZXsY0OU=;
	h=To:Subject:From:Date:From;
	b=IgwAu+ZXD+NKokcxI2SeGnZ1Q8tFKzAGJH8f2Abrs9jpAjozIZDyJ/h1iS4dlePRI
	 LBCti+sCCMrPrdzfz3W6DVBF/w5MdFc6Uljn6yCV1C3WFVlbiQSTdcQU3obWkdDee0
	 1Rmxyw/4hsSwgx958ze6jQ36S/ICiBosFCinV7msZ7IXrbnC1cpPMTxmQ0VDYggB/g
	 gauOKfMebkboSkOoxCJF03KPELtxVgUDZykHGW3+obK1tLP26sgPRs0RhFkjarb0on
	 za/AJ48j2HG/3Dy/JXQNWS3VikghCdGVol7ZoxCuBQZ2+Bvcr8j7p6JksJjvxGzHWZ
	 xwygFhelj9+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C2CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169543368.8119.9069912444031299408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0353ce85f0e4f79b1578700693f15df995bef9deb34f9dce80e928f0f8b1757e
Date: Sun, 11 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791695433
