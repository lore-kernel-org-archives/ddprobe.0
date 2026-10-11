Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E96E2673AA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791741634; cv=none; b=Cuv6ro1QoUZmEQD3Lmu20IhpyiI8ZXJ6i858iP8ee0qQYS9MH/vYUgfAqmUNEiEQcrZQSr+YpHmg5Zw9HAs7Q0dkCt7b7ebeVvs3cerBlXxs+tiYUPXvwjCXtdAFDmthwHRLb7NCwGFsDpUpoHWUfL8EOaXZljKDYMSIk988F4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791741634; c=relaxed/simple;
	bh=FinVUjHjP2HGq5SXYU9SIXdt89atBgRcsxrUiTI6G8A=;
	h=To:Subject:From:Message-Id:Date; b=P1hQtJON2sEE0tNYH/mX6MlyhqG/PTNatfgQTCIVooISJpbFeKQzY1RaYZhj+AYau5DvuAQseIBMIMkWfr6+zSyKR4iwxMb64QSPrgdGWHlpkuDdIbVJwgoSN5DKd/lBQyghZVKL8J+JJYMgIwm4POEiZZJwBNs5qKffsOvn6IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1RaPI/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1RaPI/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3477C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791741633;
	bh=FinVUjHjP2HGq5SXYU9SIXdt89atBgRcsxrUiTI6G8A=;
	h=To:Subject:From:Date:From;
	b=E1RaPI/qWdUnLsIisUBwLziwGXNT18ESKb53g+qsMTtaRJKOSJ/77ZW2fivjBV6QI
	 KjH734hihahdLsy3kFT6YsC5ubUdANpcayodlD5bIuI9DYvT2NmMIIoGj0Err7U2F8
	 wONfPUzSg/vVEKz8HOlJ6Vdb10cODTxuNeL2PhYySqXvhL4vHIenq9Wcyb+UjRqOEw
	 sWmnYv1qzdV54npeFFR6Kh46kDSssooPy5LI79xvjwFQtNmux7MPjAehmbATY6GsdY
	 n0rLqzVbzx+Gmvjfl+Tq3btzqUtFEYM1pA1DaaAAVEi435D2Eou5M7Qmt8y1qoP6IO
	 2TnCVM/c1Crjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B138DCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174163369.25056.10344656271102873774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca9fdd645d04f5f1380c791e1d14021a64353510d503b03aa741739c9f9174d
Date: Sun, 11 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791741633
