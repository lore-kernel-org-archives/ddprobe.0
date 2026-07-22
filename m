Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6DD3AE187
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784708914; cv=none; b=nBPlSoWzNowF+sbl0/XWdVnqk/8XweSAEk6Bs8fdYmofltRxwYkIjNMqdoGcQ0wT6KKb+z+kq4SYfybWhjqNIrRX3l9Gdcsn2ZaMCKeo619pLqCYKqpM5G7yFMopkgVF/h2kA6/0ooh7rwfQru7L/U/pN8ZZJjpmSSONvZzR6MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784708914; c=relaxed/simple;
	bh=VBDrbtC5xloiEuIiYsRfgujAIiD0Wz69WeGEAsIo74Y=;
	h=To:Subject:From:Message-Id:Date; b=vD4+YuTaCkMwsPWQcL7MhyERVxp68XlXI7Ztr/7d+/bsOPRzwXuQ6Zv7VHuvJ6Qaw16p6AoWoKBlN5W3jQff9RvYw14VnJYq9PzAfC5FtkPieBOqPPnXqZgP+XXVGOFXdwTODBTyun0rcKStet6WPI8pYyoapxfj/6Wa6fYoPfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssFa80NJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssFa80NJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99E4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784708913;
	bh=VBDrbtC5xloiEuIiYsRfgujAIiD0Wz69WeGEAsIo74Y=;
	h=To:Subject:From:Date:From;
	b=ssFa80NJg6jx75Rk7GC1hijKwQQeNIPwEKWz8Pn80mqcq34q61ubWscJ/GFCWabmY
	 +CMTnIdi+nc4RW3C7CXmaAyfJ/almEwBd/7RALKkYdXvnp/1/Ks2PGAgTrlTWCb8mC
	 sn5pqdZSN8WCJikHCPeEVSXGdxP5Xrwl/RS/m0srMADoozCKM7GnpCb/c0xdAHfCvS
	 AepMrdWnI7PIiiHtsERozvjG1pq32Q9J2FA6RbhMfppIxn0bzPPo0Eg4nOjJCezYZG
	 II214C78UDuZmpR7KmRXN5d45MDswzuilz5aph3lf1LaXv+HgKbZjqqOT1AY8jLYX9
	 sOuCSAwU1PYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE068C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470891383.18753.10220923881641873330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5dcc88635ea335a9d69f3a5fb2985184f02267eec7127c848035bf48f1cccbb
Date: Wed, 22 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784708913
