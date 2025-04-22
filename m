Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA901EF094
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745308794; cv=none; b=QFthT7ArIkwnj71gAILyBnQFbG9otjJQyimLqZZA915U6IaYbOvnRWvE6oIMWs64i7bUQCOnDsVTaKeszInUm97l4/PlInNnnq5LCkrYWdvODZIftopVKrQOhWAXwFhLcWhGDQy/CXBWU29BI+IsaPXCKAuECHXRiVkvsj38ni0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745308794; c=relaxed/simple;
	bh=RQZ7gdCj7yQXOsCtjlL+AthvWzyPZdD3qrF2pbxhw+M=;
	h=To:Subject:From:Message-Id:Date; b=ScAJAnM/XLag3hNBtW79uhYmEMIciSGeVoPAq8anw25iVF+GnImLSrKZtbjV+YLWXTv9fAJtyNPj24xsiRM6c4YcLGmZlQf//FJZOcN7unAQyaCv1pllnfMLygd/CfCZi74wVaVHDSiH8au332i4ht17nZ4gEgUh8mQLAPG4/ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9UvU8ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9UvU8ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED2CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745308793;
	bh=RQZ7gdCj7yQXOsCtjlL+AthvWzyPZdD3qrF2pbxhw+M=;
	h=To:Subject:From:Date:From;
	b=q9UvU8eegcXSVwRvCrxNkqprLiZmTIEav6ScQdsaV5LX1p+IU7FxoKfVc/mLqBkez
	 unYu9B6gPVOM+xFFZ84PjzGzh50vYUQafdIdaxAHiPoUYEE5FZWxGitugxK643BrKt
	 WULdtmlxDAcOqNqmjugSagvJL07oUiCzyJiUC7BYB+osG32K2ixAKuqDrGzdYvy6/z
	 6tjPIMJJM2yzoHEkwf/9zJzHHy0418Ki9z+bDTkOXkWFh2E5bWTW26mPMX35DzIrqY
	 th3I13kTdcCdV0uNNk0od1uzKAY9ISDgl5ANqe7dLZ5Ht6MAJqpMbS9ewPpoKHo9cw
	 gMhaIt6vpxFqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B673C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530879362.18998.7044558027183689592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f80ad515dde4342874ced520c14f6c9128b4b106ecf401798141ca52aa5e6a3
Date: Tue, 22 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745308793
