Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA0E29346E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751573394; cv=none; b=a79qA32czZ1jsK3A0/pBbi2Xa1edx8oh9ND2EGF0YVK4umzVjBaTeDNntTFdcipiPrTvcK6AaIf72NWH9eipxdegXermGUJTHN+EkQxx1cSR4hgZkl0WVccPdVCIDrJRoZeRg1dkaU+q+xC1iQLbMz9LayOPb1LrjnVoQlfH8LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751573394; c=relaxed/simple;
	bh=aGQ8pRxG1W6xTemCLRxvLKjJcRomwVxpVrEiicC1ypM=;
	h=To:Subject:From:Message-Id:Date; b=j3Z4T60Ge/l+v+W7wDr5Sl+qQ429ZQisn5UzfKwTZ23JizINrOO3LSE78gsSO+IUHOpE6UqfTcIM7cgDcz5WCMhnzEYp+YnS375Fscexz8Fz4C5iyjilfqm0a2mmIHCPijcQhDuBlMr9y0VP/kjVbNCxf4fIv853Li3aNKmpacM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=infbfiWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="infbfiWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1414C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751573393;
	bh=aGQ8pRxG1W6xTemCLRxvLKjJcRomwVxpVrEiicC1ypM=;
	h=To:Subject:From:Date:From;
	b=infbfiWrQABHFqZQvY8y/dCfkhn3GicbY+Ezbrz9BB8hjSgLLHeytaMky8Ay4Y2Uj
	 u9zOGDQkWhk2LIHAYy9U0rdBJdQkoK/NRgXYukTn+wahiyR+o0BF7uIQkhrzo6emS+
	 uMTXAMROqf/LCc2oUJA5mqRsXLxzIbnDp09Z7wRlKve+dr7yNpZJ2tmrl+CQfxXqrX
	 n3ebDXL6z5tKFl5Ox/3Y0XJJ5wT6Hd9gxoFbclOoU6nwC0QDmc2yLgz7ycA1ciYw6f
	 xFkRsQ7kZtJQkd0SlXOn6RxgC+gILHopJ9PKnqqEgKcHk7RlbWrV8NQwN98PanPjk1
	 z1edB9XNYJKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E934C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157339357.8363.9794767939977435968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f09a9942b5a35a714cd820c7be54e0d0922c7fe5822c7d81e199a8e4dca5a1e
Date: Thu, 03 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751573393
