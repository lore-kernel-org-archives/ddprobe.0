Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECEEDF51
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732687554; cv=none; b=HF8J96mmugCZGsKuBRS+Y2P5Jjk9ClcyyK5M/eEBEP7bs/bR+aJsTjIVxJ/xlxHpiXHM/MGXT/JXrR7nmF/Hklx57NFR/kIWovIRtHEFdgMG3hohhjcV7vv7o4Y+zAi4x8pE+NKUH6xRGyRpBNrIUITNG6tmYnBz/1+hC1pGkwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732687554; c=relaxed/simple;
	bh=RiClY4y/6rck03DN6TmWjk6kDPWBK2iPOKuNk4Ii/Vo=;
	h=To:Subject:From:Message-Id:Date; b=WTlYMy8bsuvTwWqLZCcwddmwU2HWQrMulcb81Kb8bLQQ80JD0lhp1KlGwlPWC2OiM75fN4AcpMeSo7hivQuBKUAkSeXkOW1ybAaiVqckcoWxiajAbMkn2+cEwRtWWQEVRCQfcOBCnbD0pW2bq9yPdKy4bsAv1IOdYoH246H2Ruo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq/K538u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq/K538u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A775FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732687553;
	bh=RiClY4y/6rck03DN6TmWjk6kDPWBK2iPOKuNk4Ii/Vo=;
	h=To:Subject:From:Date:From;
	b=Tq/K538uf5OTjz6CMWukrb195s5Zkc6uRuxGoQLPBO7FTSZzaTVazRbX5OE9RxTrI
	 j0a5o9xY/2NxzTeV3lzeAOuFNuWhi3P1Wp+y6piiLlbJP/MvwWnjXdUN9UU+i8wlHJ
	 j6JAv9fjqMMzkJ8sXwfek/W0iFql7adA6ozGrdoKmWtOKrFrWsjP01zwIVE6iLM0zB
	 Z78rl+pJYp4oZMAkWm362GtmErzhNPugNg2QrmoRjVvOdQK3AcukcvrUlQJ3WHRc3j
	 A/ZniDLqJeH3Zv3YY0st935RyWJjLTtosGYsdb94juQ85ZYnG/zG+7oGlF5bpBjuXE
	 XCI0FpXDRD5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94677D609A1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268755359.28512.14643450685001872463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c517a0147401a10ddbdaa017133beefbd6290ede630e0fb344663a233f4b3c
Date: Wed, 27 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732687553
