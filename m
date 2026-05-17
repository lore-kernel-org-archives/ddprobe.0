Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13EF3BED1E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779032433; cv=none; b=j56ErGuwjwOhryLEEOh0HyW6YWs5MKnklUdSR2h+JnDbwGsCQQYQzaSUAIp2sCyDmZbYE41Zpa2Bt1P6wMZeHdwklcQc4eoLmGhnrbSZPpcy3aKsziqHdtbGMiCBCaWJS5lyYQ9t8FHhpswVJTHPS0SXBrLga77/KeoI4nTOe5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779032433; c=relaxed/simple;
	bh=IxBJgj4qahESSWlWp+hRWTAc6bpIBesBQ9inOPSNcvY=;
	h=To:Subject:From:Message-Id:Date; b=LZDdJ245Fk13hy8OmiI5U0uKArEMLCWtbWyHY9W/rbG0iCnUPxjSHj9Y19SqDucEMmbp+ma2cahWB2MPQTKVxPCVfdHeTjSg6C/9oExCEIbduNWZfENtFB28eDs7ASkm6Lz6kvR8pMDQ57audx7eLqBYalgtVSOxSMMNXVeD8kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrJd9wfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrJd9wfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65A4C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779032433;
	bh=IxBJgj4qahESSWlWp+hRWTAc6bpIBesBQ9inOPSNcvY=;
	h=To:Subject:From:Date:From;
	b=QrJd9wfm/4HkJJKl+DRly0rS7DBCw++xgazm88ErePacWZEwWMmIjt7gLRiYqtxrU
	 vGs54aOdhxux/lNhooDS1Es16aOmp+u56xwgXaMxT7Z5zMCM9yLSosufEWzy3fCNC8
	 g6XAikiN5U6cvw1paHXuRsb7xK7nS70j2cGQsn0v29YuDzO1OFPvJuSGZYu2sphwZL
	 G+De0vEOBwkGpgs77/m14GGqF6CWP1RdoGGP9foV9rvWJMBvzLXsDT6TZD0nDyzDKJ
	 wc1VwNUan6nonKX1quoru11G8YlMkxKrTsQ512VYcenGNefQTRjSXwsa+GCWSKs/5E
	 eH7T8bb9WJ04Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE46DCD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903243370.16347.6713625887481674160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852cd4d8cfc90e7c21d5a4763c9862ea906d717c657214bc21cb3b47b97af62e
Date: Sun, 17 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779032433
