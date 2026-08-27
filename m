Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6303E0750
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787830234; cv=none; b=Ou8LhYrRmspFyb4VIEn4U2Gby/w1qVo5dY7gAShfzqxqkBTXdFK4LgZf++7TTZ//AtZrkkgbO8s71U+L7LNKqB1EfcdOs2WFoKQ9XmIYKHrvUxBjPVbSsyR6bX7iTqV/p/IUYZVzQ50LyCFd0CFZh5scPXhZVsJZfAKM6VVA+lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787830234; c=relaxed/simple;
	bh=aDeQzINRcgDOdmo/TG0NKNNkvrJl761C9jZa5gNJ2xs=;
	h=To:Subject:From:Message-Id:Date; b=ccFkth7hDQu5Mq11yvTg1CHOPxZLJcUVncJlkgaindqIKlvFcGC2sGGDpiYnhdsdxb4L0Q8qP2uf6tjBnG8Givcatlp34qZ6uL980Di0474VWyXHvZ2vAVJVw/sUJVx+vGEH2RdH3ZzruimhacDpGF4KCG3u+UEhpakP1Qrk8vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwyBv3aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwyBv3aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF8CC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787830233;
	bh=aDeQzINRcgDOdmo/TG0NKNNkvrJl761C9jZa5gNJ2xs=;
	h=To:Subject:From:Date:From;
	b=bwyBv3aa4Qm+wWnrEJgoTjJnAhDZ9EnZs2rr4UZYhMIfo3gkb5MeYW+wz43kL8f69
	 UTj9Ei3c5u0xDC4J86URE1q0Hqp6srr8RKz9yQ7e9jzU69vx4n+6lBx/hSsh/QQFgj
	 7VX9lGMTpZeq9ZybkH6Kbfi6S/mTu35cArVEdY7FxR1PxFn3VsJqKuW3FKwqvbF+UN
	 JfBTuJP4i5wDm4O0B9FhcbF/S+Rcpwq0r6aTxvE6Ds1lM+bvVZDuINSt8AGukfMEix
	 OnDmsIU1ZYukaknJAEcRCTmOaD6upHJjD96b/1PlG13P2AYQ1Otb3gdNR2+MnQcpFg
	 jucLPtc6yPStw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4DAC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783023369.32076.12388498836249725738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ed6a31d00f1d18cb625edbe5e429743d764d76f063327965a51bed4cb03e01
Date: Thu, 27 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787830233
