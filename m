Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E10244694
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773625493; cv=none; b=H1t5Ol/mi8pNfk1b28UBoulcJ5owDqToIwSEVlGqtapvaVZ6+Zj5y56pOooIggNBvs4vsJ4ziyP3bZTHjE2I9iD/ZaBBfwzukQZuVlax1JSTXbt/1q9Zxawy3HRA1QmqHrx7DStF9MaUdGgIfSQ0M+3F40TPDlY4CMDvXTpLPRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773625493; c=relaxed/simple;
	bh=OJGX9rEMI4/hctGOwi55JEkQOmiExHKsi31I2jpFvL8=;
	h=To:Subject:From:Message-Id:Date; b=ald03bIM7OxgrUAbk32OOzvMPkvvyNmVACy8g4lyWyCvC+4LyLx4TBwH0l5+oG0D9NFxwV7a6AZwuolRt1qK91+9oTCFBKA4lPcssYWsVmirJTq0RFg518jfzG1tGB1SGhdlvhL5fFd2QWRDKVbN5dNLfuexfsYVuitbPdfN4f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJQVMm16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJQVMm16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773625493;
	bh=OJGX9rEMI4/hctGOwi55JEkQOmiExHKsi31I2jpFvL8=;
	h=To:Subject:From:Date:From;
	b=gJQVMm16L0/lG+f8sM9a0vO3cBfmfkeJ9ASstOiO41/NIB+IKV+Z9L+IXfBokO9h6
	 b95Ilh5//HOo6eXcRY7VQDoyB6mxSV4eUpWP0jSU3RTxrmSlj1/f5XCKcK3bxTcNDg
	 F9hh7LjiPl2g5lwJnVQZ+skSVC08MFOUnTgWcRK65yqBLrVvC8ZxoFC7wzKQAB9q8W
	 NUjPdYXflSgHPhgQ+np6E4V+e5R0VTlrotTQGjXSQXhSTX1BC5cN9TA2CZL+mc3/0w
	 BsmUAriCbfbadw+6JIcL4FJh3R+kaTVVrETV7ddMUSRWjmoS+R6CDz2DZ/1cp+Vp59
	 G5ZR9ruMey+wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A850F30296
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362549362.20134.10228703443725535529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbe1c3cc863ded129b9811a4a81f8bb315ff88f6e27048bfd33c527fdfade1c
Date: Mon, 16 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773625493
