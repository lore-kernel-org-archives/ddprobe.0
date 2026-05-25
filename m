Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAFF3B1BD
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779679954; cv=none; b=Yad42SESZbr37QaIL2+WDahV9sr6gxInDDaTYV/yz03bkw0vDl8zeBkvPY++b6IrL5fHMRuEu/BXi65pvyV7Fmxtjdem2bzR3ZjfEBg12US+5XNB9LGTTaWM8wDWHvatQNm1A4n7TcAgfJvZ22/RhAp2ClrRkI9GVI2bNX2nEuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779679954; c=relaxed/simple;
	bh=+9iLbZlKUXx9Fwk4mhKvpW4VAwxPBPVfmD/AdnICmvM=;
	h=To:Subject:From:Message-Id:Date; b=hA/jDKyzKJ0WKxLAlYvyUZFvvaRpDcMgpYh6o0wtzXJFojLun7bN3oyFh5MLr8vJq2nAsKVmLdB7abf2Q/ngTuf01P+HIUdMtL6wPnbfw3cSo4EzoTZHWsbVy2+aSfWSYstRsKPLbSbD+nwJqBgZ5MBI0whODBwglM7r9RhJWoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy5gZ4bW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy5gZ4bW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63D6C2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779679953;
	bh=+9iLbZlKUXx9Fwk4mhKvpW4VAwxPBPVfmD/AdnICmvM=;
	h=To:Subject:From:Date:From;
	b=dy5gZ4bWEnVQvt6c3w1euzRgJadHxDdCjPK/pl4G38eVvmjBQGdG070KwWlecv0aN
	 IqgTlIrhy1VbWoFIjoYNiNhhSiZ7YPeAfyNVXJ01/oy8Y+cOLOk5D+FRbGzr4msfQk
	 DaCTQBgS7ogoxuOjaDNj7ryAtjeRKAEJMZ7+zEC8dJ2ZXkq94/XQdoxyDfcrskwnsY
	 5XJkLh3sVNxhLNaMW3jzOUbZ3nQet6xDxkltRC7hEuwg9blJyIspbkNHywNKk2NyEM
	 ARO6fRyKLMHAwf5Rh6gVDBiiBIXAVf8cSCrn0KP1RAGdUBhXDVJoya4Gvw0307WX8l
	 BWextf7Z+i+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82A0CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967995368.552.17548541036522101976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9524cc656af7794b06f0f2f7df6ac3eedf38d29cd3506f8e196cdf8e76d82028
Date: Mon, 25 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779679953
