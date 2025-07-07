Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1273429A9E6
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751890795; cv=none; b=bYCjkMYhUibFQcmt3388ds4MY9L8QOyHA2dHC4t1Mog8jd2/tmg5yo18tMq1kTJ7hC+U3wzDBRQvXXBaQ9yj8Gq3+0k+vw/F7PrywOmvTibSoJY5hRpfpiV6nr0/IYiZz8jzbZgh7wy/7/rfKehKx8c2TIgywW3p99T9s6ym4jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751890795; c=relaxed/simple;
	bh=Fles2WTUIM2MyYKIlE7KLgdDuWoZ1NXCbDqxcMpQkEQ=;
	h=To:Subject:From:Message-Id:Date; b=i1SKp7BcGKyV6HJilzh2xZ3wT2E57yOjP7SeDF/Rw9/IonLGX09JXF8Al11hCHO/DgI3ROsdQKiDMJ2skhJFcSH4DDJpQy6hzKZBa0rox1LY42olY2XsuSXcff+Xn1sdFCRo11r7Jz5cbHjdXbhKy8escYSjvJSFNDCZWJfwFMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI4VbCJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI4VbCJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2882C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751890793;
	bh=Fles2WTUIM2MyYKIlE7KLgdDuWoZ1NXCbDqxcMpQkEQ=;
	h=To:Subject:From:Date:From;
	b=oI4VbCJtdUS4JkxT9SLcMrPxAOgc1AEtKBYHGAvU9zEcEVilNGb25euz8s4ExwLZg
	 IGa1/MOPWK48gCduhxU4UndEPyQxEXJqMMFeAH6e9qFgS4pOCnoq7RL3K7M5wFuq/K
	 TgQXjpvZKDofNZXCB61BizkWw6HJc4OBu5PgTfjZK1Gk+i6u47D0II/rMzyY3iRS2v
	 hShA7Il5HnK2ED9YsIU7AdWWaZGCkbXPn/gbuWy1yRQ+9wD2fNr1sK+jx4pqdjGfH7
	 qaej0tY+7Yw8bft6VmxiVbAZvkaZXp8hTFFP0eQ6Nqgw9PNCf46qN3Dp7uoEg9NXhb
	 /PV6y25UFpWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E198C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189079357.11874.6252106886352113896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f304f9d23e0a38bc77a08de04aceca031c94c33097c61b10ab3e22830bba92
Date: Mon, 07 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751890793
