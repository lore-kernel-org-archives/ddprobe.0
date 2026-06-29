Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375B117745
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782695914; cv=none; b=EMI/0AvDRSZhLl2Wz1G/AkSlXIp2WA6jwXHuOcZJxyzb1XgTgSikRQN0/KWqr7IXeEVnnAQEbCxymGRij7ZuiPQUyWH0WyyRALkC1x29isCXvQ0OJqvI9ZY2KoueAFkJVpxKuP5Y35XKXqZxZfrNl+hlybTY00xqmHUKOX/UGzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782695914; c=relaxed/simple;
	bh=TLn7HA/xW1FYWhfh+QhkieuFgHG6gthi2WD74Y7E4eA=;
	h=To:Subject:From:Message-Id:Date; b=UdM/1Fhd+Qi0t4ESe+zyn2Y6b9YUI8cOoiFQsSsX8y0YOAxGBCszSfD/CO5i3maublVu0SH3t2iVHgdfnelB72SUFuAxa4L/SThy7BLc39UBmOCx/vvA3CiFEzqW1nzXdQBpp0knn87Ne5YvsI4bDW0LBOihEaasJBXODkLIRI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opJklw5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opJklw5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93D9C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782695913;
	bh=TLn7HA/xW1FYWhfh+QhkieuFgHG6gthi2WD74Y7E4eA=;
	h=To:Subject:From:Date:From;
	b=opJklw5E8hmS1Pw0AqbEph9L1+eNmb+3rbTpIEHiuSGkr7CKWOOVDhIcnB/mBUd4g
	 Ol+G0gBIoVNFLskH37cgrpQ2keAoLl4R78m9woY2URPsSYhybwtHXckHHT8oynS7Yg
	 QTPW0l+6PP1d7WLmLiRgXLoDZvJYkyOVKJRZhRVUQzHta31HeN/VLRP953UNfUgpTI
	 GTPtpcv2FpPx4zbTD/sVg8qXOro9q3KCtYm21yDS0suD2PBSdw+DjXWxOsInSoExtI
	 YlBafJ6QF7N8SFV63G07TdfRIgqp0gGkoF3k30SFa3gfwLq4yjk3ATl2+c2gsEPxm9
	 ianRjxaAznC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD85C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269591368.10937.1280359640352525192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03abc11774b52024bd59e15b5fa97978f557b14d698eb9ad341ce1945fc681e7
Date: Mon, 29 Jun 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782695913
