Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186D42FFFB7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769536434; cv=none; b=OIerkeZ95zpezDmPkHgjZmM8g6NQ1Q50YedonAur1UX2R3gszp2MS/lM0zigGyXKC2qF62V/FmLnDbFW/G8Uaw0i3QYZAJ/9/6Ze0IfD7tv7pqkfC4LiE0r1aAv/RMhTBHnfYI0nY3vwEcrMh8KyBZT3Uv7C3zo81mUa0JA9/94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769536434; c=relaxed/simple;
	bh=L8gSvlY0PV+mWRQRMrSjc8/LnzA6v+uqMA34kdYeHT0=;
	h=To:Subject:From:Message-Id:Date; b=EnpzWxLbr/3l9idpUB2eajKrAWIwtSUHaY8Xej6bKXtSJs01Sv+O+GQ8EGKFEjexuD74gZECiJrqt4QavQVHjKNytsqEefJkRuZYY5ihycorqZMo2do6bDZfbaPS9FE3ExAe5ZIRwqr31hUxHC/Xr5Y9AKSnXXal5SRK1qKD0lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkGY0jJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkGY0jJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769536433;
	bh=L8gSvlY0PV+mWRQRMrSjc8/LnzA6v+uqMA34kdYeHT0=;
	h=To:Subject:From:Date:From;
	b=fkGY0jJnXkpdxUVxq+UvisQarPJGnteqKxEPNLfJC7/74Secv2ZIsCq2kTk+ig3c8
	 x7HRedgMOtNCrrgmF4p4zZ9Xziyx8NLXtsTFlnNotfKVeuDWvSLxFhMU+HLL1l+Fov
	 PsukHsf+3UModJcQCmV5zSYHxkzyk2yb39GZw0tyDZzYBzCnkh+IPw0vNeB43O9jOn
	 gh5Eqb+PXdgfFvnBse65B+I/+P1isaPQetCXasy32HAU9JEY/7Oh8WoQAYuCUgYD8X
	 LVz/q4mB28rzdmQmDAFC2zzjATiL+ivy8JC3zVToJTUJCNbni8UOwK5bpGUqXJ8a9w
	 ek+zznF9bUByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB4D2FEC8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953643358.19129.5940235656055004842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3838197735269fc0d1f7eabd2e032505978049c5905e6e22c3391bacd2c1df9b
Date: Tue, 27 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769536433
