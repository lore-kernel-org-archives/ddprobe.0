Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B4223370F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768030434; cv=none; b=JeEn9BgabtcqrQBTFUIlS2I4IGf3vZgbMA2f3TOQg/NrKEW+Hny00kypdJPmWk5HeauX1ovASY/pQ8SJlsILIjDxgBBHkaDzsi8A2aFghK/QWTSaG6uocd5AENQFry1aiLJayd4n3fQD6dci8N4wcglRKnxWXsdfH6k+Itpb3Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768030434; c=relaxed/simple;
	bh=eSbeFZsGTYCqMjuziPWyO0Qefp4Kxci8WxtzYgrOdFk=;
	h=To:Subject:From:Message-Id:Date; b=UpdNu9q65w3I92l5ys1BXbuOBsbH8FNs5aHZ/reqVt3Jne8PZbamhsVyb8H3PvhGVJ89gg4UNm0YQEh7qtIK5O7LZsp0vhoT894WLBxRBUjdvfThFWxWxqakikFqxkJk9mb6Xcke2yvGjY184bxS91bvkHupFKz2/PmLzK81Pq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNTULeUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNTULeUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768030433;
	bh=eSbeFZsGTYCqMjuziPWyO0Qefp4Kxci8WxtzYgrOdFk=;
	h=To:Subject:From:Date:From;
	b=VNTULeUP9cEvX2YBEv0EBEjnux/b4vQqZGde5ZgI2gJPGOM6usvFNAnRzOSU0B5YG
	 dmioGuXI2ddl3yhXGhAV7y/RAhsmZv7Y3rO8CvOMjErHVXmaPws2+DjJJl2kaQ5xqu
	 x/IjrTXXZSWQ6zYBeWnfPhzgjla0IFuCqJdwHLk7+UxJPUvtfgQ0A02MUMBPl+rx/d
	 Y8wNaOb12GiVGkICviV2WuqHwZQshHWPwrF3fTJDemOg641owntHosHvThGhQfOBVH
	 AM0poKASqgXVKaTYYqf/vqfCcdWPXEeZJlFkFgr1wRsByDoJEjq7dDBtJbdcziIve2
	 Qr/zQQfEtly4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008ED277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803043358.27391.3448232768628576722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1a9ed35ae7fc0e4a55a2d8c1f7440f6ac900d3a073d24fd0806d37d49f6030
Date: Sat, 10 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768030433
