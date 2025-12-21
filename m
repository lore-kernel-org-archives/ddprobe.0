Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D90481DD
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766301234; cv=none; b=ZDp3k1CVehKgF9xnCUdqZ10tEwfgw91KIEHtSIIpgKLG+f/auspnH6nFclqydx9vFAdmvpkr7htY8eMzVSgmpXWO/0Re00f8njuz8J4XTq8EPWJevv+0e8aenvROHtdJNTPCrCc3wcb5TktnRQf3D/MI6czwbE8dc5k3p1WQJZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766301234; c=relaxed/simple;
	bh=PrTbfHXCQr7wspTeSorDlA49rTZ/4RT/xGLZiWLons0=;
	h=To:Subject:From:Message-Id:Date; b=QUPA+SvJsLOp5k2lhbtPhDLQO1LdUWS/yzDqDCrUsY6qXgJlLnUx0y0z4zf6tz2zQdP8aMe8g49wvJZ5UBES/m8Sn47v1lbOqV1g4OGQatYtteVdj4r6kDgpLeugqBhSgyzWVs5qBVW5uzvxXqAKwMsfSrO6cBAUvCVK8i1sF9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsJaoYHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsJaoYHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766301233;
	bh=PrTbfHXCQr7wspTeSorDlA49rTZ/4RT/xGLZiWLons0=;
	h=To:Subject:From:Date:From;
	b=IsJaoYHet8nLitzSYAZmum1iB+m2oFApwE7zHp6kryvaRcwbwL2lstGT+rPxU4wEZ
	 QzmmfsTxzf2o1DPoy+aCAby+5QzcjyFDOIA6DnzslDdPMJxKUqVC+8JAzPPIBmLdqq
	 YR1FXqZJt0pYPUmWoprpl8P7GB+Ir9OAUZXtJHlpnLqq0+cgzeQWjMcmyyDe9e/et3
	 zR7B/uw1cK8mkr1FBmcpTVJ9RHCAq9IFWmva5j+XdagsXLu/BD5AnlvJhsi9ProXvq
	 QEumcyHzeKX1A4e9CqOcMugebyciyWVRQToisNTRGvDPuDQXjbrNf3daSQdsGX4aOZ
	 Ledz6WpUGGg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2FE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630123358.5289.17914435935780364371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3a69ee616e98e6c262e4afa6e166883a640eaed184a27957dd496abfd89ac3
Date: Sun, 21 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766301233
