Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A5E18CC13
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754161194; cv=none; b=LkhzhotShzZxoeNiA+YhE6rXgrd5Owe+aZYANQkIrbfDyXYSXpWPizvNL8prdUB3Dpd0fXvprX8JkjiY2FVxPqJF7qLxt19xW80CJE7taHGWP4on+EN3j9FxJODpgODTsbH/C9Gn2Biiq0BPRTnqwSg9HEHTH8A/F3147+Uc+gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754161194; c=relaxed/simple;
	bh=qunDXeSoFZHHZk5NER8dSGJKOm8u2zZ64RmLj1YT0Tk=;
	h=To:Subject:From:Message-Id:Date; b=e7Ws07cBg6vSU87stHyIk3IfuDMejSpN+7ViNM0JbD1XxuV18C8srXMzLr0rv4BliUW3LWsQ0mvHncGt1nkXtGU+7xEWQ5/FnL0yE70sCZz9V6H1mN069lheIbiVp+N/XoSSXgnWbMwXl2KG11xLKOsv0UhIrSG3PoRZ7XdHaIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MysvI9ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MysvI9ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754161193;
	bh=qunDXeSoFZHHZk5NER8dSGJKOm8u2zZ64RmLj1YT0Tk=;
	h=To:Subject:From:Date:From;
	b=MysvI9yeU4jlKo/El+4zWvKcjNo5QtqmgNRGFktA6zILyblOLbwZSqLZL8yfXSPoP
	 22ls/oMMOtXR56a8oj4dC5X9lvjQYl0COPU5b7fJmnzw7O0bT2DYgmdUQ3zQkRd0cO
	 HGQOGF5RjEghATQkEmIUgVJmXyh6x/bMW36kFozx+IEXavtSi2bUsmkKx7P1ma30M7
	 FJf8l2qTEliffSyUIlhUaJwHQmFHpRgGUHA9j5GGP1v5uyizzYtNn9wtQqiRtuxda4
	 jtg6aSk6MTO/iZHLaoII77zJ+nMmtp+PColeP7rraOkMzPpnIwJzOIllITYOuF39yS
	 tF+/7VmmyfR4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C5C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416119357.28112.1874899543398711333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b228c874eb7d51fda4e04a5fe79c3874899eb326e5d8f31e25b3d4e7d5ba7a8
Date: Sat, 02 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754161193
