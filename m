Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044E717736
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775452534; cv=none; b=Neeg+d9o4MND288c479wu8fZ01FrFlTg5Z+pjwTv40MHEAmVvMlKFkeVq3UZGvuBZjct4X79VwrEd80ke4sqw/LN0HWHq3KuBR9WcrEPczbX0iu+Ci4ZRDZ9Gpo+kTFFBOIgzehTxVreaHvLUvzhcfPQqeCCLmr0Cxj5I4PhlI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775452534; c=relaxed/simple;
	bh=cq2+0+dkm9FxqdUVgH0SpPByRJTNP8kguYb0yRMIC/U=;
	h=To:Subject:From:Message-Id:Date; b=NruZYDBgF2geYgCfEHwPvsS8SmYz4RAFUQBF5TKsLA2nwmLQUUUskGxvR6TgIkcW6bltadLuI6NRaptHGfNsSH+Tmfu8Ec5XAAR08Z8h8fczFfVlCxDpsaQXZn8Jd6I3IJSbAdK+AuTipJwivZAFrUTKazbrRdYuNwSndX6jVh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmA1PzHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmA1PzHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C801DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775452533;
	bh=cq2+0+dkm9FxqdUVgH0SpPByRJTNP8kguYb0yRMIC/U=;
	h=To:Subject:From:Date:From;
	b=pmA1PzHs9tVyKo1VvBlRNTjo3GF4qZ9g2UAnjb6m0dJzDfUS59MqJL8+TfXIDRdlg
	 iPiPJg/vc9auue1ECGV7fpu94uMW1s/O4KnL0j4Llb0l/i2j/v2sv+ob7pyr8CPDAw
	 eXpv4SN5oTs71VbErWJpE/5pHCJF+octbUfOAA0JbpPxjIg6nh6ZULQ8yQ7jbTHSXJ
	 FBA3azy81pSBtqexgA5DrCq1FC48wHxmDVpQDKUr3rZEUj+NxU84YIojqDNzIwxlf1
	 G1Q5p4qdLY0JwfuTT7a6DT1ixfXXMPR3uCng1wAae2XFPwoS3Zejwt6W3kkh5grAR3
	 ipQ9GSy00LG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AF9E9D82A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545253369.27738.7556739023005108102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386e3cda84349ac7fca891c00ddfd1f8a2bca12ffc19546b2e768d1f33ad8293
Date: Mon, 06 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775452533
