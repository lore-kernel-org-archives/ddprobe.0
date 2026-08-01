Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5857B1EFFA1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785617434; cv=none; b=ly5NZb1XYF+TbFzBZXUuxhX+x1WJLFY1k/aa8kzGooHhXLZtcfLGZxafs8XYdNY3ulnMZdju7AsnfHpmEUDKBH+gP6PRmraZmjPa5WTR8vImJ6fdz1faHAYHbLA2ZoeHy/e1fU5iiJ2J5bYwfzUSpG+DtKqc+ShPinHGQQ5R0fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785617434; c=relaxed/simple;
	bh=wFmwkzZRKeYTsoJc1hahiDcm4wy8tsZGYovnCB9Vwpk=;
	h=To:Subject:From:Message-Id:Date; b=nkYNwYO5mbVZKrxRTujci7bimAnF7QO87S9mhIJ4T1v7+izE+kIWJS9NyiHfyz14LCiPPKF5w9sYVcB2mGlsf6FM28xnLY3UUjyXuZMyT4+sSKjF4+1A4zw8Njo0UJxe8RXLgWAWgQ8zUlOQuAq2Zn5ROVA65EjzBbDVWd4FL8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbir1M5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbir1M5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDC8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785617433;
	bh=wFmwkzZRKeYTsoJc1hahiDcm4wy8tsZGYovnCB9Vwpk=;
	h=To:Subject:From:Date:From;
	b=nbir1M5qkONKji70b4m97UUiXoR73EIxhuQiPiB+85zOWGHR8UeW6ivh/IPiPpLQl
	 Ptlm5Gp5kowo4vyVbnsfD43dec/mtWuiPDaZ1qmSWHsRpm7zMG7/0RpL58d2wA/TL1
	 8M7vw1D0CCSlww7mAzHobha8Nyxb0Z3p56tWpdPtgMkRbWWs2ruSGABINTl0odAV1W
	 mbgpizV6e7DgPwc/9b2ZqhKlQvd7NRS6jVTIJge661UTbdSfprEo/xnSulQoMcKw8R
	 bkfECUzMu7BaUlvPzblOOY1CmkleYkj2Iw4RyxEhEpJn4L0DBAW2yDiq9pxOWBiij0
	 nJKSRHzyopm5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F95C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561743368.17322.16406486296199362909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f640dcf57f487fa783605b589aa3376a16d7be889945bab4d6d8143292c3e5b
Date: Sat, 01 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785617433
