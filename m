Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6BA175A98
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781384194; cv=none; b=uKg28AXB/4IP/Kd56f/NQRG7H6ByNuVDilKtuG/cofpqgjZubGzdtjK7RqSsCweYeteAXpi3g1oCdUb2QNXEtDkWyyrz8dOqswEAzvQhRowj/lFmB/z+KTjEEcvSILc4zS5re4MdRCfq6g3nGVVHYJHAcXvbvUPYLyYy9fW3BZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781384194; c=relaxed/simple;
	bh=gkdcFZXX9i0O5CzN8ASZF1FFVQzW8FkRkivWXJmfnPg=;
	h=To:Subject:From:Message-Id:Date; b=UTJIg13qW10KWeCy2nok4Kuo+fYPor26zJh8dwL8N63dtwjlTSwhN60zKZvWno9iS5Xh/DcHsQVejRi/ZQHNMzqcExqQrKYyNpmR3/oGfuuhMOwEn2UQORgUTsHLOcSsGVtAzdT+DD/O5gsDYkJ8h55STkFqxM8fAXLd1awjaHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wjnt0JwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wjnt0JwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34E8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781384193;
	bh=gkdcFZXX9i0O5CzN8ASZF1FFVQzW8FkRkivWXJmfnPg=;
	h=To:Subject:From:Date:From;
	b=Wjnt0JwCDKOMZvSWfr2b8xVg/gf1T3E4PKug7OO9TYYWnmtg6eqTUeuJUft+TCjOu
	 ZYl8EUQUFi7uDPfl/M+y4GLsd9z+NokfqS2IFuXK0zs8TN29hyu577uN0E/rQ0+Nj1
	 DWcUFxf9WFtQtp9izZMJMPjwYr+EcBBDcqFC8tdBkS1iwQRokGUvqqQOUPusDChUVk
	 0/Tp2heZu5TPGGRmz4JSzT9T8zBnQ/k3HAGR0wYzzU0KtoAygb9ZckU1PumJ/+tFz1
	 /lKtixAfEyyTDg5iJTujrIfyB1TNR920fZMQ2UofCL8JP7R/oZF98fYFbebq67619Q
	 Tfeof98cds4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBFCD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138419368.24123.7873532790144793550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebcef14fb0348b3091ab6cc56722cbada9cdb138a159200c0d0adf4344ef16c
Date: Sat, 13 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781384193
