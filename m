Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C94171E69
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724243154; cv=none; b=k6o37rRI7yrOkPKn4MZMZekDaqXeC0nG3mL2tUmtVWY8KpIP0pFGMY6muws/ja40KdHSEmJhPE+oNLscejQpAtevVKcmeCNtNiYD4e6BrArYkwjKJ4aFQZHad8UCPJjmlV1D1+i90Du5qFTO9lyqOK0lTno3mojBn7aTCBm4dBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724243154; c=relaxed/simple;
	bh=GcXAZ8WSKndnXprTCEaz5THSkSBdRhQRQ37DOpWLStk=;
	h=To:Subject:From:Message-Id:Date; b=oNZ0Jzv6ICLhd1Nyb8dA7eW87ZuuzCkErkJxINOou0DOQ1Dyp1EqoIAtZfy4XyKkhHeAhyPj4JLnqCGafs91XYhhVn4OcTPYsWb3NVP+lzhrFn9oD34I/mJ7AMsM1BkHAKq6xYT5o7duh3jC9PV6xaadDzOXPTr9yoktyI25knY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+uJEE7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+uJEE7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E87C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724243153;
	bh=GcXAZ8WSKndnXprTCEaz5THSkSBdRhQRQ37DOpWLStk=;
	h=To:Subject:From:Date:From;
	b=Q+uJEE7iU3hMuLsv03iC3hs6orBXpR6EzZeZ17KKXd4AkdnxcBOHKDMo+YBlTWrBV
	 m8gdStUzJC9OcDnyY2HU3oXzbUYSgvWw1uSm78lejbq/oe106/MHl5VsuVW4tT+RyZ
	 1rZ1GRlIn0Jshz4zFMp9OFwYIz/B2lWEFR4FYHnW7g5ekdQTM+9XDO8A+HLjcz6UTr
	 THsYztwMR9ehCIcdpDQVyQlIH7/MBuOFdkEIetG+IJl80aYHi2hLi/pNgcp8scr8NU
	 s8Hnvkcb4S78XCYu7Gh07cC6dT9xHJiNwBVvL0ejV70e268t51VWeyKuW8NUO5YRAT
	 2y7Zx1WOuCRgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C5C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424315359.17660.13161263035409066841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccccb06f859041e9d92cd7ebcd048705eb9539e91e1fab66542bb904ddf8619
Date: Wed, 21 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724243153
