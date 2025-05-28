Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365DF283C92
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748438394; cv=none; b=r3vlevDQQ3gPe04kYJ749WvvszRRG2aEHR2YilzJ5QpSi0Cb0QAXatllQeaX1KZNvtS4PXQ/Zn9tFj66Ny/YY1O6GMV+T584BtE4eM1Q7wdHDQ11flMB0AXLK+STeDUtgnYMo3rgImiNRk0BEJy1QDmjYdOLZx3c7tbISTKZihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748438394; c=relaxed/simple;
	bh=HadsnvgOgAb6gEULI66G6CcO81e+C9b6rRxCItQb8Zg=;
	h=To:Subject:From:Message-Id:Date; b=Wa4PNjBSJYflt4XXemoX2R3KukmYzcoeGRGwPdOcZjPwLSp1Vz6tcvQvKBlTgWv2KHw9qaiS4bPxhJHPrkctI1K5Dttni92+faN/L+pbDI5KKfuc4uP+0VcVudf8qQ1UusKQD1xRshhjCKcG7PzJm8ykkGO6D7yenDoxvAOqY7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Clz8Etuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Clz8Etuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748438393;
	bh=HadsnvgOgAb6gEULI66G6CcO81e+C9b6rRxCItQb8Zg=;
	h=To:Subject:From:Date:From;
	b=Clz8Etuk8mu39f/+sM14YLSyVIUd1xEPJNhPIcyI0a1VwyTR604Ub9zxzl3JiCSQK
	 jZoeP4WorcWBz3z0iLqsjhWFuVpQ9iNatN4mZuWBAx8wvTEaD50wOZruFnPs6vRAiq
	 wGWCENCYZJQu5Pq5LNNS/lkuDGk0uuNZeXKdQrvWtCGgXrGLHBKSZT7mEe7Nx+F4q9
	 2mV2/pfhVWUpfZZ26FI1oKfRcZUT8Kh7HOh5McTIca+eCDU40TSRBAb78v8/NEUr7s
	 HIQQ8CZ86SyxnUQES9DP+fNymxrLqzPKmv2jMJ49fg/DrMbUExBYVL+edsUFUsQsOE
	 ckbUt/yztMq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CBC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843839358.23371.2893489524897510442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f38873765eb874ded8b7d472fb56d75d32602a8a669892a40e5e6ee96abdd6b
Date: Wed, 28 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748438393
