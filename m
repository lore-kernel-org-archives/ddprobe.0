Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330BB17BA1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738000554; cv=none; b=scC5piUmRwLE3pIbHdu0WRHgGqZRGosM/L0Ztm94HxaOaRhCJrccschJDx7NpfreD/F3XIgIEZsnLMWyXech/hjCNDfuClsvFLVIxCKguYBDdRkFeWX9yv3lbkorMOXiEwaSaB6db55vz0Mb0Dm5eQkBka1czAQVfA4uanSyeUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738000554; c=relaxed/simple;
	bh=bWCGZlp7GOi07to2TGDAk2ydfG7FjGjpZAn0VpPjFEY=;
	h=To:Subject:From:Message-Id:Date; b=U3boZMSvK/XNk3OcyF2Gf6Ozn12ubvYrtiyXLUbBXdFIv6XicBj5VnYcYBLOGTfWbZczkGo3P3ntCPdMgvJ5XOvKaaCoxkMDANyhkP/MEFgppYLsbAoxNrgKDsQ65hKtLky+KEMnwTnNKTzke8s+WpC3LUD0BfSY3IF3JnQQQ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrgRg+8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrgRg+8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A77C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738000553;
	bh=bWCGZlp7GOi07to2TGDAk2ydfG7FjGjpZAn0VpPjFEY=;
	h=To:Subject:From:Date:From;
	b=LrgRg+8nV23jMb/EMPRnp9LHzhyn59L0RJTQ7r7y7HShqt8AKJhZ7oIreDX8okCR4
	 Ox+MBRVZqQ+PnuKI/AUQyeAcoDXEUzu+RbtAcVh1BpZP6Zh8FIao2sObKI2QOVAFC9
	 3TaVnBm83GIoXhpB2vDcELKaw05VpDu2dCxK/E4P+5xFzy6BskYdTFKfqgZISQZz4q
	 l3SzJCGSZd1TyZz6a9ev5hrgb4Xztz+RIDO950vT/Yk7TQYmn37T0XAvrMN6051ht9
	 SwbUhhde54mQEjktZ7Fo8Ojd32KNxr44BAvn8TtzBmQHT3L1WFjpFHglk9T3DhMERQ
	 ql8nUL00efFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DDC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800055359.11972.6692850924340850660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709e116f5122599ccd91e055982eedf33b41f0dd0fbf0cbe85ce33832fa4fd85
Date: Mon, 27 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738000553
