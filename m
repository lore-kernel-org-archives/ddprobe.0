Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C290DDA9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779669154; cv=none; b=mmCTVN5DyHdpjPXUq5eZSUpJWKC/bw8wHjMMD42oWhbF+dfV5ntNKtfOofl+zk1WentDCqdRniEZw6uEIebhqavCKRxwq1mb9QJXVsqZaB7lisKKjQePMg3Zphdl+/8eMdtasytqa43BPCRvmySiwmLnBpt+o63Y7705AefX7rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779669154; c=relaxed/simple;
	bh=yj9EkNQtLoJA9vXiKLCBYsM/9Cf16eFrx0mz66eX4tg=;
	h=To:Subject:From:Message-Id:Date; b=tXOhV95A+mox4c3ZNBYnWIfUKzCjoU7UO4YHEb5sWQJ4uWYxALHO8GwL2RcEkGUJYjcLfGajUIoUR9tV7jcDSzKPba3s3Tg6emX8P0i3RZI3DugEKCogG4MCV32SiRs92kvZrXEe6101KzkmdvBg0HGLjEBCoMCpK8zJgjMIz5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZSF2h8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZSF2h8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC66BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779669153;
	bh=yj9EkNQtLoJA9vXiKLCBYsM/9Cf16eFrx0mz66eX4tg=;
	h=To:Subject:From:Date:From;
	b=EZSF2h8U0cHDU3HCOhfT8SavWgijIDKpYjnhrW0/eQiOx432Szc+XfIYwz4QlLMDU
	 pfzdRjuHpAYue+MLuB0YSjJKjZ6bYwOJbEEiQYwotAYeC+UyO/FjuXsVtGqn0DhYce
	 pU/V1mCBkfLsQOiVqVZ21idWiB7aRaYTi7DUXpcPtQzhNdZKIc47jYzTKINB8Bq/wu
	 BOyqJy6vYPK1GF4rj8R2pbRuhGF+xUNpR3qjGc5QXFnnrrWeOiS8hWNQL5qfEB9t0r
	 a2/N8JqR0G2J0G+H4R76TZ3t89t6JzEGq5vFduCzIfKu235oWFE0iSiZU4ddsu0lnp
	 8I/dfPPVsbHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96CCD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966915368.20534.2330620809368842985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b818e3083bf1f3ef19c05d3c238f9f79933f49cba42bbb6e0a64805d48274dbd
Date: Mon, 25 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779669153
