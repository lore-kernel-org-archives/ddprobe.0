Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5193F482B
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785813634; cv=none; b=OXmMGERusWqRZ0v4YwERdeJiwiwPrNLdsP6yFsXoz+viEc5PX4mu4J/vG9EQkEZkoCnRzLHLn2i7qHa/B76a+mJr/WSBPIzdDX64EZyLuF9m1BqyXFigHtZqjPFMQ+R6pSF2/Ul+6FU5+YDFoPFBBTRKFsB3NPFk4zDmoWge1bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785813634; c=relaxed/simple;
	bh=N6NA7m00IjLTwYyhNLO0aGMDhOTFOI/gcj5XE3z8W78=;
	h=To:Subject:From:Message-Id:Date; b=b2bBxhlrz+V2+BOUSe4l7PurLfzFq2XxWjrQqQO+DdNraT1EVUaMsLgrTWoEEkTHq30cXCEW6qAXZP0/z1Ml2TQis2A8RaVpeZ/3STgyBRN9JBAXoFmN1qqgBF10wSwP4u0KR03NPnOiZkKFTa4cvLif/7DVLjjNeOp21VTPfNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz+Ythoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz+Ythoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE165C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785813633;
	bh=N6NA7m00IjLTwYyhNLO0aGMDhOTFOI/gcj5XE3z8W78=;
	h=To:Subject:From:Date:From;
	b=Kz+YthoobiVIY+P0DMZz0vylR6E80m7iWU/geOFT/45ByDBJFOAgZct98j2CeYyPB
	 Dfo6Gy6XRnrGq1hiMx9KVQhfIbUIx9Jxbai8kpATn75gREgWHxj7ouqtg0YdRwUDeD
	 IbB2IiNvWsn25CajjvUpbCcbLDc5tj7GmYYc2EgTSRpD1ej84p91CVvpgykBQAtGqi
	 +sXr59254XLC3qQPham9+SsUvc8sLwz0UnIbNiKwLdsbO4vmdsfnHdO1kVJTeDne8N
	 QaESur/DKQ89MYuFqZhThG9+LyQI/EHOodLnSVELYNXTXcq63RUAtRViE/krKfX1ZV
	 bDTkYgTE0EVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95EEC55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581363371.5177.4839809583400606769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f289fa1e39e317a086148126ec89926cc1a173fae7c23d49d0c66334c401265c
Date: Tue, 04 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785813633
