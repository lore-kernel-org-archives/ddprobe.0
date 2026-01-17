Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2050930F55F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768647234; cv=none; b=tlyj24hPyiMsYGIxsgBn4HW5TXqhVTdHNcbQQvSebv5TDe+hiPFdn7bdrCl098oKb9dnB3DVdjTAZze5H+KfT88lU/4meAWBpK3OlfAAhGCasiHoA5Ts5Nf6ofaGGPNBoKbRp/eLeH+k1d80Bpahomhi73IM1RXsTec2pPLihKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768647234; c=relaxed/simple;
	bh=aeICBbPE3Boc+80wo6Hh111+93RRJn8UDBrVvBGJyVo=;
	h=To:Subject:From:Message-Id:Date; b=nE59PxyYzSIWj4aaVxhmaCaVAYdNuhGm1eIQ7kWUDgAsOoz0hHNWc99Cjw3hcctMDh2sf1c7pxlSmAFNuSPHAXfoIxOGG4XhZ0g59mga2dodRktjBqhUaK8+XRkX1cI46pbsbdNRN4HKUjUbi108Ecvr2yxeiP8/gmlZ5OPKi8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvjUQcOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvjUQcOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7413C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768647233;
	bh=aeICBbPE3Boc+80wo6Hh111+93RRJn8UDBrVvBGJyVo=;
	h=To:Subject:From:Date:From;
	b=QvjUQcOVPm4nlUMsQUAHOxxjCr+A7ju54HeQI31NeW7qnrVDovvpNiuFI8a8mDNYE
	 p6w9DQF1qv4Uwr3j9i7Sa2c0qgbg0AKefZ0mRMYBE52sVtWYsAd3BBXPoo5QmulLRm
	 mTkGPUUez4EvfeT9LWGEIY4UGRQ0TJJgZJ9SyGmm9t2ey7iGgigR94nFrdglLXTF+Q
	 WYJejBN6pln4JgqvQF8LxOYDlxmUtqIejx832qxkymUPQRf/jGZYBtd/l8sNqHR9Za
	 jCfbxa4OqzCPzVLbjJi8/ZPtdg7nmEp5VhbvCLvBkoLiv2X0tADWm3rjNg5PApuJBm
	 u6TQu08bmUa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605FC9831C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864723359.18766.10496748392148369976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708f89c9126bfe441965373c25da7ea48335059b74ee05a082ad0a809e2bdd37
Date: Sat, 17 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768647233
