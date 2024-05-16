Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49737137E
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 00:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715820743; cv=none; b=f9G2OvDfxb1X7CQTPMrqNaMhoZ7KI2tK8aCYom+0eBdSoRZqPUGXntbsYxWLNKrEhv3CVC+/qE3X5OO5eS8hN2P/ZlIlCUakrsAUkOc9f3O0XtZGivWFPEb8RUvLUEUpB8WH2PwMgcq7GSByD/WbWL+i3xCiIncEAuNf3LCcPmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715820743; c=relaxed/simple;
	bh=9gpeq30RVL8PgWZwV/WUgGXBAOIrGgEhBaKE8EbckQM=;
	h=To:Subject:From:Message-Id:Date; b=Lu1FsfjoQsj3IFmyh2SRxNavDppN3Q0w5Gj2leg/5g7RszGNrwHMXqyLYzbKQ3jFfOJgwXgK08qpYtjI2edR8xtBJMyeFXLwqxM6cV4/zGeMaZ7V08YjyxoM1nekakcwVYlVTFwfgFbd5avvKnd6prW/BMJxyMZ31MQYT/iocos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uaui/fw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uaui/fw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D185AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715820742;
	bh=9gpeq30RVL8PgWZwV/WUgGXBAOIrGgEhBaKE8EbckQM=;
	h=To:Subject:From:Date:From;
	b=Uaui/fw8DycsZxvz3wRSdOVqsoG/5QdDJH3TNYQWAkp11XCb2uWCp0T4MBpGPCpv3
	 OsMoKNRwlbwXU6INUHlM+VC5hn/d2uB6mBMLDtplXfjTWAnHtn3QlHaPsSF77WbXmZ
	 XPIyYZDAjFNljwRuTVHaC9sRGsBWOE06fV+wTw3Z3qGK5Z+uHEwvFvlULWWOyPV3sl
	 Nt+e39muumdp/CdE6ru+4In5aOIxFHCPsJbq0a1wwGbzpfhGVQ+15uO1BUEMAoi36F
	 oXlTTGqLHt2+OjkGOCW8TJ6VlbpQnFw6C7CPDSnfqe0OT+T6yz6FYmWbzRhxx1/dfE
	 yjloD6LwstSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15ECC25B75
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171582074278.4021.9492099275375143082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8403ab163a7191f2d1e679bf9a16d94dad1855c3964a4df6bb2408684f59ce7
Date: Thu, 16 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715820742
