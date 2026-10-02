Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5227F33D6FA
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790932834; cv=none; b=In3zE7NXQAKvJVKtGZLzE+aAYYqjcZHDTdTEmj8xuvr11W3ufWYO1Ku0/LucDbjhdvIXtAANhpt1S/00TkpcpkuYr1SvOa0tEhsKLsYj3qYJ3xSXA+p3mfOYzlje3SYaSPJem0mTaheSSOTEYX/yS3R7d52Fx40jObjUM9YJAkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790932834; c=relaxed/simple;
	bh=gaapSvDsIM+tQjA0T7m4K6S2UXHzrx3f3Lz5SJwQYCA=;
	h=To:Subject:From:Message-Id:Date; b=ubyXAo0R8vF7luVcmmdJ9mZaUb241FW0JWcWuY4DDI2n7st7bKyBw57zH/GtlGZinPtmaBz7Hc+7mCx0/bCLX4nw1v4/ozVc2HhGfZuXC/6y0gEeFUy++WZcgdPsATCPnEbXYl2KsE2d0nED/7B91E1XHrQOG//QO+UKy6CV1gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfDMjxXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfDMjxXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC98C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790932833;
	bh=gaapSvDsIM+tQjA0T7m4K6S2UXHzrx3f3Lz5SJwQYCA=;
	h=To:Subject:From:Date:From;
	b=sfDMjxXuzzqv0u/f7Bdh4fjUe9EA7FMywrmkTcLV8NUKkuc47XeBkghASkk+BRuV6
	 6GAZAgsV9oNYkERMCecGx7R+9f6Pf5HMh5GGPG+bLdRi+h96Un7HWkEEpjrWZ5wFsy
	 4Igo1SIPmdBn/jCaLEsglOHg9rce6m2769+yZ4tOhAvBlkNLN5+7iXoZMTaTXKxXYY
	 kDRdoIE5SoBF5+r/Nfs1DesbkVxZsZTb8U7DdFT5dNd7xqkJ1KCHkzPzNmkXf474aM
	 oPZnH62PjIOcAUS8YJpvrWGIEr/XWSw/wT/KQow5iIbw82wHhP9LajXLcCwIRufUUG
	 1NY6oHIdRxadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7839CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093283373.10237.18430098975952504177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9443e4c3495030bafcef83007b45c4ea796e3ee635b6e8b5f1bd9f79080b7ae
Date: Fri, 02 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790932833
