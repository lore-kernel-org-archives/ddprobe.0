Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E31A2C27
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748821794; cv=none; b=avOr19UeYA02hyLTIhSXjdZipIMJOsZbbLGXawxOnZkRH1ewJQdviLVV1NMysjHvYUWTwQ2jnZkr7uH0aS1rFQ5GU5ez8nxXhd+QQ16JSag69aiDFv8z/MTVjRCtnhoVsGOoO6Panycw1mSSe0qpc85VdZynVUtJ5vyUxEQtdLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748821794; c=relaxed/simple;
	bh=x7uSyTEcQWdlEniTPkZ5kjC6yzWtMv2syB6WRJL9/DM=;
	h=To:Subject:From:Message-Id:Date; b=VpoKy08pjo4hHWhMhFvLYpYRAVoEF+tGOb6vDabS/pNYhs9GzLcr7lXFTbthugWv3quqH2jXq2VsDHBde/HlouGIjrsNhHeR3LdBylSnF79msGqbl1NkDzh/ZH8bLEmChYFyUKNmGKngM0pysT5oMEdhIZdZhA9HxjA72jktCiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTAciUek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTAciUek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D4C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748821793;
	bh=x7uSyTEcQWdlEniTPkZ5kjC6yzWtMv2syB6WRJL9/DM=;
	h=To:Subject:From:Date:From;
	b=UTAciUekuW+v5ryi0C0xo/tvXTuxTlORyBNKN7iPfkAUjqWAYweJ8mIIW2h8IzlTz
	 vhBRvvdTj8JIcsK63UgiST+yrt5oyy8pxO5BqSvQalOVEPw8D3k1RxqxnSOP3WXDSk
	 BMl5zEgCV/uvAlnrziIYmrB8gwwBRicjtLklFLGcBdDdZ9WiZXB+x5kRTxMrauPjAe
	 VCX2rsmKshGUXPTsXEWXQHkulmgiFnvMx48DZhsCnKZjSrMi/l6Xj5Ob3cQKTIO0R2
	 D1gCl2VKar5rDS/MZh98NgKUitV36zc9sdKWbRAAk1Otu4abeIL0SLSMMnKcRyUNxv
	 kDam3mAv/VqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED53C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882179357.23684.11271801362446106047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e906e4d9e483a3951bcffae514e0e5a36f7800287b059a6f2a39ac0ff8320f
Date: Sun, 01 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748821793
