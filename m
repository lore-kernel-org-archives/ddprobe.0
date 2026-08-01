Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADC92EEE67
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785570034; cv=none; b=JZ0+w6lFhifItq/Vsds9fZaA+268qsC6se3Dr9vXqw8ebsrLO6PwPIjP9jmSdhs0zNH7itbS/DUxk559HFQ/jlnEivqvCh724GW0hBZVaH25t+bXEUTvTbT6T5h4QJhOxbNljM/FxLGNGpkmW/zfca0xcoJ35X+iMTaKH+zskJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785570034; c=relaxed/simple;
	bh=sDF7hq8nDMbL9fnmIHS0a5AMc8B58F7c7ZI7UfqDArI=;
	h=To:Subject:From:Message-Id:Date; b=FZZcUzCNiU3ZjGTkJbPIjhhojWLN8Ca/x14U3JYYhS1q2uvw6zLxtxGD4l4qyLH0ch7CZ6a4n4k0D0evJtwV1AXFeDGuv+bxc54TJmf5epgGjewLjjiiHiIuw0bef7veTf4hRY4G5ISStWo/lMigT2C9ozxMn+ZFlLHRVz5fjDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXRyyent; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXRyyent"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D115FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785570033;
	bh=sDF7hq8nDMbL9fnmIHS0a5AMc8B58F7c7ZI7UfqDArI=;
	h=To:Subject:From:Date:From;
	b=cXRyyentdZqIWnENuMqBOMD02icO8aB/OdCSnQgillrTA92FYefQkfKWkRl/JxUyk
	 EhCR0dr63cI6JdG8oviuWBX/4tnerKCyZ89lvQ0wANjOiX8YGtLW1F09F+s5mjju7J
	 2Y5JV0TBH7wVWaPIK1VmeDGGm/N+Z4Xe76ZFOJ7ez6B/SF3WhiQtIK2lhS9fQh5sPU
	 cxl5wNNgrjCbYkSkK+quhGITj7imJVZyKzyhnxlHdQXmnJGJcF7/csTlMJwXZ09YR/
	 320toiK0ipKj37YvR8q+UyCmFXf3rvypMGyUqwSh6RZqyWltR15YmF0F9vKy1HIoLt
	 O6riwm8uj3puQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEECAC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557003368.15412.16717179343131697731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341e3b771cb98117eedeb814f537ba43dd6b4989f0f353ffadab57303f03c44a
Date: Sat, 01 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785570033
