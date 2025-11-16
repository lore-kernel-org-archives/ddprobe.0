Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE741DDC2B
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763313713; cv=none; b=Wf0ezxCQyHSkxiN3VLmM3QueFG9zKTp2HBLu49Rv9BFGK9Ll/n9C2GnxKfCkGqArNtzauJTQNOU+jlzwZfQ6VgTmmEP/Wz2ZZcqfmLvojpzl9lLDqpvfTr2Go5KdWqBz96XP2WVnGF4xl8l877UY/tBRUrfhMMjj8a6XY8tHv6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763313713; c=relaxed/simple;
	bh=5sVsY7twsIdf341OCjnYt0pggCThKqMIPDR8nwQUbU0=;
	h=To:Subject:From:Message-Id:Date; b=bsGFYSLpFPljhqhq9dlonPfA1Vy24VpscXWccK2kTW6RdRUb5uIBKvsM57nZdkylcJPXYqG69TITsraEonVpCifeUUwDYavuYtDslJc0gztUqW0FtVXcIxE2TBrvPzsdy335+jt2PwaSV8fKfaR5RuoJw60kK/PEr0TMEY2DZmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhyRHpOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhyRHpOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E44C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763313713;
	bh=5sVsY7twsIdf341OCjnYt0pggCThKqMIPDR8nwQUbU0=;
	h=To:Subject:From:Date:From;
	b=dhyRHpOyuiFokjplHHr879tw4VtOkvATrP9s6JpYOQooqGpCdnGB5hYqo31jKx0oc
	 SSEO/sZTXaZCOy4cAxOZoRQ2S8pMlVvKs+Yh6M9XLoeOeVXn/YAtFed5cjbuTDl5mw
	 nCVAoNy/6bmz1ij9hh1VvaKbl1oWIBMVXPurc1tFJ0A/oENEQIGb2vpjaY5oGlbQOa
	 PCq+kL5heFBcaJPUySCvJgHBklYOElF2u2pnK0EtKqyUUXCsp1Z6NAE4Xm5aWNcHog
	 InRdjhXI4JIkTdx6RboL0nzciQo512SExW6vZr58OvDr+e72S9INbkcRMcX19dvSII
	 sqdRb9YakZdWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95704CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331371358.902.2614826881473324085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754690c191d27063a21ffdcef0adec4fa81d8b70ba6890117ce1602a37ec8048
Date: Sun, 16 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763313713
