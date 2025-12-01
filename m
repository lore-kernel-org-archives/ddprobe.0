Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A22F1519B4
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764573774; cv=none; b=hxqS1K1MsINmV6/4BqlJNs3wFS7BbDPWtD7fprNGnL85/SC25RSraGHefbXjOCe7Ndvtw7XjIYlVJ9Fqa2X06VcMu8wp707sIt2/Te0JBV3uK3TddRASRnxftMjmlrDMbhbNm/jW7WYL+2/RGFxxHfeHbK57izUlBKNGRT4Gf2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764573774; c=relaxed/simple;
	bh=vG/UWXBMuLv9miYcJSDUFVYlsotMGmr/Zpf4MLcJSS0=;
	h=To:Subject:From:Message-Id:Date; b=Ve9hG3KhTZJZppoq32XLepKBzMqw6c9hyqZvDpn3m7xfu/UUDMV9jxmTYZMxg5rLxQ6Og66wx8DpTnLIo6UUZmwyLCyna7Det4L20GC5o8P6Q3oFspUOB/fCvekpLw+9pkBGqz6lHR4FaHA+sWeFkuB93kcvmVw2hqtVHR79xVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnqb5OAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnqb5OAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C14C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764573773;
	bh=vG/UWXBMuLv9miYcJSDUFVYlsotMGmr/Zpf4MLcJSS0=;
	h=To:Subject:From:Date:From;
	b=fnqb5OAWSKK4ON/U/o/GvSI78O0xH1J+ewosB03SCPhPKebEvN+Lx+IwA15hUCUEX
	 8q2FUbT7eFk0e8Yqlm4Xfe8HUfuUkF9C28gwmasnxqwnBuE43pOKOkY8Go1pIUk0RS
	 PA7PC8wKOHk/ZjvfKtUxYKKwAKxviUTwhnkP7NxzmyeDbBh+KEI3wjPD8mVCsgD0Tw
	 t1OihlRgkepKuoKbjPzcRRm8B3ge+Gr5SmFdaVZQ2Y5jUhOip6AMyGYIktkZ51pJBW
	 cfGImlVgAlK4FZCCrAH6mybl4V33XXY/jMgJhPgfKAy2Qd79AAR/HWu7T/P2+dvr4Q
	 K1n57wbGjqsVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91720D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457377358.8276.1133501682376806570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cf3209ca24158e594c702311d4581a18f639b8391cb74454ed5dd16d77157f
Date: Mon, 01 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764573773
