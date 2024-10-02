Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF761D0786
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727880353; cv=none; b=FtznIzwVoKkA0jM3GwTCnPhTcisNFhy29zXNBysVEqYFwY/L3uTj2uX6XVPHwOG7XW+7MmZSuxU9L5jJRy8duvbV7/P7bNdR/f2L9EnmzkcaYF3c0MHXG7ESubiRDNDBoRaKlxDWxEIgGcVV1l35F9kOFD5rsCvY7pY3N/a7dBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727880353; c=relaxed/simple;
	bh=sP17y4KNukc03VKqtPQUf9x+SlcCyb9QtzkqUl2RmXU=;
	h=To:Subject:From:Message-Id:Date; b=WC2i0ct+Ob7HkpGEKoo57yh7OutbP3e1c1mdShgEccYSuanIWaX3fEuN/DlEhGe/lZIBTmpJagu2hVvv3fUNLD1HseMp4MIWaiRjNcDPsC+NkbqDeroKTCKxLe7FRsKI6Q1dmbyvaDTU94yDf0ABjLpcAQUlRXO6k7wEHrDVuQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMtKd/KH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMtKd/KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6447C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727880353;
	bh=sP17y4KNukc03VKqtPQUf9x+SlcCyb9QtzkqUl2RmXU=;
	h=To:Subject:From:Date:From;
	b=CMtKd/KHGiwWj3DoKBPX82weqwS8XFPhqIEHk6fh6uMqcdiYgyu9+ZJgUVsFVSwcV
	 /CuETpiyKiz8H2FahpHNG2C+G3pdJr0EnWoqBccbulwtMbJkC1Lzt2mKqFx4kYDOfS
	 2K1FgS/HjweYqLfdqU6Rzqp25TWqxSlZwgpbGarbo/v+rGnQhFJWwSeoEtcbFcA+ir
	 fyYEGn+OfH9/VjVtu55RBIcsxca9IBXo2LSwmIGwpVMSulVN/0xFERTNmKoPBj7B/9
	 KQlyZnL40lNqgmD6Yd+WsJndif92NCYSkcsuORdxEdPUvTJGf8N/shGvHqJbdmzdAd
	 sKuYBRNdk2hKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D927CF6D28
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788035363.6645.17195768700883828197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae2e173a5a2110e3024cf91b01d0b5c3d5f89657bf343f37d16d7274db26cfd
Date: Wed, 02 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727880353
