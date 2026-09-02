Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F96442FA0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788389435; cv=none; b=SFMKTTU6e8vuZ3Li5Vj0tVSPK5x8LMKyzaTJT45E76nkb+1bdYJcA1+DqzKp6pGceY1GyKsb7X+5hvJJL+dj4MM024ffBHTInCC+yo2foE9Xjk7WdQBQGt0JZL8GWT54ZQ8/trYQuVV8baQSnWXxSwu3H6Uij0BMoVdB4kxgXUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788389435; c=relaxed/simple;
	bh=zdI79vAhc9GWZ/177yKWxyMVgXZWflWh24ABdS5XyiE=;
	h=To:Subject:From:Message-Id:Date; b=er5JdmiCj9cP6BlCa9gG2EFI5Z1MaGehJcGHusvQ9vImhc2OjIm4u5SZFnjctkVW0ctqpeqmtF3DN6lKVEEoI19x1v3JNYeQuwxxpHC2Vf5/+0s9+ah5nJVA8Wr7o9z7TbfelOFvZJF2cTzMusCiXqU9n90+H75vfDKBBSXelNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=je380IA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="je380IA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BD2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788389433;
	bh=zdI79vAhc9GWZ/177yKWxyMVgXZWflWh24ABdS5XyiE=;
	h=To:Subject:From:Date:From;
	b=je380IA8JwyiTWMJyGTMr602oKnrx3eJCLtPuHFrcgRri7VoGWn9Ejn3pAn809+Ue
	 f2saKuSE/di09exjS5lRCOgNS0ZB9uvmQraTAVkMD4z9BdJSrD7zsy+xbGicy4rVBS
	 QJ/LOf8SYcE6rLGXie110Of6dxtZSxsKcLEJFt1Dnuktn73TjKYUatavO/gr1nTgou
	 PV/lrfwxYQ6J6977+0BN3P1CsFP1pGJxjAsV0ks/CJETJVenJx8eSXLJ/Q6YuTqSMv
	 0b/L89cQtfEX8MYDi/6JPlWppOogEZ1eKluWKtvl/6wG4zOzmuYAqOH4O3zvXFFXlR
	 AXQpf1+P1Ekqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B024FC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838943368.17603.7643905314677549924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263da5a5a5f1600b837a6dfd12c2ca7095ccfaeaf24befcd7d76071e7cba7c48
Date: Wed, 02 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788389433
