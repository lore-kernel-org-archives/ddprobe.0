Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511533F8F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713016763; cv=none; b=XKcfFr3rLSdj6Adj2Wz6Gr2ZbECc/zZNnyCPd+hizZReqF+uROkIdTQO692Ej56TNrT03bs7BPfAgR/01DcbDzTNOXcJxTXu/WGYqT2CRRF7yBOPWB2MivU4mw40G7x0iDgjObsh98xCiXQO7F8hQJ5lom29x78VawJiO0KOP1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713016763; c=relaxed/simple;
	bh=5JBLLQBcpm8lTreW7PphxgMMAPO+KLoMZfUqBuZoDkY=;
	h=To:Subject:From:Message-Id:Date; b=P6ndglT1oh8fywR2H3oyQdDUpt5UeYzZkcajmQ/JVXPFZ0ufCzxFbYOPnZg2zbRCzNbY9CF688GO4W0JfsGQRZ3e/O5w8AR7xZrtBNeefxaT1U+XOHQAynzowIObkiRJ/95lj8sRUHT0jCgV34cnk+wHpcFLgITEn4Rs51xtr68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKrtp4jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKrtp4jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAF6C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713016762;
	bh=5JBLLQBcpm8lTreW7PphxgMMAPO+KLoMZfUqBuZoDkY=;
	h=To:Subject:From:Date:From;
	b=RKrtp4jTOC4FUxdZ8RUHHpooTy6/KZjK5+5DhyXZDT6PrjbQDD8r0l2DaoB9OpoGi
	 d/To8CD5M+wp3CR9FskpH76oqAQFxAstHglGlyXLH/9W9JL3/154WRcOnY4mrzU7YE
	 psb0aM04qqTHf+NHXhfkKMyvX6LUjNg9EaKtrtLjkRujj5ke+awRvnjYsBgogbds/d
	 XeeSzGl4rnW4J+NrI/toQ6p+clyzsVV7rGBTMiXBTXAfsc7uQzbftpMvbCxW3rEKfQ
	 ymzvuQ1FT/kXMzG6t9qgRv9l5YxAbcdqZ7g4XatUdCWIVew0j9oz1fl2xFoHvuZy34
	 n8IGqYqIyeEpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9B0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 13:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301676276.5530.10551117033803482644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2a752c7f430acc4e58cb78aa68f3add6494c0fc0ef24435d4f566171888d2b
Date: Sat, 13 Apr 2024 13:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713016762
